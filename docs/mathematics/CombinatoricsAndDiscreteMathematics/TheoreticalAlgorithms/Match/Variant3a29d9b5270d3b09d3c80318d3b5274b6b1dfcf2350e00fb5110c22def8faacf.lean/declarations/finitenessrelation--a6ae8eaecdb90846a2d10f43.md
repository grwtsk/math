# finitenessRelation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:49a8d3638d097d72006df1d408cac892a7b8b03502ceb5fff64b4fc8ba427b37",
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
  "slug": "finitenessrelation--a6ae8eaecdb90846a2d10f43",
  "source": {
    "blob": "05e1ec2a26c1d72ee17f0ebb2a81a2e39b6d290e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 173,
    "line": 144,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Match/Variant3a29d9b5270d3b09d3c80318d3b5274b6b1dfcf2350e00fb5110c22def8faacf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a6ae8eaecdb90846a2d10f43d6fd991d9fc235ab4effa08fa29d28c792f533cf",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Match/Variant3a29d9b5270d3b09d3c80318d3b5274b6b1dfcf2350e00fb5110c22def8faacf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:49a8d3638d097d72006df1d408cac892a7b8b03502ceb5fff64b4fc8ba427b37`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 144–173.

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

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Match/Variant3a29d9b5270d3b09d3c80318d3b5274b6b1dfcf2350e00fb5110c22def8faacf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Match/Variant3a29d9b5270d3b09d3c80318d3b5274b6b1dfcf2350e00fb5110c22def8faacf.lean#L144).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `05e1ec2a26c1d72ee17f0ebb2a81a2e39b6d290e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
