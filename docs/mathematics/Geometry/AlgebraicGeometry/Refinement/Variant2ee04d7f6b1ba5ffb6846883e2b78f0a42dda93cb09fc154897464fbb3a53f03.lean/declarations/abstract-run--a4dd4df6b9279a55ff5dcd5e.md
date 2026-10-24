# abstract_run

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:da7fd96c-28c3-39dd-4ee2-989714bbdaf0",
  "kind": "theorem",
  "lexical_name": "abstract_run",
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
  "slug": "abstract-run--a4dd4df6b9279a55ff5dcd5e",
  "source": {
    "blob": "8b141a66040c7c86a2d1150a57f745ef59d21c7b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 83,
    "line": 70,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Refinement/Variant2ee04d7f6b1ba5ffb6846883e2b78f0a42dda93cb09fc154897464fbb3a53f03.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a4dd4df6b9279a55ff5dcd5ee4caf2685fcda9515b06f8f014fe1ce84bae93e8",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Refinement/Variant2ee04d7f6b1ba5ffb6846883e2b78f0a42dda93cb09fc154897464fbb3a53f03.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:da7fd96c-28c3-39dd-4ee2-989714bbdaf0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 70–83.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem abstract_run
    (R : Refinement Spec Impl)
    (inputs : List Spec.Input)
    {x : Impl.State}
    (hx : R.Valid x) :
    R.abstract (Impl.run (inputs.map R.mapInput) x) =
      Spec.run inputs (R.abstract x) := by
  induction inputs generalizing x with
  | nil => rfl
  | cons input inputs ih =>
      simp only [List.map_cons, System.run_cons]
      rw [ih (R.valid_step input x hx), R.step_sound input x hx]

/-- Observations agree after every finite input trace from a valid state. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Refinement/Variant2ee04d7f6b1ba5ffb6846883e2b78f0a42dda93cb09fc154897464fbb3a53f03.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Refinement/Variant2ee04d7f6b1ba5ffb6846883e2b78f0a42dda93cb09fc154897464fbb3a53f03.lean#L70).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8b141a66040c7c86a2d1150a57f745ef59d21c7b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
