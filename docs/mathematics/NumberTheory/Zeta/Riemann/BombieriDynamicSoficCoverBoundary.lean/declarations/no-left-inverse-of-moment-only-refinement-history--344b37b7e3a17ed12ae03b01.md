# no_left_inverse_of_moment_only_refinement_history

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f389a162-dc17-e9e1-9bdf-52af76b7d101",
  "kind": "theorem",
  "lexical_name": "no_left_inverse_of_moment_only_refinement_history",
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
  "slug": "no-left-inverse-of-moment-only-refinement-history--344b37b7e3a17ed12ae03b01",
  "source": {
    "blob": "cdf02856aeeee15b55000182096f2cf2fe0a7f8a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 112,
    "line": 93,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/BombieriDynamicSoficCoverBoundary.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:344b37b7e3a17ed12ae03b015ca6f9457a831e9c620a587a47325654c3f38464",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/BombieriDynamicSoficCoverBoundary.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f389a162-dc17-e9e1-9bdf-52af76b7d101`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 93–112.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem no_left_inverse_of_moment_only_refinement_history
    {step : Combination 2 → Combination 2}
    (R : GrowingRefinement (Combination 2) step)
    (hStages : EveryStageUsesOnlyBombieriMoments R) :
    ¬ ∃ recover :
        ((n : ℕ) → StageCells R.size n) → Combination 2,
      ∀ u, recover (momentRefinementHistory R u) = u := by
  rintro ⟨recover, hRecover⟩
  apply correctedCoordinates_ne_zero
  calc
    correctedCoordinates =
        recover (momentRefinementHistory R correctedCoordinates) :=
      (hRecover correctedCoordinates).symm
    _ = recover (momentRefinementHistory R (0 : Combination 2)) :=
      congrArg recover (moment_only_history_collision R hStages)
    _ = (0 : Combination 2) := hRecover 0

/-- Any source readout separating the corrected coefficient witness
from zero is NOT a function of such a moment-only infinite history.
The readout can be an ordinate only after it is ACTUALLY constructed. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/BombieriDynamicSoficCoverBoundary.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/BombieriDynamicSoficCoverBoundary.lean#L93).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cdf02856aeeee15b55000182096f2cf2fe0a7f8a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
