# tendsto_tan_pi_div_two

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e34bf985-f17d-86db-3569-0a1afcc7228e",
  "kind": "theorem",
  "lexical_name": "tendsto_tan_pi_div_two",
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
  "slug": "tendsto-tan-pi-div-two--ba80b170b3586f85d3495f5b",
  "source": {
    "blob": "6b0c657d564cbf9f89de7d5d718d54ad0ef0b75d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1093,
    "line": 1088,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant48fbd86396d7a148507e1395034ef610a3c2cc4360a39eb6d99e88d67e0ac8d6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ba80b170b3586f85d3495f5be1a5cea9ff7d2ed18cf5e1e5ffd35f5b0c8de515",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant48fbd86396d7a148507e1395034ef610a3c2cc4360a39eb6d99e88d67e0ac8d6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e34bf985-f17d-86db-3569-0a1afcc7228e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1088–1093.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendsto_tan_pi_div_two : Tendsto tan (𝓝[<] (π / 2)) atTop := by
  convert tendsto_cos_pi_div_two.inv_tendsto_zero.atTop_mul zero_lt_one tendsto_sin_pi_div_two
    using 1
  simp only [Pi.inv_apply, ← div_eq_inv_mul, ← tan_eq_sin_div_cos]
#align real.tendsto_tan_pi_div_two Real.tendsto_tan_pi_div_two

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant48fbd86396d7a148507e1395034ef610a3c2cc4360a39eb6d99e88d67e0ac8d6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant48fbd86396d7a148507e1395034ef610a3c2cc4360a39eb6d99e88d67e0ac8d6.lean#L1088).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6b0c657d564cbf9f89de7d5d718d54ad0ef0b75d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
