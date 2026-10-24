# boundary_rotate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:12c6f2ee-c4bd-8697-bd84-13d9bb95dda6",
  "kind": "theorem",
  "lexical_name": "boundary_rotate",
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
  "slug": "boundary-rotate--07e117683d4c815db20da838",
  "source": {
    "blob": "a9e9663752fb975d94dcbacc1337f116969d8561",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 350,
    "line": 323,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/CyclicCubical/Variant040892fc89a4f973dfd5875eed5d7775f2d262b7f938ac257a64edceaed1b7f1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:07e117683d4c815db20da83844e8cb3c8f342a17d23aceec54f73970849d736c",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/CyclicCubical/Variant040892fc89a4f973dfd5875eed5d7775f2d262b7f938ac257a64edceaed1b7f1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:12c6f2ee-c4bd-8697-bd84-13d9bb95dda6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 323–350.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem boundary_rotate (r : ZMod n) (chain : CubicalChain n) :
    cubicalBoundary (rotate_chainMap r chain) =
      rotate_chainMap r (cubicalBoundary chain) := by
  funext lower
  classical
  unfold cubicalBoundary rotate_chainMap
  let e : FaceAddress n ≃ FaceAddress n :=
    { toFun := rotateFace (-r)
      invFun := rotateFace r
      left_inv := by
        intro face
        simpa using rotateFace_neg_rotateFace (-r) face
      right_inv := by
        intro face
        exact rotateFace_neg_rotateFace r face }
  exact Fintype.sum_equiv e _ _ (fun upper ↦ by
    rw [show rotateFace (-r) upper = e upper by rfl]
    by_cases h : lower.IsFacet upper
    · have h' : (rotateFace (-r) lower).IsFacet (e upper) := by
        simpa [e] using (rotateFace_boundaryRelation (-r) lower upper).2 h
      simp [h, h']
    · have h' : ¬(rotateFace (-r) lower).IsFacet (e upper) := by
        intro hrot
        exact h ((rotateFace_boundaryRelation (-r) lower upper).1
          (by simpa [e] using hrot))
      simp [h, h'])

/-- Rotational equivalence uses one global cyclic turn. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/CyclicCubical/Variant040892fc89a4f973dfd5875eed5d7775f2d262b7f938ac257a64edceaed1b7f1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/CyclicCubical/Variant040892fc89a4f973dfd5875eed5d7775f2d262b7f938ac257a64edceaed1b7f1.lean#L323).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a9e9663752fb975d94dcbacc1337f116969d8561` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
