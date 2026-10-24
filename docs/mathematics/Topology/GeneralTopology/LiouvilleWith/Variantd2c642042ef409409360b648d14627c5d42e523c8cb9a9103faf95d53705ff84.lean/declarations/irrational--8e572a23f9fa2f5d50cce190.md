# irrational

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e6fa57eb-733d-4736-80d5-6d390d4d47b5",
  "kind": "theorem",
  "lexical_name": "irrational",
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
  "slug": "irrational--8e572a23f9fa2f5d50cce190",
  "source": {
    "blob": "d022821046513abca1b68b992a4bab45b54ff43d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 302,
    "line": 287,
    "path": "GRWTSK/Topology/GeneralTopology/LiouvilleWith/Variantd2c642042ef409409360b648d14627c5d42e523c8cb9a9103faf95d53705ff84.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8e572a23f9fa2f5d50cce19005fbfbad8a58a311fbde1b89a5b45c81487c597b",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/LiouvilleWith/Variantd2c642042ef409409360b648d14627c5d42e523c8cb9a9103faf95d53705ff84.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e6fa57eb-733d-4736-80d5-6d390d4d47b5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 287–302.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem irrational (h : LiouvilleWith p x) (hp : 1 < p) : Irrational x := by
  rintro ⟨r, rfl⟩
  rcases eq_or_ne r 0 with (rfl | h0)
  · refine h.ne_cast_int hp 0 ?_; rw [Rat.cast_zero, Int.cast_zero]
  · refine (h.mul_rat (inv_ne_zero h0)).ne_cast_int hp 1 ?_
    rw [Rat.cast_inv, mul_inv_cancel₀]
    exacts [Int.cast_one.symm, Rat.cast_ne_zero.mpr h0]

end LiouvilleWith

namespace Liouville

variable {x : ℝ}

/-- If `x` is a Liouville number, then for any `n`, for infinitely many denominators `b` there
exists a numerator `a` such that `x ≠ a / b` and `|x - a / b| < 1 / b ^ n`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LiouvilleWith/Variantd2c642042ef409409360b648d14627c5d42e523c8cb9a9103faf95d53705ff84.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LiouvilleWith/Variantd2c642042ef409409360b648d14627c5d42e523c8cb9a9103faf95d53705ff84.lean#L287).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d022821046513abca1b68b992a4bab45b54ff43d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
