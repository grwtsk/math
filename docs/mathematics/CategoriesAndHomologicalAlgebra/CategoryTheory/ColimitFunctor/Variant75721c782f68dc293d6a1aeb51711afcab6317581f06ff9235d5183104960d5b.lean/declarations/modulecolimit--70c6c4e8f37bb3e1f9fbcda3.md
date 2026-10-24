# ModuleColimit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ab48b35a0ee5a54f30a9463160fd9f7981fce378f86edc81717d1fe59fff322a",
  "kind": "def",
  "lexical_name": "ModuleColimit",
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
  "slug": "modulecolimit--70c6c4e8f37bb3e1f9fbcda3",
  "source": {
    "blob": "68253c6dd40bc111364a315941978407fd2b2189",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 70,
    "line": 69,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ColimitFunctor/Variant75721c782f68dc293d6a1aeb51711afcab6317581f06ff9235d5183104960d5b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:70c6c4e8f37bb3e1f9fbcda3b17729435e9bd27ea9ef7547b9264be3d9adf836",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ColimitFunctor/Variant75721c782f68dc293d6a1aeb51711afcab6317581f06ff9235d5183104960d5b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ab48b35a0ee5a54f30a9463160fd9f7981fce378f86edc81717d1fe59fff322a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 69–70.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def ModuleColimit (_ : IsColimit cR) (_ : IsColimit cM) : Type w := cM.pt

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ColimitFunctor/Variant75721c782f68dc293d6a1aeb51711afcab6317581f06ff9235d5183104960d5b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ColimitFunctor/Variant75721c782f68dc293d6a1aeb51711afcab6317581f06ff9235d5183104960d5b.lean#L69).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `68253c6dd40bc111364a315941978407fd2b2189` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
