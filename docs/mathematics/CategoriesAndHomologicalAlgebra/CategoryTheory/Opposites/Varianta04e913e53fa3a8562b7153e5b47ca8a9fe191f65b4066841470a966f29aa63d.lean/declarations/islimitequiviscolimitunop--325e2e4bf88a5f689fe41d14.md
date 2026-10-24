# isLimitEquivIsColimitUnop

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e8fda921ead599caf17837e31a161dcb7c23dd41d435cbc3de6a15deb1f9a7cd",
  "kind": "def",
  "lexical_name": "isLimitEquivIsColimitUnop",
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
  "slug": "islimitequiviscolimitunop--325e2e4bf88a5f689fe41d14",
  "source": {
    "blob": "e0378df4befc16f434fefc732446c7cbaea30cc9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1007,
    "line": 996,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposites/Varianta04e913e53fa3a8562b7153e5b47ca8a9fe191f65b4066841470a966f29aa63d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:325e2e4bf88a5f689fe41d140a0582ba9e20279b84a86f2927c4847fe39e4db8",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposites/Varianta04e913e53fa3a8562b7153e5b47ca8a9fe191f65b4066841470a966f29aa63d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e8fda921ead599caf17837e31a161dcb7c23dd41d435cbc3de6a15deb1f9a7cd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 996–1007.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def isLimitEquivIsColimitUnop {X Y Z : Cᵒᵖ} {f : X ⟶ Z} {g : Y ⟶ Z} (c : PullbackCone f g) :
    IsLimit c ≃ IsColimit c.unop :=
  (IsLimit.equivIsoLimit c.unopOp).symm.trans c.unop.isColimitEquivIsLimitOp.symm

end PullbackCone

section Pullback

open Opposite

/-- The pullback of `f` and `g` in `C` is isomorphic to the pushout of
`f.op` and `g.op` in `Cᵒᵖ`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposites/Varianta04e913e53fa3a8562b7153e5b47ca8a9fe191f65b4066841470a966f29aa63d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposites/Varianta04e913e53fa3a8562b7153e5b47ca8a9fe191f65b4066841470a966f29aa63d.lean#L996).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e0378df4befc16f434fefc732446c7cbaea30cc9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
