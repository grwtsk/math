# isLimitEquivBijective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:00ee28497b395c88239e179331a7e6713571b5ef5f5e37def62a0644e9b8d410",
  "kind": "def",
  "lexical_name": "isLimitEquivBijective",
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
  "slug": "islimitequivbijective--4b7e314f58e37381a7f94224",
  "source": {
    "blob": "75b4b16b77fd6bed9be3880514fe40886af83e97",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 130,
    "line": 111,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullbacks/Variant51f55e0d9777b06596e99bcd3bc1f95ae5d3217cfdf2263413a10d4d5ff6c3b6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4b7e314f58e37381a7f9422491ed07b14a614e5c92fa5d200b4aa78186cdee05",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullbacks/Variant51f55e0d9777b06596e99bcd3bc1f95ae5d3217cfdf2263413a10d4d5ff6c3b6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:00ee28497b395c88239e179331a7e6713571b5ef5f5e37def62a0644e9b8d410`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 111–130.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def isLimitEquivBijective :
    IsLimit c ≃ Function.Bijective c.toPullbackObj where
  toFun h := (IsLimit.equivPullbackObj h).bijective
  invFun h := IsLimit.ofIsoLimit (Types.pullbackLimitCone f g).isLimit
    (Iso.symm (PullbackCone.ext (Equiv.ofBijective _ h).toIso))
  left_inv _ := Subsingleton.elim _ _

end PullbackCone

namespace Types

section Pullback

open CategoryTheory.Limits.WalkingCospan

variable {X Y Z : Type u} (f : X ⟶ Z) (g : Y ⟶ Z)

/-- The pullback given by the instance `HasPullbacks (Type u)` is isomorphic to the
explicit pullback object given by `PullbackObj`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullbacks/Variant51f55e0d9777b06596e99bcd3bc1f95ae5d3217cfdf2263413a10d4d5ff6c3b6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullbacks/Variant51f55e0d9777b06596e99bcd3bc1f95ae5d3217cfdf2263413a10d4d5ff6c3b6.lean#L111).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `75b4b16b77fd6bed9be3880514fe40886af83e97` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
