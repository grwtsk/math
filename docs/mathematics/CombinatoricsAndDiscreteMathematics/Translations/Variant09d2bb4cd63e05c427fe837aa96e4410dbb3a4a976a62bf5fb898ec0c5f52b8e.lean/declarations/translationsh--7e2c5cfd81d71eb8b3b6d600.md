# translationSH

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4212907d6baf2e765179b0b98df258098fa03f1facba4969b7324875af94ebec",
  "kind": "def",
  "lexical_name": "translationSH",
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
  "slug": "translationsh--7e2c5cfd81d71eb8b3b6d600",
  "source": {
    "blob": "928e446df4e5c40e7e1352cb318b487e66f6af98",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 228,
    "line": 222,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Translations/Variant09d2bb4cd63e05c427fe837aa96e4410dbb3a4a976a62bf5fb898ec0c5f52b8e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7e2c5cfd81d71eb8b3b6d6008f055539c68af747a0a652669db0880ed07f1283",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Translations/Variant09d2bb4cd63e05c427fe837aa96e4410dbb3a4a976a62bf5fb898ec0c5f52b8e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4212907d6baf2e765179b0b98df258098fa03f1facba4969b7324875af94ebec`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 222–228.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def translationSH : ModelTranslation PrototypeBoundary PrototypeChain :=
  { prototypeTypedTranslation .τSH _ _ boundaryToChain with
    sourceProposition := fun _ => True
    targetProposition := IsBoundaryIndicator
    proofTransport := some ⟨fun boundary _ => ⟨boundary, rfl⟩⟩ }

/-- `τSH` carries an actual typed proof transformer into the exact image predicate. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Translations/Variant09d2bb4cd63e05c427fe837aa96e4410dbb3a4a976a62bf5fb898ec0c5f52b8e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Translations/Variant09d2bb4cd63e05c427fe837aa96e4410dbb3a4a976a62bf5fb898ec0c5f52b8e.lean#L222).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `928e446df4e5c40e7e1352cb318b487e66f6af98` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
