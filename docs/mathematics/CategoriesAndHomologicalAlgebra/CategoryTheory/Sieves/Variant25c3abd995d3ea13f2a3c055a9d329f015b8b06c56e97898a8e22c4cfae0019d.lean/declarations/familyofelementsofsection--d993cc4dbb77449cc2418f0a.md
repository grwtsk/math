# familyOfElementsOfSection

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1a29b0f28acae63baaa7b92eb6ad1624cdd13e510b8bd99bd4aa72774df3e122",
  "kind": "def",
  "lexical_name": "familyOfElementsOfSection",
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
  "slug": "familyofelementsofsection--d993cc4dbb77449cc2418f0a",
  "source": {
    "blob": "2215de2b69071325c46dfe3e5efee47b34db0dec",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 47,
    "line": 45,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Sieves/Variant25c3abd995d3ea13f2a3c055a9d329f015b8b06c56e97898a8e22c4cfae0019d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d993cc4dbb77449cc2418f0abaf02543065816752dc5855f18285b2082b8f78a",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Sieves/Variant25c3abd995d3ea13f2a3c055a9d329f015b8b06c56e97898a8e22c4cfae0019d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1a29b0f28acae63baaa7b92eb6ad1624cdd13e510b8bd99bd4aa72774df3e122`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 45–47.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def familyOfElementsOfSection {U : Cᵒᵖ} (s : F.obj U) :
    (G.sieveOfSection s).1.FamilyOfElements G.toPresheaf := fun _ i hi => ⟨F.map i.op s, hi⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Sieves/Variant25c3abd995d3ea13f2a3c055a9d329f015b8b06c56e97898a8e22c4cfae0019d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Sieves/Variant25c3abd995d3ea13f2a3c055a9d329f015b8b06c56e97898a8e22c4cfae0019d.lean#L45).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2215de2b69071325c46dfe3e5efee47b34db0dec` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
