# selectedNodes

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0899960b7b9fefebae6b26d821a4706311216d8351ba74a1b9da3d867765fd2e",
  "kind": "def",
  "lexical_name": "selectedNodes",
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
  "slug": "selectednodes--5510f0dcef08f5ab948e9a9b",
  "source": {
    "blob": "f29842099939a5131c0a1c53c1f9cf5233b0135e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 47,
    "line": 31,
    "path": "GRWTSK/InformationTheory/ReedSolomon/Profiles.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5510f0dcef08f5ab948e9a9bcb30ab9b5d391b47856dab732afa525995bdf077",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/CodingTheory/AlgebraicCodes/ReedSolomonCodes/Profiles.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0899960b7b9fefebae6b26d821a4706311216d8351ba74a1b9da3d867765fd2e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 31–47.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def selectedNodes (k : Fin 15) : Nodes :=
  if k = 0 then ⟨0, 1, 2, 3⟩ else
  if k = 1 then ⟨0, 1, 2, 4⟩ else
  if k = 2 then ⟨0, 1, 2, 5⟩ else
  if k = 3 then ⟨0, 1, 3, 4⟩ else
  if k = 4 then ⟨0, 1, 3, 5⟩ else
  if k = 5 then ⟨0, 1, 4, 5⟩ else
  if k = 6 then ⟨0, 2, 3, 4⟩ else
  if k = 7 then ⟨0, 2, 3, 5⟩ else
  if k = 8 then ⟨0, 2, 4, 5⟩ else
  if k = 9 then ⟨0, 3, 4, 5⟩ else
  if k = 10 then ⟨1, 2, 3, 4⟩ else
  if k = 11 then ⟨1, 2, 3, 5⟩ else
  if k = 12 then ⟨1, 2, 4, 5⟩ else
  if k = 13 then ⟨1, 3, 4, 5⟩ else
  ⟨2, 3, 4, 5⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/CombinatoricsAndDiscreteMathematics/CodingTheory/AlgebraicCodes/ReedSolomonCodes/Profiles.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/InformationTheory/ReedSolomon/Profiles.lean#L31).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f29842099939a5131c0a1c53c1f9cf5233b0135e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
