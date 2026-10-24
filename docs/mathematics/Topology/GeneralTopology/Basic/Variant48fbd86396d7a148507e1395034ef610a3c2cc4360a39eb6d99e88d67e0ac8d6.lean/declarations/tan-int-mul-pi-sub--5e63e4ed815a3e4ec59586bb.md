# tan_int_mul_pi_sub

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2b7c2557-0bf1-7753-cdfe-3deb821c9c15",
  "kind": "theorem",
  "lexical_name": "tan_int_mul_pi_sub",
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
  "slug": "tan-int-mul-pi-sub--5e63e4ed815a3e4ec59586bb",
  "source": {
    "blob": "6b0c657d564cbf9f89de7d5d718d54ad0ef0b75d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1074,
    "line": 1071,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant48fbd86396d7a148507e1395034ef610a3c2cc4360a39eb6d99e88d67e0ac8d6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5e63e4ed815a3e4ec59586bb72f7ac48873d5f315584a966ef5edc2b58707904",
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

Occurrence: `result:2b7c2557-0bf1-7753-cdfe-3deb821c9c15`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1071–1074.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tan_int_mul_pi_sub (x : ℝ) (n : ℤ) : tan (n * π - x) = -tan x :=
  tan_neg x ▸ tan_periodic.int_mul_sub_eq n
#align real.tan_int_mul_pi_sub Real.tan_int_mul_pi_sub

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant48fbd86396d7a148507e1395034ef610a3c2cc4360a39eb6d99e88d67e0ac8d6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant48fbd86396d7a148507e1395034ef610a3c2cc4360a39eb6d99e88d67e0ac8d6.lean#L1071).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6b0c657d564cbf9f89de7d5d718d54ad0ef0b75d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
