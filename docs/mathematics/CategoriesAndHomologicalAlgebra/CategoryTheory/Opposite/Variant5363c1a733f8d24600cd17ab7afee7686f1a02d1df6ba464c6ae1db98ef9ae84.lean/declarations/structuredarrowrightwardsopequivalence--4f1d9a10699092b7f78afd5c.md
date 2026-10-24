# structuredArrowRightwardsOpEquivalence

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:86bb53b72407c82ec573686327acbd6e5547b5169c616d097a00d0f93eb7951a",
  "kind": "def",
  "lexical_name": "structuredArrowRightwardsOpEquivalence",
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
  "slug": "structuredarrowrightwardsopequivalence--4f1d9a10699092b7f78afd5c",
  "source": {
    "blob": "89d431b3cd4625b1be91ee797c9cd29c0326409f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 91,
    "line": 82,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant5363c1a733f8d24600cd17ab7afee7686f1a02d1df6ba464c6ae1db98ef9ae84.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4f1d9a10699092b7f78afd5c0d46fcd24933982cae4645409bec12755683c342",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant5363c1a733f8d24600cd17ab7afee7686f1a02d1df6ba464c6ae1db98ef9ae84.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:86bb53b72407c82ec573686327acbd6e5547b5169c616d097a00d0f93eb7951a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 82–91.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def structuredArrowRightwardsOpEquivalence :
    (w.op.StructuredArrowRightwards g)ᵒᵖ ≌
      w.CostructuredArrowDownwards g.unop where
  functor := structuredArrowRightwardsOpEquivalence.functor w g
  inverse := structuredArrowRightwardsOpEquivalence.inverse w g
  unitIso := Iso.refl _
  counitIso := Iso.refl _

end

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant5363c1a733f8d24600cd17ab7afee7686f1a02d1df6ba464c6ae1db98ef9ae84.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant5363c1a733f8d24600cd17ab7afee7686f1a02d1df6ba464c6ae1db98ef9ae84.lean#L82).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `89d431b3cd4625b1be91ee797c9cd29c0326409f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
