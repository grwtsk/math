# finitenessRelation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c95b0db75ffe947a3db9cce5b960345d969ba7b30fa7cec0c79a68b6497088eb",
  "kind": "def",
  "lexical_name": "finitenessRelation",
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
  "slug": "finitenessrelation--7002ff91381712df2fa25085",
  "source": {
    "blob": "a211050c92e100ce7c3c57252c10df8c54a665cc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 165,
    "line": 136,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Match/Variant195e992da319bcaa13a8ef7035e2beea205731ca5f48af3892a1652d2df6cc38.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7002ff91381712df2fa25085ac71ff3270d0a6c7d580a4b16e6d1412f9f94199",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Match/Variant195e992da319bcaa13a8ef7035e2beea205731ca5f48af3892a1652d2df6cc38.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c95b0db75ffe947a3db9cce5b960345d969ba7b30fa7cec0c79a68b6497088eb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 136–165.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def finitenessRelation [Monad n] [BEq α] (m : Matcher α) [Iterator σ n α] [Finite σ n] :
    FinitenessRelation (m.Iterator σ n α) n where
  Rel := InvImage IterM.IsPlausibleSuccessorOf fun it => it.internalState.inner
  wf := InvImage.wf _ Finite.wf
  subrelation {it it'} h := by
    obtain ⟨_, hsucc, step, rfl⟩ := h
    simp only [IterM.Step] at step
    cases step with simp only [IterStep.successor, modifyStep, reduceCtorEq] at hsucc
    | skip =>
      cases hsucc
      apply IterM.isPlausibleSuccessorOf_of_skip
      assumption
    | yield =>
      split at hsucc
      · next heq =>
        cases hsucc
        split at heq
        · cases heq
          apply IterM.isPlausibleSuccessorOf_of_yield
          assumption
        · contradiction
      · next heq =>
        cases hsucc
        split at heq
        · contradiction
        · cases heq
          apply IterM.isPlausibleSuccessorOf_of_yield
          assumption
      · contradiction

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Match/Variant195e992da319bcaa13a8ef7035e2beea205731ca5f48af3892a1652d2df6cc38.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Match/Variant195e992da319bcaa13a8ef7035e2beea205731ca5f48af3892a1652d2df6cc38.lean#L136).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a211050c92e100ce7c3c57252c10df8c54a665cc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
