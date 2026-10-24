# Realizes

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:75f5d84e136bf95706ba6c9011af6882fe73c08b5226b2a576e8dc9ecc18f9f4",
  "kind": "def",
  "lexical_name": "Realizes",
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
  "slug": "realizes--ed3a3a8b3d412584b1cdd25f",
  "source": {
    "blob": "9235d32dfe6f966ec96e0d4119831c2f3464aad1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 22,
    "line": 18,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M4b65726e656c2f5468656f72656d732f5261646f46696e697465457874656e73696f6e2e6c65616/Variantd7928a587e79f65c710ab53d43b7aa0541c478689c6eb07dce910a6c28c8b99b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ed3a3a8b3d412584b1cdd25fa7a32d43d8580fc6bcc554ed8f793d49b0954aa4",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M4b65726e656c2f5468656f72656d732f5261646f46696e697465457874656e73696f6e2e6c65616/Variantd7928a587e79f65c710ab53d43b7aa0541c478689c6eb07dce910a6c28c8b99b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:75f5d84e136bf95706ba6c9011af6882fe73c08b5226b2a576e8dc9ecc18f9f4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 18–22.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Realizes {V : Type u} (G : Graph V)
    (U W : List V) (x : V) : Prop :=
  (∀ u : V, u ∈ U -> G.adj x u) ∧
    (∀ w : V, w ∈ W -> ¬ G.adj x w)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M4b65726e656c2f5468656f72656d732f5261646f46696e697465457874656e73696f6e2e6c65616/Variantd7928a587e79f65c710ab53d43b7aa0541c478689c6eb07dce910a6c28c8b99b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M4b65726e656c2f5468656f72656d732f5261646f46696e697465457874656e73696f6e2e6c65616/Variantd7928a587e79f65c710ab53d43b7aa0541c478689c6eb07dce910a6c28c8b99b.lean#L18).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9235d32dfe6f966ec96e0d4119831c2f3464aad1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
