# prefixEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6bf1c426df8a2bf587db246f616d35209b884cf5df23a9b095eb334a5d6a7409",
  "kind": "def",
  "lexical_name": "prefixEquiv",
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
  "slug": "prefixequiv--9d6dd428d174fd84d18fe069",
  "source": {
    "blob": "82050ef3627fa7f0dcd79f0adb6fc4f485c5e632",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 268,
    "line": 258,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Plain/Variant1784394555889cd52cfc09f5e3438337003a231ba454dbd17eb0ce26aa85388d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9d6dd428d174fd84d18fe0697e5a2f5f7d9d51b562554a72b89077b3200effe2",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Plain/Variant1784394555889cd52cfc09f5e3438337003a231ba454dbd17eb0ce26aa85388d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6bf1c426df8a2bf587db246f616d35209b884cf5df23a9b095eb334a5d6a7409`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 258–268.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def prefixEquiv (hno : ¬ ForbiddenConfiguration P C) (B : Type u)
    (n : Node Ω C) : Space (hw := hw) hno B n ≃
      B × ((a : (schema hw).Key n) →
        (schema hw).FrameParameters (Space (hw := hw) hno B) a →
        Space (hw := hw) hno B ((schema hw).target n a)) :=
  (schema hw).prefixEquiv (dependency_wellFounded hno) B n

end ActualPlain
end PureTypeSystem

end OAI
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Plain/Variant1784394555889cd52cfc09f5e3438337003a231ba454dbd17eb0ce26aa85388d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Plain/Variant1784394555889cd52cfc09f5e3438337003a231ba454dbd17eb0ce26aa85388d.lean#L258).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `82050ef3627fa7f0dcd79f0adb6fc4f485c5e632` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
