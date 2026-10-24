# SplitIterator.toList_eq_splitFromSteps

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b5ec0507-f6f0-7d46-a154-4bb87012f201",
  "kind": "theorem",
  "lexical_name": "SplitIterator.toList_eq_splitFromSteps",
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
  "slug": "splititerator-tolist-eq-splitfromsteps--b74341ffe3039733f149b6e7",
  "source": {
    "blob": "d000f483de1166918c25b349f97724b3d0fbcaff",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 155,
    "line": 134,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant865637240f02b5ea2a759e7fd31f14d606110c81cab14ecb57a13057794079cb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b74341ffe3039733f149b6e7e6c6a4ac4a714a7b93bc5ded7bad98dca74c9632",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant865637240f02b5ea2a759e7fd31f14d606110c81cab14ecb57a13057794079cb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b5ec0507-f6f0-7d46-a154-4bb87012f201`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 134–155.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem SplitIterator.toList_eq_splitFromSteps {ρ : Type} {pat : ρ} {σ : Slice → Type}
    [ToForwardSearcher pat σ]
    [∀ s, Std.Iterator (σ s) Id (SearchStep s)] [∀ s, Std.Iterators.Finite (σ s) Id] {s : Slice}
    (it : Std.Iter (α := σ s) (SearchStep s)) (currPos : s.Pos) :
    (Std.Iter.mk (α := SplitIterator pat s) (.operating currPos it)).toList =
      splitFromSteps currPos it.toList := by
  induction it using Std.Iter.inductSteps generalizing currPos with | step it ihy ihs
  rw [Std.Iter.toList_eq_match_step, Std.Iter.step_eq]
  conv => rhs; rw [Std.Iter.toList_eq_match_step]
  simp only [Std.Iter.toIterM_mk]
  cases it.step using Std.PlausibleIterStep.casesOn with
  | yield it out h =>
    match out with
    | .matched startPos endPos => simp [splitFromSteps, ← ihy h]
    | .rejected startPos endPos => simp [splitFromSteps, ← ihy h]
  | skip it h => simp [← ihs h]
  | done =>
    simp only [Id.run_pure, Std.Shrink.inflate_deflate, Std.IterM.Step.toPure_yield,
      Std.PlausibleIterStep.yield, Std.IterM.toIter_mk, splitFromSteps, List.cons.injEq, true_and]
    rw [Std.Iter.toList_eq_match_step, Std.Iter.step_eq]
    simp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant865637240f02b5ea2a759e7fd31f14d606110c81cab14ecb57a13057794079cb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant865637240f02b5ea2a759e7fd31f14d606110c81cab14ecb57a13057794079cb.lean#L134).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d000f483de1166918c25b349f97724b3d0fbcaff` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
