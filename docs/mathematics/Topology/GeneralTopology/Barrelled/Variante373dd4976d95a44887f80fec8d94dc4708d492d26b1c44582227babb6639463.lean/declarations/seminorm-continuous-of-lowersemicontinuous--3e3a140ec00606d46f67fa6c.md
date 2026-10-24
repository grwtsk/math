# Seminorm.continuous_of_lowerSemicontinuous

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e1359e00-12ec-8ead-dc5c-344dea9e0fee",
  "kind": "theorem",
  "lexical_name": "Seminorm.continuous_of_lowerSemicontinuous",
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
  "slug": "seminorm-continuous-of-lowersemicontinuous--3e3a140ec00606d46f67fa6c",
  "source": {
    "blob": "04b275fea6ec14a06b23eea6a8c9f88f8bf0de50",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 100,
    "line": 96,
    "path": "GRWTSK/Topology/GeneralTopology/Barrelled/Variante373dd4976d95a44887f80fec8d94dc4708d492d26b1c44582227babb6639463.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3e3a140ec00606d46f67fa6c3435bc5f73d1f8936cccc58b0bcd30553deadf53",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Barrelled/Variante373dd4976d95a44887f80fec8d94dc4708d492d26b1c44582227babb6639463.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e1359e00-12ec-8ead-dc5c-344dea9e0fee`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 96–100.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Seminorm.continuous_of_lowerSemicontinuous {𝕜 E : Type*} [AddGroup E] [SMul 𝕜 E]
    [SeminormedRing 𝕜] [TopologicalSpace E] [BarrelledSpace 𝕜 E] (p : Seminorm 𝕜 E)
    (hp : LowerSemicontinuous p) : Continuous p :=
  BarrelledSpace.continuous_of_lowerSemicontinuous p hp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Barrelled/Variante373dd4976d95a44887f80fec8d94dc4708d492d26b1c44582227babb6639463.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Barrelled/Variante373dd4976d95a44887f80fec8d94dc4708d492d26b1c44582227babb6639463.lean#L96).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `04b275fea6ec14a06b23eea6a8c9f88f8bf0de50` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
