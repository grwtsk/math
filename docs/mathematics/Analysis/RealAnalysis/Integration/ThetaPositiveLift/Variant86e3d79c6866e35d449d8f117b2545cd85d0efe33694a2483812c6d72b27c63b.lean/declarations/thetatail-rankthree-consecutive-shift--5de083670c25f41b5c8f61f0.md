# thetaTail_rankThree_consecutive_shift

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2f99fc53f2340308500a0932cba2d045d6032744",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 229,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/86/86e3d79c6866e35d449d8f117b2545cd85d0efe33694a2483812c6d72b27c63b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f7efebe2-c9f8-b6bc-1caa-e352f6f8dcf7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:310b6907-d56a-89aa-355a-183def2d01da",
  "kind": "theorem",
  "lexical_name": "thetaTail_rankThree_consecutive_shift",
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
  "slug": "thetatail-rankthree-consecutive-shift--5de083670c25f41b5c8f61f0",
  "source": {
    "blob": "2f99fc53f2340308500a0932cba2d045d6032744",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 245,
    "line": 229,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variant86e3d79c6866e35d449d8f117b2545cd85d0efe33694a2483812c6d72b27c63b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5de083670c25f41b5c8f61f028662956d2f2576504b1788dd439808633e6d946",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variant86e3d79c6866e35d449d8f117b2545cd85d0efe33694a2483812c6d72b27c63b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:310b6907-d56a-89aa-355a-183def2d01da`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 229–245.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem thetaTail_rankThree_consecutive_shift
    (r : ℕ) {x y z : ℝ} (hx : 0 ≤ x) (hxy : x < y) (hyz : y < z) :
    Matrix.det !![thetaTail r x, thetaTail r y, thetaTail r z;
      thetaTail (r + 2) x, thetaTail (r + 2) y, thetaTail (r + 2) z;
      thetaTail (r + 4) x, thetaTail (r + 4) y, thetaTail (r + 4) z] ≤ 0 := by
  induction r generalizing x y z with
  | zero =>
      simpa using thetaTail012_det_nonpos_of_numerator_nonpos
        (fun _ ht => thetaTailRankThreeNumerator_nonpos ht) hx hxy hyz
  | succ r ih =>
      have hs := thetaTail_rankThree_shift
        (r := r) (s := r + 2) (u := r + 4)
        (fun {x y z} hx hxy hyz => ih (x := x) (y := y) (z := z) hx hxy hyz)
        hx hxy hyz
      simpa [Nat.add_assoc, Nat.add_comm, Nat.add_left_comm] using hs

/-- Every consecutive even-order triple inherits the proved rank-three orientation. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variant86e3d79c6866e35d449d8f117b2545cd85d0efe33694a2483812c6d72b27c63b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variant86e3d79c6866e35d449d8f117b2545cd85d0efe33694a2483812c6d72b27c63b.lean#L229).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2f99fc53f2340308500a0932cba2d045d6032744` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
