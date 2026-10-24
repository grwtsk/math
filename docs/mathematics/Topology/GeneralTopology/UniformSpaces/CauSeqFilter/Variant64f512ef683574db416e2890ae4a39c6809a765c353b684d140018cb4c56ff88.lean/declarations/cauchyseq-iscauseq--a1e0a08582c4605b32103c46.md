# CauchySeq.isCauSeq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bc187a06-5917-c503-6475-c2b7a946fe9d",
  "kind": "theorem",
  "lexical_name": "CauchySeq.isCauSeq",
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
  "slug": "cauchyseq-iscauseq--a1e0a08582c4605b32103c46",
  "source": {
    "blob": "c3983942cf88979e480e54fd90d3a598df5a2f16",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 67,
    "line": 57,
    "path": "GRWTSK/Topology/GeneralTopology/UniformSpaces/CauSeqFilter/Variant64f512ef683574db416e2890ae4a39c6809a765c353b684d140018cb4c56ff88.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a1e0a08582c4605b32103c469ee8b4430c206cb37fbf3ce1ff7e0e51a80a207e",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/UniformSpaces/CauSeqFilter/Variant64f512ef683574db416e2890ae4a39c6809a765c353b684d140018cb4c56ff88.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bc187a06-5917-c503-6475-c2b7a946fe9d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 57–67.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem CauchySeq.isCauSeq {f : ℕ → β} (hf : CauchySeq f) : IsCauSeq norm f := by
  obtain ⟨hf1, hf2⟩ := cauchy_iff.1 hf
  intro ε hε
  rcases hf2 { x | dist x.1 x.2 < ε } (dist_mem_uniformity hε) with ⟨t, ⟨ht, htsub⟩⟩
  simp only [mem_map, mem_atTop_sets, mem_preimage] at ht; obtain ⟨N, hN⟩ := ht
  exists N
  intro j hj
  rw [← dist_eq_norm]
  apply @htsub (f j, f N)
  apply Set.mk_mem_prod <;> solve_by_elim [le_refl]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Topology/GeneralTopology/UniformSpaces/CauSeqFilter/Variant64f512ef683574db416e2890ae4a39c6809a765c353b684d140018cb4c56ff88.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UniformSpaces/CauSeqFilter/Variant64f512ef683574db416e2890ae4a39c6809a765c353b684d140018cb4c56ff88.lean#L57).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c3983942cf88979e480e54fd90d3a598df5a2f16` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
