# SharesConcept

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7da6433724c1c1b77ec9f31a8e6f7a8ff3c9674263778b6b2b32e3ed81109b90",
  "kind": "def",
  "lexical_name": "SharesConcept",
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
  "slug": "sharesconcept--5ee23844f2576d2381e2d5df",
  "source": {
    "blob": "88380e262bf94051371a2ba6bfd5cf2e9e20315c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 84,
    "line": 71,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/IdiomConceptNetwork/Variant2eeabed817ac5cfc439af75e8c8c32b8e4df636055869b773b35ee3cd83eac22.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5ee23844f2576d2381e2d5df3027346a8279ed121bc1493f489fa7f04357ac1b",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/IdiomConceptNetwork/Variant2eeabed817ac5cfc439af75e8c8c32b8e4df636055869b773b35ee3cd83eac22.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7da6433724c1c1b77ec9f31a8e6f7a8ff3c9674263778b6b2b32e3ed81109b90`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 71–84.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def SharesConcept
    {cut : EvidenceCut}
    (network : IdiomConceptNetwork cut)
    (left right : Nat)
    (_concept : ConceptId) : Prop :=
  (∃ edge : Fin network.edges.size,
      (network.edges[edge]).relation = .sameConcept ∧
      (network.edges[edge]).source = left ∧
      (network.edges[edge]).target = right) ∨
  (∃ edge : Fin network.edges.size,
      (network.edges[edge]).relation = .sameConcept ∧
      (network.edges[edge]).source = right ∧
      (network.edges[edge]).target = left)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/IdiomConceptNetwork/Variant2eeabed817ac5cfc439af75e8c8c32b8e4df636055869b773b35ee3cd83eac22.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/IdiomConceptNetwork/Variant2eeabed817ac5cfc439af75e8c8c32b8e4df636055869b773b35ee3cd83eac22.lean#L71).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `88380e262bf94051371a2ba6bfd5cf2e9e20315c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
