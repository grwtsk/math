# strictMonoOn_tan

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f2e07213-b362-2e2b-c856-c7b904b43eb7",
  "kind": "theorem",
  "lexical_name": "strictMonoOn_tan",
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
  "slug": "strictmonoon-tan--0bd09c0bc5c10cc543b3a15e",
  "source": {
    "blob": "3a3c9c43836c739ad6841734e251a77902bbd88d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 899,
    "line": 894,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant636577641a1c42c48873e8b621e0de8ea5eff6fa9f647a1badc118e303fcab4a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0bd09c0bc5c10cc543b3a15e88aaf212e65e29f33504c9fb583c09455833f84e",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant636577641a1c42c48873e8b621e0de8ea5eff6fa9f647a1badc118e303fcab4a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f2e07213-b362-2e2b-c856-c7b904b43eb7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 894–899.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem strictMonoOn_tan : StrictMonoOn tan (Ioo (-(π / 2)) (π / 2)) := by
  rintro x hx y hy hlt
  rw [tan_eq_sin_div_cos, tan_eq_sin_div_cos,
    div_lt_div_iff₀ (cos_pos_of_mem_Ioo hx) (cos_pos_of_mem_Ioo hy), mul_comm, ← sub_pos, ← sin_sub]
  exact sin_pos_of_pos_of_lt_pi (sub_pos.2 hlt) <| by linarith [hx.1, hy.2]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant636577641a1c42c48873e8b621e0de8ea5eff6fa9f647a1badc118e303fcab4a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant636577641a1c42c48873e8b621e0de8ea5eff6fa9f647a1badc118e303fcab4a.lean#L894).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3a3c9c43836c739ad6841734e251a77902bbd88d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
