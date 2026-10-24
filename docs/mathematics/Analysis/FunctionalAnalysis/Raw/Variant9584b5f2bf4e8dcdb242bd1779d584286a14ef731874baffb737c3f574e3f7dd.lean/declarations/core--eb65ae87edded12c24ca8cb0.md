# core

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fe1487ef7f767f5f54b4156ab32fc30a10a61cad4ea28270c760ec8d9906138e",
  "kind": "def",
  "lexical_name": "core",
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
  "slug": "core--eb65ae87edded12c24ca8cb0",
  "source": {
    "blob": "4659b092a46e18dcaf0aa3ffc6c4a07632db2e79",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 68,
    "line": 44,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/Raw/Variant9584b5f2bf4e8dcdb242bd1779d584286a14ef731874baffb737c3f574e3f7dd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:eb65ae87edded12c24ca8cb0cb59b6de3e2685d59ad29a7ad8ad8223941b8da0",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/Raw/Variant9584b5f2bf4e8dcdb242bd1779d584286a14ef731874baffb737c3f574e3f7dd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fe1487ef7f767f5f54b4156ab32fc30a10a61cad4ea28270c760ec8d9906138e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 44–68.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def core : PreInnerProductSpace.Core ℂ (Raw kernel) where
  inner := inner kernel
  conj_inner_symm f g := by
    unfold inner
    rw [Finsupp.sum_comm]
    simp only [map_finsuppSum]
    congr! 6
    simp only [starRingEnd_apply, map_mul, star_star,
      kernel.conj_matrix_apply_symm]
    ring
  re_inner_nonneg f := by
    exact (RCLike.nonneg_iff.mp (kernel.quadratic_nonnegative f)).1
  add_left _ _ _ := by
    unfold inner
    rw [Finsupp.sum_add_index'] <;>
      simp [← Finsupp.sum_add, add_mul]
  smul_left _ _ _ := by
    unfold inner
    rw [Finsupp.sum_smul_index] <;>
      simp [Finsupp.mul_sum, ← mul_assoc]

/-- The kernel seminorm as an explicit function.  In particular, the raw
carrier deliberately receives no global `SeminormedAddCommGroup` or
`InnerProductSpace` instance: a semidefinite form is not exposed as the
project's inner-product-space boundary before quotienting its radical. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/Raw/Variant9584b5f2bf4e8dcdb242bd1779d584286a14ef731874baffb737c3f574e3f7dd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/Raw/Variant9584b5f2bf4e8dcdb242bd1779d584286a14ef731874baffb737c3f574e3f7dd.lean#L44).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4659b092a46e18dcaf0aa3ffc6c4a07632db2e79` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
