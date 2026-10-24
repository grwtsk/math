# levelwise_effectively_exact

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:79e0dc23077b5b068a0b1b2a29224cfef6ab92178817b3a9fc9a11a811c16bd3",
  "kind": "def",
  "lexical_name": "levelwise_effectively_exact",
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
  "slug": "levelwise-effectively-exact--a97d32225c356a87761eff4d",
  "source": {
    "blob": "82c24bad53437ed655de332d7db334fbb07c25a4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 252,
    "line": 222,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ReflectiveAgents/Variantef8ffd27e2c2852383a2f87ec4f55be17089962e56e2837d170cb8430bfbbe80.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a97d32225c356a87761eff4db5f4bf005f7bc6e093359bbe1821b6428df83449",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/ReflectiveAgents/Variantef8ffd27e2c2852383a2f87ec4f55be17089962e56e2837d170cb8430bfbbe80.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:79e0dc23077b5b068a0b1b2a29224cfef6ab92178817b3a9fc9a11a811c16bd3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 222–252.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def levelwise_effectively_exact {Layer : Nat → Type u}
    (tower : ExactReflectiveEvaluatorTower Layer) (level : Nat) :
    @EffectiveExact
      (Layer (level + 1)) (Layer level)
      (tower.layerIdentity (level + 1)) (tower.layerIdentity level)
      (tower.asInterpreter level) := by
  letI : Setoid (Layer (level + 1)) := tower.layerIdentity (level + 1)
  letI : Setoid (Layer level) := tower.layerIdentity level
  exact {
    levelExact := tower.levelwise_exact level
    effectiveInverse := {
      total := by
        intro encoded
        simpa [asInterpreter] using tower.quotientTotal level encoded
      inverse := tower.inducedEffectiveInverse level
      inverseAfterInterpret := by
        intro input
        refine Quotient.inductionOn input ?_
        intro encoded
        apply Quotient.sound
        exact tower.inverseAfterInterpret level encoded
      interpretAfterInverse := by
        intro output
        refine Quotient.inductionOn output ?_
        intro representative
        apply Quotient.sound
        exact tower.interpretAfterInverse level representative
    }
  }

/-- Quotation preserves and reflects the authorized identity at adjacent levels. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/ReflectiveAgents/Variantef8ffd27e2c2852383a2f87ec4f55be17089962e56e2837d170cb8430bfbbe80.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/ReflectiveAgents/Variantef8ffd27e2c2852383a2f87ec4f55be17089962e56e2837d170cb8430bfbbe80.lean#L222).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `82c24bad53437ed655de332d7db334fbb07c25a4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
