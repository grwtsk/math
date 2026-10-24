# realRingEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0ce5170b7bddcbbb53479f758b275e3212c1acb06eb1ecef3680529b66730f06",
  "kind": "def",
  "lexical_name": "realRingEquiv",
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
  "slug": "realringequiv--5bee488ba62f246c420c0df3",
  "source": {
    "blob": "e1e3953b08dfa64478defc40e0ff5ca7ef8814d5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1123,
    "line": 1113,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variantc0cab26026e8ad82143cea922df2a66e765a8d0a5b4df8cec1971570ec693373.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5bee488ba62f246c420c0df3088d3ac7c03596e76ef5bb67be21101184d60e69",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variantc0cab26026e8ad82143cea922df2a66e765a8d0a5b4df8cec1971570ec693373.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0ce5170b7bddcbbb53479f758b275e3212c1acb06eb1ecef3680529b66730f06`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1113–1123.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def realRingEquiv (h : I = (0 : K)) : K ≃+* ℝ where
  toFun := re
  invFun := (↑)
  left_inv x := by nth_rw 2 [← re_add_im x]; simp [h]
  right_inv := ofReal_re
  map_add' := map_add re
  map_mul' := by simp [im_eq_zero h]

/-- The natural `ℝ`-linear isometry equivalence between `𝕜` satisfying `RCLike 𝕜` and `ℝ` when
`RCLike.I = 0`. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variantc0cab26026e8ad82143cea922df2a66e765a8d0a5b4df8cec1971570ec693373.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variantc0cab26026e8ad82143cea922df2a66e765a8d0a5b4df8cec1971570ec693373.lean#L1113).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e1e3953b08dfa64478defc40e0ff5ca7ef8814d5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
