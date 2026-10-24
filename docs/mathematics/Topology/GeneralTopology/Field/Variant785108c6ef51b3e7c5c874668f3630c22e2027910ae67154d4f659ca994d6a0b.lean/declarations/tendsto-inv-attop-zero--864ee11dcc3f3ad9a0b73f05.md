# tendsto_inv_atTop_zero'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8ecfccd3-cbad-97cf-831c-f8832bde7424",
  "kind": "theorem",
  "lexical_name": "tendsto_inv_atTop_zero'",
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
  "slug": "tendsto-inv-attop-zero--864ee11dcc3f3ad9a0b73f05",
  "source": {
    "blob": "84fa01ad85c726c6f31d1dbc4e08e1f8efb42bd2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 143,
    "line": 137,
    "path": "GRWTSK/Topology/GeneralTopology/Field/Variant785108c6ef51b3e7c5c874668f3630c22e2027910ae67154d4f659ca994d6a0b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:864ee11dcc3f3ad9a0b73f05b9ad46e1c5edd81d734bff8626d25e06ab5673e5",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Field/Variant785108c6ef51b3e7c5c874668f3630c22e2027910ae67154d4f659ca994d6a0b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8ecfccd3-cbad-97cf-831c-f8832bde7424`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 137–143.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendsto_inv_atTop_zero' : Tendsto (fun r : 𝕜 => r⁻¹) atTop (𝓝[>] (0 : 𝕜)) := by
  refine (atTop_basis.tendsto_iff ⟨fun s => mem_nhdsWithin_Ioi_iff_exists_Ioc_subset⟩).2 ?_
  refine fun b hb => ⟨b⁻¹, trivial, fun x hx => ?_⟩
  have : 0 < x := lt_of_lt_of_le (inv_pos.2 hb) hx
  exact ⟨inv_pos.2 this, (inv_le this hb).2 hx⟩
#align tendsto_inv_at_top_zero' tendsto_inv_atTop_zero'

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Field/Variant785108c6ef51b3e7c5c874668f3630c22e2027910ae67154d4f659ca994d6a0b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Field/Variant785108c6ef51b3e7c5c874668f3630c22e2027910ae67154d4f659ca994d6a0b.lean#L137).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `84fa01ad85c726c6f31d1dbc4e08e1f8efb42bd2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
