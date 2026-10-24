# check_enclosed_sound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:be72d130-23d3-20a6-f967-4fe5f3adecb2",
  "kind": "theorem",
  "lexical_name": "check_enclosed_sound",
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
  "slug": "check-enclosed-sound--97deafd157173f7f2e2f61ea",
  "source": {
    "blob": "ac85b66a4cc2134280684f95db7dd1f23f123577",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 281,
    "line": 257,
    "path": "GRWTSK/Analysis/Complex/RationalMellinFamily.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:97deafd157173f7f2e2f61ea6bd1609e944d2cbcd83004601eca8e2d6f2d3f55",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/RationalMellinFamily.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:be72d130-23d3-20a6-f967-4fe5f3adecb2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 257–281.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem check_enclosed_sound {family : List Member} {a b : ℚ} {tr : Trace}
    (h : check family a b tr = true) (ρ : ℕ → ℂ) (r β : ℕ → ℝ)
    (hρ : ∀ i ∈ Finset.range family.length, (ρ i).re ≤ β i)
    (hc : ∀ i ∈ Finset.range family.length, (toComplex (memberAt family i).center).re ≤ β i)
    (hr : ∀ i ∈ Finset.range family.length,
      ‖ρ i - toComplex (memberAt family i).center‖ ≤ r i) :
    ‖(∑ i ∈ Finset.range family.length, ((memberAt family i).multiplicity : ℂ) *
      kernel (a : ℝ) (b : ℝ) (ρ i)) - toComplex (output family tr)‖ ≤
      (∑ i ∈ Finset.range family.length, ((memberAt family i).multiplicity : ℝ) *
        (sensitivity (a : ℝ) (b : ℝ) (β i) * r i)) + (error family a b tr : ℝ) := by
  obtain ⟨ha, hab, _, _, _, _⟩ := (check_iff_valid family a b tr).mp h
  have he := finite_enclosure_error (Finset.range family.length)
    (fun i => (memberAt family i).multiplicity) ρ
    (fun i => toComplex (memberAt family i).center) r β (a := (a : ℝ)) (b := (b : ℝ))
    (by exact_mod_cast ha) (by exact_mod_cast hab) hρ hc hr
  have hv := check_sound h
  calc
    _ = ‖((∑ i ∈ Finset.range family.length, ((memberAt family i).multiplicity : ℂ) *
        kernel (a : ℝ) (b : ℝ) (ρ i)) - centerSum family a b) +
        (centerSum family a b - toComplex (output family tr))‖ := by congr 1; abel
    _ ≤ ‖(∑ i ∈ Finset.range family.length, ((memberAt family i).multiplicity : ℂ) *
        kernel (a : ℝ) (b : ℝ) (ρ i)) - centerSum family a b‖ +
        ‖centerSum family a b - toComplex (output family tr)‖ := norm_add_le _ _
    _ ≤ _ := add_le_add he hv

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ComplexAnalysis/RationalMellinFamily.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Complex/RationalMellinFamily.lean#L257).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ac85b66a4cc2134280684f95db7dd1f23f123577` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
