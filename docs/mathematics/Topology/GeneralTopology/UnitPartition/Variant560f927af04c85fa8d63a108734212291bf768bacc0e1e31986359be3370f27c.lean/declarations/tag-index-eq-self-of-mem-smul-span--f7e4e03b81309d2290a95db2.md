# tag_index_eq_self_of_mem_smul_span

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e1f40f740a00f169e051af4accc3a0fd54d6230a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 336,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/56/560f927af04c85fa8d63a108734212291bf768bacc0e1e31986359be3370f27c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:848e5ae8-7b3e-62c5-5825-7a44690e361d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:64abcc05-548c-78bd-b468-a9220870f568",
  "kind": "theorem",
  "lexical_name": "tag_index_eq_self_of_mem_smul_span",
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
  "slug": "tag-index-eq-self-of-mem-smul-span--f7e4e03b81309d2290a95db2",
  "source": {
    "blob": "e1f40f740a00f169e051af4accc3a0fd54d6230a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 343,
    "line": 336,
    "path": "GRWTSK/Topology/GeneralTopology/UnitPartition/Variant560f927af04c85fa8d63a108734212291bf768bacc0e1e31986359be3370f27c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f7e4e03b81309d2290a95db2453038e2aa7ce193fcfeafcaf21ffd5b84472969",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/UnitPartition/Variant560f927af04c85fa8d63a108734212291bf768bacc0e1e31986359be3370f27c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:64abcc05-548c-78bd-b468-a9220870f568`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 336–343.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tag_index_eq_self_of_mem_smul_span {x : ι → ℝ} (hx : x ∈ (n : ℝ)⁻¹ • L) :
    tag n (index n x) = x := by
  rw [mem_smul_span_iff] at hx
  ext i
  obtain ⟨a, ha⟩ : ∃ a : ℤ, a = n * x i := hx i
  rwa [tag_apply, index_apply, Int.cast_sub, Int.cast_one, sub_add_cancel, ← ha, Int.ceil_intCast,
    div_eq_iff (NeZero.ne _), mul_comm]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/UnitPartition/Variant560f927af04c85fa8d63a108734212291bf768bacc0e1e31986359be3370f27c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UnitPartition/Variant560f927af04c85fa8d63a108734212291bf768bacc0e1e31986359be3370f27c.lean#L336).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e1f40f740a00f169e051af4accc3a0fd54d6230a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
