# compactNhdsMkOfOpens

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a9d2c857e9c5a3edd73bec21398e72522cf5df833c5c260c427112836d69c605",
  "kind": "def",
  "lexical_name": "compactNhdsMkOfOpens",
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
  "slug": "compactnhdsmkofopens--3f4902f4de00a693569057a2",
  "source": {
    "blob": "76e5a262cb3b16845ecc95c68b8955b4cd24526d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 313,
    "line": 309,
    "path": "GRWTSK/Topology/GeneralTopology/Compacts/Variant9f897430e92d1bb496298d6c4daefecb76232f79c4e9cdee7d137eecaf77b5fc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3f4902f4de00a693569057a24d497c0cb1cdda980e99d1cf75ce53e81966a3c2",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Compacts/Variant9f897430e92d1bb496298d6c4daefecb76232f79c4e9cdee7d137eecaf77b5fc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a9d2c857e9c5a3edd73bec21398e72522cf5df833c5c260c427112836d69c605`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 309–313.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def compactNhdsMkOfOpens {K : Compacts α} (L : Compacts α) (U : Opens α)
    (h1 : (K : Set α) ⊆ U) (h2 : (U : Set α) ⊆ L) :
    K.compactNhds :=
  ⟨L, fun _ ↦ Filter.mem_of_superset (IsOpen.mem_nhds U.is_open' (h1 (Subtype.coe_prop _))) h2⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Compacts/Variant9f897430e92d1bb496298d6c4daefecb76232f79c4e9cdee7d137eecaf77b5fc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Compacts/Variant9f897430e92d1bb496298d6c4daefecb76232f79c4e9cdee7d137eecaf77b5fc.lean#L309).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `76e5a262cb3b16845ecc95c68b8955b4cd24526d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
