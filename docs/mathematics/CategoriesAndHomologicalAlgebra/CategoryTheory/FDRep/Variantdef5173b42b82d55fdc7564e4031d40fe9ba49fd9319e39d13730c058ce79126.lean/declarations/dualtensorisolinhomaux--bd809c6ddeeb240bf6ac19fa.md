# dualTensorIsoLinHomAux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:519bfc7dcef0fad7b1b5be7905d139e0bd9c5844ee0e581fe159b237de79c75a",
  "kind": "def",
  "lexical_name": "dualTensorIsoLinHomAux",
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
  "slug": "dualtensorisolinhomaux--bd809c6ddeeb240bf6ac19fa",
  "source": {
    "blob": "8f6ef4fe94932e4533999ea3500faea8c3ea8a6b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 182,
    "line": 174,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FdRep/Variantdef5173b42b82d55fdc7564e4031d40fe9ba49fd9319e39d13730c058ce79126.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bd809c6ddeeb240bf6ac19fa0f3915ed35e6718ed45732ef025081c5b34b3bcd",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FDRep/Variantdef5173b42b82d55fdc7564e4031d40fe9ba49fd9319e39d13730c058ce79126.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:519bfc7dcef0fad7b1b5be7905d139e0bd9c5844ee0e581fe159b237de79c75a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 174–182.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def dualTensorIsoLinHomAux :
    (FdRep.of ρV.dual ⊗ W).V ≅ (FdRep.of (linHom ρV W.ρ)).V :=
  -- Porting note: had to make all types explicit arguments
  @LinearEquiv.toFGModuleCatIso k _ (FdRep.of ρV.dual ⊗ W).V (V →ₗ[k] W)
    _ _ _ _ _ _ (dualTensorHomEquiv k V W)
#align fdRep.dual_tensor_iso_lin_hom_aux FdRep.dualTensorIsoLinHomAux

/-- When `V` and `W` are finite dimensional representations of a group `G`, the isomorphism
`dualTensorHomEquiv k V W` of vector spaces induces an isomorphism of representations. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FDRep/Variantdef5173b42b82d55fdc7564e4031d40fe9ba49fd9319e39d13730c058ce79126.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FdRep/Variantdef5173b42b82d55fdc7564e4031d40fe9ba49fd9319e39d13730c058ce79126.lean#L174).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8f6ef4fe94932e4533999ea3500faea8c3ea8a6b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
