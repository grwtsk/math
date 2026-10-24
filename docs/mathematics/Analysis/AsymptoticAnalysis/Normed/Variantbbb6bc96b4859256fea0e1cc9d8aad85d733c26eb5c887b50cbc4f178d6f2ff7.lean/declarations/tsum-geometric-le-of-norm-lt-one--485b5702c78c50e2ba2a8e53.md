# tsum_geometric_le_of_norm_lt_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5aca113e-d150-8856-d68d-4b6d8ac03511",
  "kind": "theorem",
  "lexical_name": "tsum_geometric_le_of_norm_lt_one",
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
  "slug": "tsum-geometric-le-of-norm-lt-one--485b5702c78c50e2ba2a8e53",
  "source": {
    "blob": "32c9420e5d37f8b4d36774645392bf66942cdfd5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 430,
    "line": 416,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Normed/Variantbbb6bc96b4859256fea0e1cc9d8aad85d733c26eb5c887b50cbc4f178d6f2ff7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:485b5702c78c50e2ba2a8e53d6a08bba07407562bba004fa32ae4f00a1a5338a",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Normed/Variantbbb6bc96b4859256fea0e1cc9d8aad85d733c26eb5c887b50cbc4f178d6f2ff7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5aca113e-d150-8856-d68d-4b6d8ac03511`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 416–430.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tsum_geometric_le_of_norm_lt_one (x : R) (h : ‖x‖ < 1) :
    ‖∑' n : ℕ, x ^ n‖ ≤ ‖(1 : R)‖ - 1 + (1 - ‖x‖)⁻¹ := by
  have := by simpa only [mul_right_iterate_apply_self]
    using tsum_iterate_mul_le_of_norm_lt_one x h
  by_cases hx : Summable (fun n ↦ x ^ n)
  · grw [hx.tsum_eq_zero_add, norm_add_le, this]
    grind
  · simp only [tsum_eq_zero_of_not_summable hx, norm_zero]
    nontriviality R
    positivity [sub_pos.mpr h, one_le_norm_one R]

variable [HasSummableGeomSeries R]

/-- The element `1 - x` also available bundled as a term of `Rˣ` with inverse `∑' n : ℕ, x ^ n`
in `Units.oneSub`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Normed/Variantbbb6bc96b4859256fea0e1cc9d8aad85d733c26eb5c887b50cbc4f178d6f2ff7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Normed/Variantbbb6bc96b4859256fea0e1cc9d8aad85d733c26eb5c887b50cbc4f178d6f2ff7.lean#L416).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `32c9420e5d37f8b4d36774645392bf66942cdfd5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
