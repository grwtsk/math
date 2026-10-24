# StandardEtalePresentation.exists_mul_aeval_x_g_pow_eq_aeval_x

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1c4659bc-6210-d73e-67e0-b0d3f0ecd2cd",
  "kind": "lemma",
  "lexical_name": "StandardEtalePresentation.exists_mul_aeval_x_g_pow_eq_aeval_x",
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
  "slug": "standardetalepresentation-exists-mul-aeval-x-g-pow-eq-aeval-x--b594a9b9a5472057fe9a50aa",
  "source": {
    "blob": "03b41e98db7a4d6727042f12a586e0cc1c9f34c7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 345,
    "line": 335,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/StandardEtale/Variantb2b5ae0db32569626ba17b97866c94d284aaabda29525b8b1f396165262d2311.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b594a9b9a5472057fe9a50aa28d8eef504c355fed36d64b81a03ef26cc5db4b9",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/StandardEtale/Variantb2b5ae0db32569626ba17b97866c94d284aaabda29525b8b1f396165262d2311.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1c4659bc-6210-d73e-67e0-b0d3f0ecd2cd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 335–345.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma StandardEtalePresentation.exists_mul_aeval_x_g_pow_eq_aeval_x (x : S) :
    ∃ p : R[X], ∃ n, x * P.g.aeval P.x ^ n = p.aeval P.x := by
  obtain ⟨x, rfl⟩ := (P.equivRing.trans P.P.equivAwayAdjoinRoot).symm.surjective x
  obtain ⟨⟨p, ⟨_, n, rfl⟩⟩, e⟩ := IsLocalization.surj (.powers (AdjoinRoot.mk P.f P.g)) x
  obtain ⟨p, rfl⟩ := AdjoinRoot.mk_surjective p
  refine ⟨p, n, P.equivRing.injective ?_⟩
  simpa [← aeval_algHom_apply, StandardEtalePair.equivAwayAdjoinRoot, ← aeval_def] using
    congr(P.equivAwayAdjoinRoot.symm $e)

set_option backward.isDefEq.respectTransparency.types false in
/-- Mapping `StandardEtalePresentation` under `AlgEquiv`s. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/StandardEtale/Variantb2b5ae0db32569626ba17b97866c94d284aaabda29525b8b1f396165262d2311.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/StandardEtale/Variantb2b5ae0db32569626ba17b97866c94d284aaabda29525b8b1f396165262d2311.lean#L335).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `03b41e98db7a4d6727042f12a586e0cc1c9f34c7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
