# mul_pos_mem_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ed47470081007588911366581da6d3f8e1607fb0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 166,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c0/c0df6d9409b74fea411c3735b931a3cb092a8f244f0f4294bdefc1dda9c23fb6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e357ef71-4bb7-d557-df6e-bd20482a0335",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6d435661-f736-cddb-5d99-ba8fbaaaac7a",
  "kind": "theorem",
  "lexical_name": "mul_pos_mem_iff",
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
  "slug": "mul-pos-mem-iff--eec9edd3fb5e57a73daed2a2",
  "source": {
    "blob": "ed47470081007588911366581da6d3f8e1607fb0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 173,
    "line": 166,
    "path": "GRWTSK/Topology/GeneralTopology/UnitInterval/Variantc0df6d9409b74fea411c3735b931a3cb092a8f244f0f4294bdefc1dda9c23fb6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:eec9edd3fb5e57a73daed2a25df732fff9e46b3e7800eac613c48a91ec9d3a62",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/UnitInterval/Variantc0df6d9409b74fea411c3735b931a3cb092a8f244f0f4294bdefc1dda9c23fb6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6d435661-f736-cddb-5d99-ba8fbaaaac7a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 166–173.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mul_pos_mem_iff {a t : ℝ} (ha : 0 < a) : a * t ∈ I ↔ t ∈ Set.Icc (0 : ℝ) (1 / a) := by
  constructor <;> rintro ⟨h₁, h₂⟩ <;> constructor
  · exact nonneg_of_mul_nonneg_right h₁ ha
  · rwa [le_div_iff ha, mul_comm]
  · exact mul_nonneg ha.le h₁
  · rwa [le_div_iff ha, mul_comm] at h₂
#align unit_interval.mul_pos_mem_iff unitInterval.mul_pos_mem_iff

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/UnitInterval/Variantc0df6d9409b74fea411c3735b931a3cb092a8f244f0f4294bdefc1dda9c23fb6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UnitInterval/Variantc0df6d9409b74fea411c3735b931a3cb092a8f244f0f4294bdefc1dda9c23fb6.lean#L166).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ed47470081007588911366581da6d3f8e1607fb0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
