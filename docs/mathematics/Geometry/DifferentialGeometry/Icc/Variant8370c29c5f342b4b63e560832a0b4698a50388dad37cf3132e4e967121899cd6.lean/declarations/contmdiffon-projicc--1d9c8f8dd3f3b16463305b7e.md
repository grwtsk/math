# contMDiffOn_projIcc

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:35972c66-05d6-f552-87e8-568253bffb03",
  "kind": "lemma",
  "lexical_name": "contMDiffOn_projIcc",
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
  "slug": "contmdiffon-projicc--1d9c8f8dd3f3b16463305b7e",
  "source": {
    "blob": "6d8cc86e9db4c9c89cbda7c81345c49904857ca8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 176,
    "line": 145,
    "path": "GRWTSK/Geometry/DifferentialGeometry/Icc/Variant8370c29c5f342b4b63e560832a0b4698a50388dad37cf3132e4e967121899cd6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1d9c8f8dd3f3b16463305b7e8ca8a4bafb32dcc3afaa8edf6b518950bc681e2f",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/Icc/Variant8370c29c5f342b4b63e560832a0b4698a50388dad37cf3132e4e967121899cd6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:35972c66-05d6-f552-87e8-568253bffb03`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 145–176.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma contMDiffOn_projIcc : CMDiff[Icc x y] n (Set.projIcc x y h.out.le) := by
  intro z hz
  rw [contMDiffWithinAt_iff]
  refine ⟨by apply ContinuousAt.continuousWithinAt; fun_prop, ?_⟩
  -- We come back to the definition: we should check that, in each chart, the map is smooth
  -- There are two charts, and we check things separately in each of them using the
  -- explicit formulas.
  suffices ContDiffWithinAt ℝ n _ (Icc x y) z by simpa
  split_ifs with h'z
  · have : ContDiff ℝ n (fun (w : ℝ) ↦
        (show EuclideanSpace ℝ (Fin 1) from toLp 2 fun (_ : Fin 1) ↦ w - x)) := by
      dsimp
      apply contDiff_euclidean.2 (fun i ↦ by fun_prop)
    apply this.contDiffWithinAt.congr_of_eventuallyEq_of_mem _ hz
    filter_upwards [self_mem_nhdsWithin] with w hw
    ext i
    suffices max x (min y w) - x = w - x by
      simpa [modelWithCornersEuclideanHalfSpace, IccLeftChart]
    rw [max_eq_right, min_eq_right hw.2]
    simp [hw.1, h.out.le]
  · have : ContDiff ℝ n (fun (w : ℝ) ↦
        (show EuclideanSpace ℝ (Fin 1) from toLp 2 fun (_ : Fin 1) ↦ y - w)) := by
      dsimp
      apply contDiff_euclidean.2 (fun i ↦ by fun_prop)
    apply this.contDiffWithinAt.congr_of_eventuallyEq_of_mem _ hz
    filter_upwards [self_mem_nhdsWithin] with w hw
    ext i
    suffices y - max x (min y w) = y - w by
      simpa [modelWithCornersEuclideanHalfSpace, IccRightChart]
    rw [max_eq_right, min_eq_right hw.2]
    simp [hw.1, h.out.le]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/Icc/Variant8370c29c5f342b4b63e560832a0b4698a50388dad37cf3132e4e967121899cd6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/Icc/Variant8370c29c5f342b4b63e560832a0b4698a50388dad37cf3132e4e967121899cd6.lean#L145).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6d8cc86e9db4c9c89cbda7c81345c49904857ca8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
