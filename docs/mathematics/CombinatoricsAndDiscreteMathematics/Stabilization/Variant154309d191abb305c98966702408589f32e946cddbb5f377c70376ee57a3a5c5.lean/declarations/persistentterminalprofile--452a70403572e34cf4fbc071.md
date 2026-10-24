# PersistentTerminalProfile

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:428598a2cc8fd2636dfe258cd5d67c66c7e1a536ddb0e10c56cc4a1fe2dad4e9",
  "kind": "structure",
  "lexical_name": "PersistentTerminalProfile",
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
  "slug": "persistentterminalprofile--452a70403572e34cf4fbc071",
  "source": {
    "blob": "c25fa41ed8e09166fb93350cb462126e35d45a86",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 41,
    "line": 27,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Stabilization/Variant154309d191abb305c98966702408589f32e946cddbb5f377c70376ee57a3a5c5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:452a70403572e34cf4fbc071203fb833cfa2d28045500c6eb1c7a3e273131a57",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Stabilization/Variant154309d191abb305c98966702408589f32e946cddbb5f377c70376ee57a3a5c5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:428598a2cc8fd2636dfe258cd5d67c66c7e1a536ddb0e10c56cc4a1fe2dad4e9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 27–41.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure PersistentTerminalProfile
    (Point : Type u)
    [Fintype Point]
    [DecidableEq Point] where
  terminalStage : Nat
  active : Nat → Finset Point
  activeNested :
    ∀ stage, active (stage + 1) ⊆ active stage
  terminalTime : Point → Nat
  terminalBound :
    ∀ point, terminalTime point ≤ terminalStage
  activeBeforeTerminal :
    ∀ stage point,
      point ∈ active stage ↔ stage < terminalTime point

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Stabilization/Variant154309d191abb305c98966702408589f32e946cddbb5f377c70376ee57a3a5c5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Stabilization/Variant154309d191abb305c98966702408589f32e946cddbb5f377c70376ee57a3a5c5.lean#L27).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c25fa41ed8e09166fb93350cb462126e35d45a86` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
