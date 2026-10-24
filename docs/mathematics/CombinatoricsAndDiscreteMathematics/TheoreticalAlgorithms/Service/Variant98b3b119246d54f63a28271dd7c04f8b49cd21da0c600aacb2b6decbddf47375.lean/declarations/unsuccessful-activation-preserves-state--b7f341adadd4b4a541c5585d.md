# unsuccessful_activation_preserves_state

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bf1dea9e-d731-f857-8cf8-2ba5bd3c3e5d",
  "kind": "theorem",
  "lexical_name": "unsuccessful_activation_preserves_state",
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
  "slug": "unsuccessful-activation-preserves-state--b7f341adadd4b4a541c5585d",
  "source": {
    "blob": "a10eb1f9c640bf5af9904a1e9dffc96833d9d1c3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 378,
    "line": 360,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Service/Variant98b3b119246d54f63a28271dd7c04f8b49cd21da0c600aacb2b6decbddf47375.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b7f341adadd4b4a541c5585d7dc705ec64d45c0d3508e2c2ef4a3c87d704ccc0",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Service/Variant98b3b119246d54f63a28271dd7c04f8b49cd21da0c600aacb2b6decbddf47375.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bf1dea9e-d731-f857-8cf8-2ba5bd3c3e5d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 360–378.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem unsuccessful_activation_preserves_state
    (state : ServiceState)
    (notActivated :
      (decideActivation state).status ≠ .activated) :
    (tryActivate state).state = state := by
  cases decisionEquation : decideActivation state with
  | activate candidate remaining =>
      exfalso
      apply notActivated
      simp [decisionEquation, ActivationDecision.status]
  | noCandidate =>
      simp [tryActivate, decisionEquation, commitDecision]
  | failed =>
      simp [tryActivate, decisionEquation, commitDecision]
  | stale =>
      simp [tryActivate, decisionEquation, commitDecision]
  | notReady =>
      simp [tryActivate, decisionEquation, commitDecision]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Service/Variant98b3b119246d54f63a28271dd7c04f8b49cd21da0c600aacb2b6decbddf47375.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Service/Variant98b3b119246d54f63a28271dd7c04f8b49cd21da0c600aacb2b6decbddf47375.lean#L360).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a10eb1f9c640bf5af9904a1e9dffc96833d9d1c3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
