# AbsoluteValue.tendsto_div_one_add_pow_nhds_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fcb04b24-bc10-c256-8c12-5829f58cb4a2",
  "kind": "theorem",
  "lexical_name": "AbsoluteValue.tendsto_div_one_add_pow_nhds_zero",
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
  "slug": "absolutevalue-tendsto-div-one-add-pow-nhds-zero--db0cced928dc84dfde3a382b",
  "source": {
    "blob": "32c9420e5d37f8b4d36774645392bf66942cdfd5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 287,
    "line": 270,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Normed/Variantbbb6bc96b4859256fea0e1cc9d8aad85d733c26eb5c887b50cbc4f178d6f2ff7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:db0cced928dc84dfde3a382b9b0ae93ab551fb8ef7fbcde7afa580d698bbfaa0",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Normed/Variantbbb6bc96b4859256fea0e1cc9d8aad85d733c26eb5c887b50cbc4f178d6f2ff7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fcb04b24-bc10-c256-8c12-5829f58cb4a2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 270–287.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem AbsoluteValue.tendsto_div_one_add_pow_nhds_zero {v : AbsoluteValue R S} {a : R}
    (ha : 1 < v a) : Filter.Tendsto (fun (n : ℕ) ↦ v (1 / (1 + a ^ n))) Filter.atTop (𝓝 0) := by
  simp_rw [div_eq_mul_inv, one_mul, map_inv₀, fun n ↦ add_comm 1 (a ^ n)]
  refine (tendsto_atTop_mono (fun n ↦ v.le_add _ _) ?_).inv_tendsto_atTop
  simpa using (tendsto_atTop_add_right_of_le _ _ (tendsto_pow_atTop_atTop_of_one_lt ha)
    (fun _ ↦ le_rfl)).congr fun n ↦ (sub_eq_add_neg (v a ^ n) 1).symm

/-! ### Geometric series -/

/-- A non-unital normed ring has summable geometric series if, for all `ξ` of norm `< 1`, the
geometric series `∑' n, ξ ^ (n + 1)` converges. This holds both in non-unital complete normed rings
and in normed fields, providing a convenient abstraction of these two classes to avoid repeating
the same proofs.

Due to the fact that Mathlib has no `Pow G ℕ+` instance for semigroups, this is currently stated
using iterated multiplication. Once semigroups implement this bundled `Pow` instance, then we can
switch the statements to use that instead, and improve the proofs. -/
@[mk_iff hasSummableGeomSeries_iff_summable_iterate_mul]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Normed/Variantbbb6bc96b4859256fea0e1cc9d8aad85d733c26eb5c887b50cbc4f178d6f2ff7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Normed/Variantbbb6bc96b4859256fea0e1cc9d8aad85d733c26eb5c887b50cbc4f178d6f2ff7.lean#L270).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `32c9420e5d37f8b4d36774645392bf66942cdfd5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
