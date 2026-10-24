# SoninConnectorSystem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7c144d9f3ad551e94f6eb6eeb831723d0353873de3e93bfb85ce04c6a65d7d54",
  "kind": "structure",
  "lexical_name": "SoninConnectorSystem",
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
  "slug": "soninconnectorsystem--bae00eb7fece5e98a2dd8bf9",
  "source": {
    "blob": "ec7480571b734b7cc88ccb8e227e8bb8bbeb2354",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 68,
    "line": 22,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Connector/Variant619bd6e25108b5988fb523f21aa208370e48a054dca9e96fb5359179bc5acbd9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bae00eb7fece5e98a2dd8bf9877d5dd101426d610e3d153e0ce3abacc7175c1f",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Connector/Variant619bd6e25108b5988fb523f21aa208370e48a054dca9e96fb5359179bc5acbd9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7c144d9f3ad551e94f6eb6eeb831723d0353873de3e93bfb85ce04c6a65d7d54`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 22–68.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure SoninConnectorSystem
    {Prime : Type uPrime}
    [DecidableEq Prime]
    (family : SoninSpaceFamily Prime) where
  connector :
    ∀ {source target : Finset Prime},
      source ⊆ target →
      family.Space source →
      family.Space target
  injective :
    ∀ {source target : Finset Prime}
      (subset : source ⊆ target),
      Function.Injective
        (connector
          (source := source)
          (target := target)
          subset)
  identity :
    ∀ (cut : Finset Prime)
      (state : family.Space cut),
      connector
          (source := cut)
          (target := cut)
          (fun _ member => member)
          state =
        state
  compose :
    ∀ {source middle target : Finset Prime}
      (sourceMiddle : source ⊆ middle)
      (middleTarget : middle ⊆ target)
      (state : family.Space source),
      connector
          (source := source)
          (target := target)
          (Finset.Subset.trans
            sourceMiddle middleTarget)
          state =
        connector
          (source := middle)
          (target := target)
          middleTarget
          (connector
            (source := source)
            (target := middle)
            sourceMiddle state)

end Mathematics.SemiLocalDefect.Sonin
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Connector/Variant619bd6e25108b5988fb523f21aa208370e48a054dca9e96fb5359179bc5acbd9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Connector/Variant619bd6e25108b5988fb523f21aa208370e48a054dca9e96fb5359179bc5acbd9.lean#L22).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ec7480571b734b7cc88ccb8e227e8bb8bbeb2354` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
