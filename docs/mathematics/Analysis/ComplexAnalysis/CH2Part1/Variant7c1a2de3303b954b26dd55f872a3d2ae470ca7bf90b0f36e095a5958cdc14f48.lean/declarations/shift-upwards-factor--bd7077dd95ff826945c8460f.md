# shift_upwards_factor

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9ef2608fe2b2171a00303ea2d042ad23b0efe93d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 3428,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7c/7c1a2de3303b954b26dd55f872a3d2ae470ca7bf90b0f36e095a5958cdc14f48.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f5be9510-45b9-c781-8391-17aa58950af5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:be5b87b2-2b19-9fe7-b5f0-fc0a4967b010",
  "kind": "lemma",
  "lexical_name": "shift_upwards_factor",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "shift-upwards-factor--bd7077dd95ff826945c8460f",
  "source": {
    "blob": "9ef2608fe2b2171a00303ea2d042ad23b0efe93d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 3458,
    "line": 3428,
    "path": "GRWTSK/Analysis/ComplexAnalysis/CH2Part1/Variant7c1a2de3303b954b26dd55f872a3d2ae470ca7bf90b0f36e095a5958cdc14f48.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bd7077dd95ff826945c8460ff9b18930fbb2dd1ebe6c6e0a6c50045547b34c27",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/CH2Part1/Variant7c1a2de3303b954b26dd55f872a3d2ae470ca7bf90b0f36e095a5958cdc14f48.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:be5b87b2-2b19-9fe7-b5f0-fc0a4967b010`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 3428–3458.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma shift_upwards_factor (ν ε : ℝ) (hν : ν > 0) (x T : ℝ) :
    (I * ∫ t in Set.Icc 0 T,
        (Phi_circ ν ε (-1 + I * t) - Phi_star ν ε (-1 + I * t)) * E (-(-1 + I * t) * x))
    - (I * ∫ t in Set.Icc 0 T,
        (Phi_circ ν ε (1 + I * t) + Phi_star ν ε (1 + I * t)) * E (-(1 + I * t) * x))
    + (2 * I * ∫ t in Set.Icc 0 T, Phi_star ν ε (I * t) * E (-(I * t) * x))
    = (2 - E x - E (-x)) * (I * ∫ t in Set.Icc 0 T, Phi_star ν ε (I * t) * E (-(I * t) * x)) := by
  have hE_shift_neg (t : ℝ) : E (-(-1 + I * t) * ↑x) = E ↑x * E (-(I * ↑t) * ↑x) := by
    simp only [E, ← Complex.exp_add]; congr 1; ring
  have hE_shift_pos (t : ℝ) : E (-(1 + I * ↑t) * ↑x) = E (-↑x) * E (-(I * ↑t) * ↑x) := by
    simp only [E, ← Complex.exp_add]; congr 1; ring
  have h1 : ∫ t in Set.Icc 0 T, (Phi_circ ν ε (-1 + I * t) - Phi_star ν ε (-1 + I * t)) * E (-(-1 + I * t) * x) =
            ∫ t in Set.Icc 0 T, -(E x * (Phi_star ν ε (I * t) * E (-(I * t) * x))) := by
    apply MeasureTheory.integral_congr_ae
    filter_upwards [ae_restrict_mem measurableSet_Icc] with t ht
    rw [shift_upwards_phi_diff ν ε hν t ht.1, hE_shift_neg]
    ring
  have h2 : ∫ t in Set.Icc 0 T, (Phi_circ ν ε (1 + I * t) + Phi_star ν ε (1 + I * t)) * E (-(1 + I * t) * x) =
            ∫ t in Set.Icc 0 T, E (-x) * (Phi_star ν ε (I * t) * E (-(I * t) * x)) := by
    apply MeasureTheory.integral_congr_ae
    filter_upwards [ae_restrict_mem measurableSet_Icc] with t ht
    rw [shift_upwards_phi_sum ν ε hν t ht.1, hE_shift_pos]
    ring
  rw [h1, h2, integral_neg]
  set g : ℝ → ℂ := fun t => Phi_star ν ε (I * ↑t) * E (-(I * ↑t) * ↑x)
  rw [show (∫ t in Set.Icc 0 T, E ↑x * g t) = E ↑x * ∫ t in Set.Icc 0 T, g t from
    MeasureTheory.integral_const_mul _ _]
  rw [show (∫ t in Set.Icc 0 T, E (-↑x) * g t) = E (-↑x) * ∫ t in Set.Icc 0 T, g t from
    MeasureTheory.integral_const_mul _ _]
  ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/CH2Part1/Variant7c1a2de3303b954b26dd55f872a3d2ae470ca7bf90b0f36e095a5958cdc14f48.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/CH2Part1/Variant7c1a2de3303b954b26dd55f872a3d2ae470ca7bf90b0f36e095a5958cdc14f48.lean#L3428).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9ef2608fe2b2171a00303ea2d042ad23b0efe93d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
