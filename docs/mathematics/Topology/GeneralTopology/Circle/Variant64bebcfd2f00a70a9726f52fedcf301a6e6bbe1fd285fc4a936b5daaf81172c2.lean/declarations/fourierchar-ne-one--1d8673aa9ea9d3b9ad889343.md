# fourierChar_ne_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0ca2b6a4-ffea-2f92-cd7a-61732c0391dd",
  "kind": "theorem",
  "lexical_name": "fourierChar_ne_one",
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
  "slug": "fourierchar-ne-one--1d8673aa9ea9d3b9ad889343",
  "source": {
    "blob": "9a14ca26f5701113b966c51eb5a931b4d7d3bdef",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 254,
    "line": 246,
    "path": "GRWTSK/Topology/GeneralTopology/Circle/Variant64bebcfd2f00a70a9726f52fedcf301a6e6bbe1fd285fc4a936b5daaf81172c2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1d8673aa9ea9d3b9ad889343622607e95d9e6714fc76669dd2257f385ec4d0e3",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Circle/Variant64bebcfd2f00a70a9726f52fedcf301a6e6bbe1fd285fc4a936b5daaf81172c2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0ca2b6a4-ffea-2f92-cd7a-61732c0391dd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 246–254.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem fourierChar_ne_one : fourierChar ≠ 1 := by
  rw [DFunLike.ne_iff]
  use 2⁻¹
  simp only [fourierChar_apply', AddChar.one_apply]
  rw [mul_comm, ← mul_assoc, inv_mul_cancel₀ (by positivity), one_mul]
  exact Circle.exp_pi_ne_one

/-- The additive character from `ℝ` onto the circle, given by `fun x ↦ exp (x * I)`. This uses the
probabilist convention that there is no `2 * π` in the exponent. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Circle/Variant64bebcfd2f00a70a9726f52fedcf301a6e6bbe1fd285fc4a936b5daaf81172c2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Circle/Variant64bebcfd2f00a70a9726f52fedcf301a6e6bbe1fd285fc4a936b5daaf81172c2.lean#L246).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9a14ca26f5701113b966c51eb5a931b4d7d3bdef` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
