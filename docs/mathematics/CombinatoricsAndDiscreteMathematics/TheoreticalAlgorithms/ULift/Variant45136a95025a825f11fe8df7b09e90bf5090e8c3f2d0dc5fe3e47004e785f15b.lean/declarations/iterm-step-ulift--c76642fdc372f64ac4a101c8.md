# IterM.step_uLift

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:105c2e7f-9bf4-3695-7b2f-e553b35260ad",
  "kind": "theorem",
  "lexical_name": "IterM.step_uLift",
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
  "slug": "iterm-step-ulift--c76642fdc372f64ac4a101c8",
  "source": {
    "blob": "33dbbccd35d57b42779ac3e20696de775caec35c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 42,
    "line": 31,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ULift/Variant45136a95025a825f11fe8df7b09e90bf5090e8c3f2d0dc5fe3e47004e785f15b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c76642fdc372f64ac4a101c82c853343b39120ef265931464abe6863a306befd",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ULift/Variant45136a95025a825f11fe8df7b09e90bf5090e8c3f2d0dc5fe3e47004e785f15b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:105c2e7f-9bf4-3695-7b2f-e553b35260ad`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 31–42.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IterM.step_uLift [Iterator α m β] [Monad n] {it : IterM (α := α) m β}
    [MonadLiftT m (ULiftT n)] :
    (it.uLift n).step = (do
      match (← (monadLift it.step : ULiftT n _).run).down.inflate with
      | .yield it' out h => return .deflate (.yield (it'.uLift n) (.up out) ⟨_, h, rfl⟩)
      | .skip it' h => return .deflate (.skip (it'.uLift n) ⟨_, h, rfl⟩)
      | .done h => return .deflate (.done ⟨_, h, rfl⟩)) := by
  simp only [IterM.step, Iterator.step, IterM.uLift]
  apply bind_congr; intro step
  split <;> simp [Types.ULiftIterator.Monadic.modifyStep, *] <;> rfl

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ULift/Variant45136a95025a825f11fe8df7b09e90bf5090e8c3f2d0dc5fe3e47004e785f15b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ULift/Variant45136a95025a825f11fe8df7b09e90bf5090e8c3f2d0dc5fe3e47004e785f15b.lean#L31).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `33dbbccd35d57b42779ac3e20696de775caec35c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
