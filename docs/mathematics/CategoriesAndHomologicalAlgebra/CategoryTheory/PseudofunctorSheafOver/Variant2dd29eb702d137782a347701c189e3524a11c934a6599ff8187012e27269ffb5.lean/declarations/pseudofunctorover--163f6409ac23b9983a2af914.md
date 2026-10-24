# pseudofunctorOver

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1c84e4ba640ec100f29766b6aa01c590acf0900cee6e0806bb9d5b533d1b9e60",
  "kind": "def",
  "lexical_name": "pseudofunctorOver",
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
  "slug": "pseudofunctorover--163f6409ac23b9983a2af914",
  "source": {
    "blob": "8df9c5dc10ea1f72322d624ed9812a4e77599480",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 52,
    "line": 37,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PseudofunctorSheafOver/Variant2dd29eb702d137782a347701c189e3524a11c934a6599ff8187012e27269ffb5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:163f6409ac23b9983a2af91461bba0fc4a096ee01580edd9c12fb8c4f2c16822",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/PseudofunctorSheafOver/Variant2dd29eb702d137782a347701c189e3524a11c934a6599ff8187012e27269ffb5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1c84e4ba640ec100f29766b6aa01c590acf0900cee6e0806bb9d5b533d1b9e60`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 37–52.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def pseudofunctorOver : Pseudofunctor (LocallyDiscrete Cᵒᵖ) Cat :=
  LocallyDiscrete.mkPseudofunctor
    (fun X ↦ ↧(Sheaf (J.over X.unop) A))
    (fun f ↦ (J.overMapPullback A f.unop).toCatHom)
    (fun X ↦ Cat.Hom.isoMk <| (J.overMapPullbackId A X.unop))
    (fun f g ↦ Cat.Hom.isoMk <| (J.overMapPullbackComp A g.unop f.unop).symm)
    (fun f g h ↦ by ext1; simpa [overMapPullbackCongr_eq_eqToIso] using!
      J.overMapPullback_assoc A h.unop g.unop f.unop)
    (fun f ↦ by ext1; simpa [overMapPullbackCongr_eq_eqToIso] using!
      J.overMapPullback_comp_id A f.unop)
    (fun f ↦ by ext1; simpa [overMapPullbackCongr_eq_eqToIso] using!
      J.overMapPullback_id_comp A f.unop)

end GrothendieckTopology

end CategoryTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/PseudofunctorSheafOver/Variant2dd29eb702d137782a347701c189e3524a11c934a6599ff8187012e27269ffb5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PseudofunctorSheafOver/Variant2dd29eb702d137782a347701c189e3524a11c934a6599ff8187012e27269ffb5.lean#L37).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8df9c5dc10ea1f72322d624ed9812a4e77599480` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
