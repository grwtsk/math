# gridPoint_step_pos

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6f20c4f9-0909-03e2-ae8b-05675939f43f",
  "kind": "theorem",
  "lexical_name": "gridPoint_step_pos",
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
  "slug": "gridpoint-step-pos--42d051ea43fe5779585e050d",
  "source": {
    "blob": "f0f48b9b0ca76973809058a4b721cabef4043d77",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 41,
    "line": 34,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ActualCurvatureFiniteReadout/Variant3b270d30cca0523354001aba9f1d8ccc20e18bdd8fa3382aa8283199164923a4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:42d051ea43fe5779585e050dbf4dad8b817a971806fe0583ff46961f34608933",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ActualCurvatureFiniteReadout/Variant3b270d30cca0523354001aba9f1d8ccc20e18bdd8fa3382aa8283199164923a4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6f20c4f9-0909-03e2-ae8b-05675939f43f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 34–41.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem gridPoint_step_pos {A : ℝ} {n k : ℕ} (hA : 0<A) (hn : 0<n) :
    gridPoint A n k<gridPoint A n (k+1) := by
  have hnr : (0:ℝ)<n := by exact_mod_cast hn
  have hh : (0:ℝ)<2*A/(n:ℝ) := by positivity
  dsimp [gridPoint]
  rw [Nat.cast_add,Nat.cast_one]
  nlinarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ActualCurvatureFiniteReadout/Variant3b270d30cca0523354001aba9f1d8ccc20e18bdd8fa3382aa8283199164923a4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ActualCurvatureFiniteReadout/Variant3b270d30cca0523354001aba9f1d8ccc20e18bdd8fa3382aa8283199164923a4.lean#L34).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f0f48b9b0ca76973809058a4b721cabef4043d77` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
