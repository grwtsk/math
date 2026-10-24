# isFiniteM?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:994629203feb2d6d6655422fa5443a51f2654622f39da145882fd38ca0094ac6",
  "kind": "def",
  "lexical_name": "isFiniteM?",
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
  "slug": "isfinitem--68c329169de425ad9fb3d80c",
  "source": {
    "blob": "45f5d4907a68bc54b95aeee99507b72d46c64723",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1157,
    "line": 1144,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/NNReal/Variantbb2a4552035bf129944ced3f793e5a0cb44181db03df16b18a066b0581f2a87e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:68c329169de425ad9fb3d80c272214b00ac03dc28a81e3fff3e6f8608c823727",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/NNReal/Variantbb2a4552035bf129944ced3f793e5a0cb44181db03df16b18a066b0581f2a87e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:994629203feb2d6d6655422fa5443a51f2654622f39da145882fd38ca0094ac6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1144–1157.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private meta def isFiniteM? (x : Q(ℝ≥0∞)) : MetaM (Option Q($x ≠ (⊤ : ℝ≥0∞))) := do
  let mvar ← mkFreshExprMVar q($x ≠ (⊤ : ℝ≥0∞))
  let save ← saveState
  let (goals, _) ← Elab.runTactic mvar.mvarId! <|← `(tactic| finiteness)
  if goals.isEmpty then
    pure <| some <|← instantiateMVars mvar
  else
    restoreState save
    pure none

/-- Extension for the `positivity` tactic: exponentiation by a real number is nonnegative when
the base is nonnegative and positive when the base is positive.
This is the `ENNReal` analogue of `evalRpow` for `Real`. -/
@[positivity (_ : ℝ≥0∞) ^ (_ : ℝ)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/NNReal/Variantbb2a4552035bf129944ced3f793e5a0cb44181db03df16b18a066b0581f2a87e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/NNReal/Variantbb2a4552035bf129944ced3f793e5a0cb44181db03df16b18a066b0581f2a87e.lean#L1144).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `45f5d4907a68bc54b95aeee99507b72d46c64723` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
