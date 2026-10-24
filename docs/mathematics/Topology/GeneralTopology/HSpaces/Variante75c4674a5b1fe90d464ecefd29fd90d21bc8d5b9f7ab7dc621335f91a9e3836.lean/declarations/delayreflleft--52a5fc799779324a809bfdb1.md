# delayReflLeft

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:715f55c60ccfa80088f35aa3f65b69c2bc4730c7cf7d328e8708b6b5f42d8dd9",
  "kind": "def",
  "lexical_name": "delayReflLeft",
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
  "slug": "delayreflleft--52a5fc799779324a809bfdb1",
  "source": {
    "blob": "2e324aad622be61e12d6d0a3ede463a2468e5b61",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 228,
    "line": 226,
    "path": "GRWTSK/Topology/GeneralTopology/HSpaces/Variante75c4674a5b1fe90d464ecefd29fd90d21bc8d5b9f7ab7dc621335f91a9e3836.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:52a5fc799779324a809bfdb140b4cd7c6b4820ee7722824df26cab6ec3aeb4d6",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/HSpaces/Variante75c4674a5b1fe90d464ecefd29fd90d21bc8d5b9f7ab7dc621335f91a9e3836.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:715f55c60ccfa80088f35aa3f65b69c2bc4730c7cf7d328e8708b6b5f42d8dd9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 226–228.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def delayReflLeft (θ : I) (γ : Path x y) : Path x y :=
  (delayReflRight θ γ.symm).symm

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/HSpaces/Variante75c4674a5b1fe90d464ecefd29fd90d21bc8d5b9f7ab7dc621335f91a9e3836.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/HSpaces/Variante75c4674a5b1fe90d464ecefd29fd90d21bc8d5b9f7ab7dc621335f91a9e3836.lean#L226).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2e324aad622be61e12d6d0a3ede463a2468e5b61` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
