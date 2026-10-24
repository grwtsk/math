# AbsoluteValue.tendsto_div_one_add_pow_nhds_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b033d8917bbd2c274f2bb55e6b07c46c9204db5b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 262,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/28/281b0bb77fdc58f9c98d50cc626303bf30d7302c48d3ae8522d071ad07d40480.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0536dae7-f8ce-c8cd-c696-dd2302a07c48",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:422af6ae-e768-6f4c-b972-27b8d55afd22",
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
  "slug": "absolutevalue-tendsto-div-one-add-pow-nhds-zero--b233d8ab68eec74d1bfb8cc5",
  "source": {
    "blob": "b033d8917bbd2c274f2bb55e6b07c46c9204db5b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 279,
    "line": 262,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Normed/Variant281b0bb77fdc58f9c98d50cc626303bf30d7302c48d3ae8522d071ad07d40480.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b233d8ab68eec74d1bfb8cc53c10dee3c250fed4fcc4a3b7fbea8b0a82d1649e",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Normed/Variant281b0bb77fdc58f9c98d50cc626303bf30d7302c48d3ae8522d071ad07d40480.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:422af6ae-e768-6f4c-b972-27b8d55afd22`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 262–279.

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

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Normed/Variant281b0bb77fdc58f9c98d50cc626303bf30d7302c48d3ae8522d071ad07d40480.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Normed/Variant281b0bb77fdc58f9c98d50cc626303bf30d7302c48d3ae8522d071ad07d40480.lean#L262).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b033d8917bbd2c274f2bb55e6b07c46c9204db5b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
