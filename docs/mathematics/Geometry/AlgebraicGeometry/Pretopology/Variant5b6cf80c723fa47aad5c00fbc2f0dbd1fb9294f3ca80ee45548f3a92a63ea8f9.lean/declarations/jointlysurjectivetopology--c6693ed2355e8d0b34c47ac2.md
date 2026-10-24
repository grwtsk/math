# jointlySurjectiveTopology

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:af53351b81066770440074dd02fbc43a29c8ba0373697a2d40723c590ed67827",
  "kind": "def",
  "lexical_name": "jointlySurjectiveTopology",
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
  "slug": "jointlysurjectivetopology--c6693ed2355e8d0b34c47ac2",
  "source": {
    "blob": "06a579e2c509d67b25babc546bd0d64e91e6fdff",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 110,
    "line": 103,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Pretopology/Variant5b6cf80c723fa47aad5c00fbc2f0dbd1fb9294f3ca80ee45548f3a92a63ea8f9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c6693ed2355e8d0b34c47ac29757f8f1a61c1bd717fd6c4709ad2e9a69680003",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Pretopology/Variant5b6cf80c723fa47aad5c00fbc2f0dbd1fb9294f3ca80ee45548f3a92a63ea8f9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:af53351b81066770440074dd02fbc43a29c8ba0373697a2d40723c590ed67827`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 103–110.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def jointlySurjectiveTopology : GrothendieckTopology Scheme.{u} :=
  jointlySurjectivePretopology.toGrothendieck.copy
    (fun X ↦ {s | ↑s ∈ jointlySurjectivePretopology X}) <|
    funext fun _ ↦ Set.ext fun s ↦
      ⟨fun ⟨_, hp, hps⟩ x ↦ let ⟨Y, u, hu, hmem⟩ := hp x;
        ⟨Y, u, Presieve.map_monotone hps _ _ hu, hmem⟩,
      fun hs ↦ ⟨s, hs, le_rfl⟩⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Pretopology/Variant5b6cf80c723fa47aad5c00fbc2f0dbd1fb9294f3ca80ee45548f3a92a63ea8f9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Pretopology/Variant5b6cf80c723fa47aad5c00fbc2f0dbd1fb9294f3ca80ee45548f3a92a63ea8f9.lean#L103).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `06a579e2c509d67b25babc546bd0d64e91e6fdff` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
