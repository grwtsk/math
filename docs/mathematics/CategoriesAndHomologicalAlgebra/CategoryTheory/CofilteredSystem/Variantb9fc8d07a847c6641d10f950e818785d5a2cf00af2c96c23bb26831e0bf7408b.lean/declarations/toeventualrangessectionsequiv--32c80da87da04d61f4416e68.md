# toEventualRangesSectionsEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3bb95cd1812444e1e186e0834a6eceb8e626d7abed10c2fdfdb81405f6a7dfc4",
  "kind": "def",
  "lexical_name": "toEventualRangesSectionsEquiv",
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
  "slug": "toeventualrangessectionsequiv--32c80da87da04d61f4416e68",
  "source": {
    "blob": "08c5d6ceed1884c90345672370ca04b311ffe423",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 269,
    "line": 263,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CofilteredSystem/Variantb9fc8d07a847c6641d10f950e818785d5a2cf00af2c96c23bb26831e0bf7408b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:32c80da87da04d61f4416e6819d0f87f7c9653ff62cdd7e76579768a4913a5d2",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CofilteredSystem/Variantb9fc8d07a847c6641d10f950e818785d5a2cf00af2c96c23bb26831e0bf7408b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3bb95cd1812444e1e186e0834a6eceb8e626d7abed10c2fdfdb81405f6a7dfc4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 263–269.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def toEventualRangesSectionsEquiv : F.toEventualRanges.sections ≃ F.sections where
  toFun s := ⟨_, fun f => Subtype.coe_inj.2 <| s.prop f⟩
  invFun s :=
    ⟨fun _ => ⟨_, mem_iInter₂.2 fun _ f => ⟨_, s.prop f⟩⟩, fun f => Subtype.ext <| s.prop f⟩

/-- If `F` satisfies the Mittag-Leffler condition, its restriction to eventual ranges is a
surjective functor. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CofilteredSystem/Variantb9fc8d07a847c6641d10f950e818785d5a2cf00af2c96c23bb26831e0bf7408b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CofilteredSystem/Variantb9fc8d07a847c6641d10f950e818785d5a2cf00af2c96c23bb26831e0bf7408b.lean#L263).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `08c5d6ceed1884c90345672370ca04b311ffe423` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
