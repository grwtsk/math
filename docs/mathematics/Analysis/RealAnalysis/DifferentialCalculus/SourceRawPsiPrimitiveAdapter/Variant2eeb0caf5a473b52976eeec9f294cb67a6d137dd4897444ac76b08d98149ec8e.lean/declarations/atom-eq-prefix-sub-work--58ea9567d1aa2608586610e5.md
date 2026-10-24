# atom_eq_prefix_sub_work

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0e122161-cdea-efcb-f194-301a29b74b0a",
  "kind": "theorem",
  "lexical_name": "atom_eq_prefix_sub_work",
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
  "slug": "atom-eq-prefix-sub-work--58ea9567d1aa2608586610e5",
  "source": {
    "blob": "e669f5308458bcb1c8bbb7b003ba624f3c99d394",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 203,
    "line": 188,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceRawPsiPrimitiveAdapter/Variant2eeb0caf5a473b52976eeec9f294cb67a6d137dd4897444ac76b08d98149ec8e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:58ea9567d1aa2608586610e54f76905e5a92fde7cdc13f1d01f4b1ced572db72",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourceRawPsiPrimitiveAdapter/Variant2eeb0caf5a473b52976eeec9f294cb67a6d137dd4897444ac76b08d98149ec8e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0e122161-cdea-efcb-f194-301a29b74b0a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 188–203.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem atom_eq_prefix_sub_work (t : ℝ) (n : ℕ) :
    vonMangoldt n * (-signedAtomPrimitive t n) =
      4 * Real.exp (t / 2) * (vonMangoldt n / (n : ℝ)) - sourceAtomWork t n := by
  rcases eq_or_ne n 0 with rfl | hn
  · simp [signedAtomPrimitive, sourceAtomWork]
  have hp : 0 < (n : ℝ) := Nat.cast_pos.mpr (Nat.pos_of_ne_zero hn)
  have hr : Real.exp (Real.log (n : ℝ) / 2) = (n : ℝ) * (n : ℝ) ^ (-1 / 2 : ℝ) := by
    rw [show Real.log (n : ℝ) / 2 = Real.log (n : ℝ) * (1 / 2) by ring,
      ← Real.rpow_def_of_pos hp,
      show (1 / 2 : ℝ) = -1 / 2 + 1 by ring, Real.rpow_add hp, Real.rpow_one]
    ring
  unfold signedAtomPrimitive sourceAtomWork
  rw [hr]
  field_simp
  ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourceRawPsiPrimitiveAdapter/Variant2eeb0caf5a473b52976eeec9f294cb67a6d137dd4897444ac76b08d98149ec8e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceRawPsiPrimitiveAdapter/Variant2eeb0caf5a473b52976eeec9f294cb67a6d137dd4897444ac76b08d98149ec8e.lean#L188).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e669f5308458bcb1c8bbb7b003ba624f3c99d394` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
