# gridSearch

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:76a9c1be47e6b5e64aeb9daecf7c15c9f74384374a5f5edc36606c98cbf07379",
  "kind": "def",
  "lexical_name": "gridSearch",
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
  "slug": "gridsearch--b81d01884327c72eeaf16f84",
  "source": {
    "blob": "17b79962b1fa7caf337a5bad3cac30aa2cb9a453",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 251,
    "line": 202,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Heuristic/Variant93a03edf96bad5f255247dce5b8bab8e817caa91d3cdbd95c13f75a6b4318e95.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b81d01884327c72eeaf16f841e03b7340ba76ce900e1c0ca9d4d989476f6f861",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Heuristic/Variant93a03edf96bad5f255247dce5b8bab8e817caa91d3cdbd95c13f75a6b4318e95.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:76a9c1be47e6b5e64aeb9daecf7c15c9f74384374a5f5edc36606c98cbf07379`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 202–251.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def gridSearch (e : Expr) (B : Box) (pointsPerDim : Nat := 10) : (Nat → Float) × Float :=
  let fb := boxToFloatBox B
  let dim := fb.dim

  if dim == 0 then
    (fun _ => 0.0, evalFloat e (fun _ => 0.0))
  else
    -- Generate grid points for one dimension
    let gridFor1D (center radius : Float) : Array Float :=
      if pointsPerDim <= 1 then #[center]
      else
        let step := 2.0 * radius / (pointsPerDim - 1).toFloat
        Array.range pointsPerDim |>.map fun i =>
          (center - radius) + i.toFloat * step

    -- For simplicity, only handle 1D and 2D efficiently
    -- Higher dimensions would need proper enumeration
    match dim with
    | 1 =>
      let pts := gridFor1D (fb.centers.getD 0 0.0) (fb.radii.getD 0 0.0)
      let results := pts.map fun x =>
        let pt : Nat → Float := fun i => if i == 0 then x else 0.0
        (pt, evalFloat e pt)
      let best := results.foldl (fun acc r => if r.2 < acc.2 then r else acc)
                    (results.getD 0 (fun _ => 0.0, 1.0e308))
      best
    | 2 =>
      let pts0 := gridFor1D (fb.centers.getD 0 0.0) (fb.radii.getD 0 0.0)
      let pts1 := gridFor1D (fb.centers.getD 1 0.0) (fb.radii.getD 1 0.0)
      -- Use fold instead of mutable state
      let initBest : (Nat → Float) × Float := (fun _ => 0.0, 1.0e308)
      let result := pts0.foldl (fun acc0 x =>
        pts1.foldl (fun acc1 y =>
          let pt : Nat → Float := fun i =>
            if i == 0 then x else if i == 1 then y else 0.0
          let val := evalFloat e pt
          if val < acc1.2 then (pt, val) else acc1
        ) acc0
      ) initBest
      result
    | _ =>
      -- For higher dimensions, fall back to Monte Carlo
      findBestCandidate e B (samples := pointsPerDim * pointsPerDim) (seed := 42)

/-! ### Combined Strategy -/

/--
Hybrid search combining grid and Monte Carlo.
First does a coarse grid search, then refines around the best point with Monte Carlo.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Heuristic/Variant93a03edf96bad5f255247dce5b8bab8e817caa91d3cdbd95c13f75a6b4318e95.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Heuristic/Variant93a03edf96bad5f255247dce5b8bab8e817caa91d3cdbd95c13f75a6b4318e95.lean#L202).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `17b79962b1fa7caf337a5bad3cac30aa2cb9a453` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
