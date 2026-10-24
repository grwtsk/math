# stepBounds_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1a74675c-ecff-40f0-8896-7d39eba3a169",
  "kind": "theorem",
  "lexical_name": "stepBounds_iff",
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
  "slug": "stepbounds-iff--f1ea745aa78450d5c20d6e79",
  "source": {
    "blob": "293d2264461e3ae00dca296533143ad4e2cafb4f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 96,
    "line": 78,
    "path": "GRWTSK/Analysis/ErrorBounds/IntegerSquareWitness.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f1ea745aa78450d5c20d6e790dafa3f3d9727b687595cd5f6cb9ef13110c3402",
  "verification": {
    "reference": "docs/verification/Analysis/ErrorBounds/IntegerSquareWitness.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1a74675c-ecff-40f0-8896-7d39eba3a169`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 78–96.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem stepBounds_iff (bits : ℕ) (x y : State) :
    StepBounds bits x y ↔ y = step bits x := by
  constructor
  · rintro ⟨hr,hi,he⟩
    have hr' := (floorBounds_iff (scale_pos bits)).mp hr
    have hi' := (floorBounds_iff (scale_pos bits)).mp hi
    have he' := (ceilBounds_iff (scale_pos bits)).mp he
    rw [errorNumerator, proposedResidual_eq hr' hi'] at he'
    rw [show y = State.mk y.re y.im y.error from rfl, hr', hi', he']
    rfl
  · rintro rfl
    refine ⟨(floorBounds_iff (scale_pos bits)).mpr rfl,
      (floorBounds_iff (scale_pos bits)).mpr rfl, ?_⟩
    apply (ceilBounds_iff (scale_pos bits)).mpr
    simp only [errorNumerator, proposedResidual_eq
      (show (step bits x).re = realNumerator x / scale bits from rfl)
      (show (step bits x).im = imagNumerator x / scale bits from rfl)]
    rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ErrorBounds/IntegerSquareWitness.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ErrorBounds/IntegerSquareWitness.lean#L78).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `293d2264461e3ae00dca296533143ad4e2cafb4f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
