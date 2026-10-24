# isSeparating_op_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0deb63f9-de63-4b91-3be9-d73dce71efcd",
  "kind": "theorem",
  "lexical_name": "isSeparating_op_iff",
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
  "slug": "isseparating-op-iff--acb7657600b05ae172ce9257",
  "source": {
    "blob": "514fda0a493b8817781bf2258b55d4d977a84098",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 107,
    "line": 100,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Generator/Variant63b5af4c27573d640cefdacdb4abb8fba1c21a69f5252baf92c03b1f7f3369aa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:acb7657600b05ae172ce9257bbb3d37efd59a817d4c91000a03d4bd9fb3bdee0",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Generator/Variant63b5af4c27573d640cefdacdb4abb8fba1c21a69f5252baf92c03b1f7f3369aa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0deb63f9-de63-4b91-3be9-d73dce71efcd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 100–107.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isSeparating_op_iff (𝒢 : Set C) : IsSeparating 𝒢.op ↔ IsCoseparating 𝒢 := by
  refine' ⟨fun h𝒢 X Y f g hfg => _, fun h𝒢 X Y f g hfg => _⟩
  · refine' Quiver.Hom.op_inj (h𝒢 _ _ fun G hG h => Quiver.Hom.unop_inj _)
    simpa only [unop_comp, Quiver.Hom.unop_op] using hfg _ (Set.mem_op.1 hG) _
  · refine' Quiver.Hom.unop_inj (h𝒢 _ _ fun G hG h => Quiver.Hom.op_inj _)
    simpa only [op_comp, Quiver.Hom.op_unop] using hfg _ (Set.op_mem_op.2 hG) _
#align category_theory.is_separating_op_iff CategoryTheory.isSeparating_op_iff

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Generator/Variant63b5af4c27573d640cefdacdb4abb8fba1c21a69f5252baf92c03b1f7f3369aa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Generator/Variant63b5af4c27573d640cefdacdb4abb8fba1c21a69f5252baf92c03b1f7f3369aa.lean#L100).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `514fda0a493b8817781bf2258b55d4d977a84098` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
