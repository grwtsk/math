# finite_integer_tail_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:35fe403e-41a9-72c6-bedb-e17b58fb9b97",
  "kind": "theorem",
  "lexical_name": "finite_integer_tail_le",
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
  "slug": "finite-integer-tail-le--1d5de849ea204f08438df0d0",
  "source": {
    "blob": "66120c8768710337e574eb61a7657db85af4abde",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 90,
    "line": 79,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceProperPowerCell/Variante04c4cf3b9b914c2242ab75608ba64d9a2113691e07d3dd85c34cd8e3f2ca4ce.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1d5de849ea204f08438df0d0f30e8a5aeec23e27e5267b6e745c29e46e73264a",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourceProperPowerCell/Variante04c4cf3b9b914c2242ab75608ba64d9a2113691e07d3dd85c34cd8e3f2ca4ce.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:35fe403e-41a9-72c6-bedb-e17b58fb9b97`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 79–90.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finite_integer_tail_le (U V : ℕ) (hU : 1 ≤ U) (hUV : U ≤ V) :
    (∑ n ∈ Ioc U V, Real.log (n : ℝ) / ((n : ℝ) * ((n : ℝ) - 1))) ≤
      powerTailBudget U - powerTailBudget V := by
  induction V, hUV using Nat.le_induction with
  | base => simp
  | succ V hUV ih =>
    rw [Finset.sum_Ioc_succ_top hUV]
    simp only [Nat.cast_add, Nat.cast_one, add_sub_cancel_right]
    have hc := integer_cell_le (V + 1) (by omega)
    simp only [Nat.cast_add, Nat.cast_one, add_sub_cancel_right] at hc
    linarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourceProperPowerCell/Variante04c4cf3b9b914c2242ab75608ba64d9a2113691e07d3dd85c34cd8e3f2ca4ce.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceProperPowerCell/Variante04c4cf3b9b914c2242ab75608ba64d9a2113691e07d3dd85c34cd8e3f2ca4ce.lean#L79).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `66120c8768710337e574eb61a7657db85af4abde` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
