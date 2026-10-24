# sameCycle_iff_cycleOf_eq_of_mem_support

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b92c71b484fcb1c327cdc72dedf42ccfd73547c4",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 280,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7a/7a64a94592378475c8964c0428c5f194204d6bd8ae4f512fb2e9efb9740f8887.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9f054cfc-4eaa-9904-1565-8155d2652cc6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:40fde7a1-4fa0-a735-bcb3-cd79ea7d4238",
  "kind": "theorem",
  "lexical_name": "sameCycle_iff_cycleOf_eq_of_mem_support",
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
  "slug": "samecycle-iff-cycleof-eq-of-mem-support--2aa60d96bc5b9d210985ce11",
  "source": {
    "blob": "b92c71b484fcb1c327cdc72dedf42ccfd73547c4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 286,
    "line": 280,
    "path": "GRWTSK/Algebra/GroupTheory/Factors/Variant7a64a94592378475c8964c0428c5f194204d6bd8ae4f512fb2e9efb9740f8887.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2aa60d96bc5b9d210985ce110961ee6fbb9cdaca9162baa6aefd3cc52b4f15b9",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Factors/Variant7a64a94592378475c8964c0428c5f194204d6bd8ae4f512fb2e9efb9740f8887.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:40fde7a1-4fa0-a735-bcb3-cd79ea7d4238`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 280–286.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sameCycle_iff_cycleOf_eq_of_mem_support [DecidableEq α] [Fintype α]
    {g : Perm α} {x y : α} (hx : x ∈ g.support) (hy : y ∈ g.support) :
    g.SameCycle x y ↔ g.cycleOf x = g.cycleOf y := by
  refine ⟨SameCycle.cycleOf_eq, fun h ↦ ?_⟩
  rw [← mem_support_cycleOf_iff' (mem_support.mp hx), h,
    mem_support_cycleOf_iff' (mem_support.mp hy)]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Factors/Variant7a64a94592378475c8964c0428c5f194204d6bd8ae4f512fb2e9efb9740f8887.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Factors/Variant7a64a94592378475c8964c0428c5f194204d6bd8ae4f512fb2e9efb9740f8887.lean#L280).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b92c71b484fcb1c327cdc72dedf42ccfd73547c4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
