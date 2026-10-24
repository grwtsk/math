# nnrpow_inv_nnrpow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:346bb9ab-fba2-e9e7-9f2a-7d750d9f50b9",
  "kind": "lemma",
  "lexical_name": "nnrpow_inv_nnrpow",
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
  "slug": "nnrpow-inv-nnrpow--fbb7809779edde773b366400",
  "source": {
    "blob": "fc272c1b3532f1436f3cf02ed48bd066109c9e79",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 162,
    "line": 159,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant5da39d56da3d94c569f6ff1be79e64f884aecd07c13c91837961e066681e6714.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fbb7809779edde773b3664001bab972606ff7460825c5ce048b3fd6948ed3086",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant5da39d56da3d94c569f6ff1be79e64f884aecd07c13c91837961e066681e6714.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:346bb9ab-fba2-e9e7-9f2a-7d750d9f50b9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 159–162.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma nnrpow_inv_nnrpow (a : A) {x : ℝ≥0} (hx : x ≠ 0) (ha : 0 ≤ a := by cfc_tac) :
    (a ^ x⁻¹) ^ x = a := by
  simp [inv_mul_cancel₀ hx, nnrpow_one _ ha]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant5da39d56da3d94c569f6ff1be79e64f884aecd07c13c91837961e066681e6714.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant5da39d56da3d94c569f6ff1be79e64f884aecd07c13c91837961e066681e6714.lean#L159).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fc272c1b3532f1436f3cf02ed48bd066109c9e79` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
