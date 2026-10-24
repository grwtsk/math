# CoherentAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:90b72f4bb1d9e8b2c0ec587cdaeec56f95184fa5875c798076f141ec62fb86cb",
  "kind": "def",
  "lexical_name": "CoherentAt",
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
  "slug": "coherentat--d2b4e86eafaa8fb5289f6b0e",
  "source": {
    "blob": "c1a8b614abe05adbaa4806538bf401a968bfec09",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 343,
    "line": 311,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ReflectiveAgents/Variant6de92ebab5d5ccc8e477b2a138a91c29264a2a57417ce7372a4c5daac15174e7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d2b4e86eafaa8fb5289f6b0e3c74cf0e291d34bc46a029e2fc5ab7fd7a691285",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/ReflectiveAgents/Variant6de92ebab5d5ccc8e477b2a138a91c29264a2a57417ce7372a4c5daac15174e7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:90b72f4bb1d9e8b2c0ec587cdaeec56f95184fa5875c798076f141ec62fb86cb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 311–343.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def CoherentAt {Layer : Nat → Type u}
    (tower : ExactReflectiveEvaluatorTower Layer) (level : Nat) : Prop :=
  Nonempty (@EffectiveExact
      (Layer (level + 1)) (Layer level)
      (tower.layerIdentity (level + 1)) (tower.layerIdentity level)
      (tower.asInterpreter level)) ∧
    (∀ left right : Layer level,
      (tower.layerIdentity level).r left right ↔
        (tower.layerIdentity (level + 1)).r
          (tower.quote level left) (tower.quote level right)) ∧
    (∀ left right : Layer level,
      (tower.layerIdentity level).r left right ↔
        (tower.layerIdentity (level + 1)).r
          (tower.semanticLift level left) (tower.semanticLift level right)) ∧
    (∀ encoded : Layer (level + 1),
      (tower.layerIdentity (level + 1)).r
        (tower.designatedInterpreter (level + 1)
          (tower.quote (level + 1) encoded))
        (tower.semanticLift level
          (tower.designatedInterpreter level encoded))) ∧
    (∃ representation : Layer (level + 1),
      tower.evaluate (level + 1)
          (tower.interpreterRepresentationCode level) = some representation ∧
      ∀ encoded : Layer (level + 1),
        (tower.layerIdentity level).r
          (tower.denoteInterpreterRepresentation level representation encoded)
          (tower.designatedInterpreter level encoded)) ∧
    (tower.gradePolicy.interpreterInputGrade level = level + 1 ∧
      tower.gradePolicy.interpreterOutputGrade level = level ∧
      tower.gradePolicy.quotationOutputGrade level = level + 1) ∧
    tower.blockingResiduals = ∅

/-- Any explicitly bounded prefix inherits the all-level certificate. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/ReflectiveAgents/Variant6de92ebab5d5ccc8e477b2a138a91c29264a2a57417ce7372a4c5daac15174e7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/ReflectiveAgents/Variant6de92ebab5d5ccc8e477b2a138a91c29264a2a57417ce7372a4c5daac15174e7.lean#L311).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c1a8b614abe05adbaa4806538bf401a968bfec09` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
