# Iter.val_step_takeWhile

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5ac97e03-bf4e-e0b2-a77d-4085194c8197",
  "kind": "theorem",
  "lexical_name": "Iter.val_step_takeWhile",
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
  "slug": "iter-val-step-takewhile--9c864315b2d000408fda66b2",
  "source": {
    "blob": "468d77281a58b292d77bd62136e176e47d5d7a7b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 67,
    "line": 51,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TakeWhile/Variantcea5a406a08400140c57af98a34f0f1fdb7c6723777e93ded0da2891ab73a9ea.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9c864315b2d000408fda66b2a49b877783c527a34b07867a9a146d58e5342df6",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TakeWhile/Variantcea5a406a08400140c57af98a34f0f1fdb7c6723777e93ded0da2891ab73a9ea.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5ac97e03-bf4e-e0b2-a77d-4085194c8197`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 51–67.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Iter.val_step_takeWhile {α β} [Iterator α Id β] {P}
    {it : Iter (α := α) β} :
    (it.takeWhile P).step.val = (match it.step.val with
      | .yield it' out => match P out with
        | true => .yield (it'.takeWhile P) out
        | false => .done
      | .skip it' => .skip (it'.takeWhile P)
      | .done => .done) := by
  simp only [takeWhile_eq, step, toIterM_toIter, IterM.step_takeWhile, PlausibleIterStep.yield,
    PlausibleIterStep.done, PlausibleIterStep.skip, Id.run_bind, IterM.Step.val_toPure]
  generalize it.toIterM.step.run = step
  cases step.inflate using PlausibleIterStep.casesOn
  · simp only [IterStep.mapIterator_yield, toIterM_toIter]
    split <;> split <;> (try exfalso; simp_all; done) <;> simp_all
  · simp
  · simp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TakeWhile/Variantcea5a406a08400140c57af98a34f0f1fdb7c6723777e93ded0da2891ab73a9ea.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TakeWhile/Variantcea5a406a08400140c57af98a34f0f1fdb7c6723777e93ded0da2891ab73a9ea.lean#L51).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `468d77281a58b292d77bd62136e176e47d5d7a7b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
