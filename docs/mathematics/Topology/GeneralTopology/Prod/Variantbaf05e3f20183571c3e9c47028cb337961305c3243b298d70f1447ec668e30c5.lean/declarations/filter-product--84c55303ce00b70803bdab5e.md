# filter_product

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c7de845b-b9be-f438-c0ae-092139ae0191",
  "kind": "theorem",
  "lexical_name": "filter_product",
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
  "slug": "filter-product--84c55303ce00b70803bdab5e",
  "source": {
    "blob": "389bdc6cf1681ac393a9e992c3095ead5b22b1e2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 156,
    "line": 151,
    "path": "GRWTSK/Topology/GeneralTopology/Prod/Variantbaf05e3f20183571c3e9c47028cb337961305c3243b298d70f1447ec668e30c5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:84c55303ce00b70803bdab5e99c1d7eb7b2baf91c14b6e8ee2fd468d84dd27a2",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Prod/Variantbaf05e3f20183571c3e9c47028cb337961305c3243b298d70f1447ec668e30c5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c7de845b-b9be-f438-c0ae-092139ae0191`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 151–156.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem filter_product (p : α → Prop) (q : β → Prop) [DecidablePred p] [DecidablePred q] :
    ((s ×ˢ t).filter fun x : α × β => p x.1 ∧ q x.2) = s.filter p ×ˢ t.filter q := by
  ext ⟨a, b⟩
  simp [mem_filter, mem_product, decide_eq_true_eq, and_comm, and_left_comm, and_assoc]
#align finset.filter_product Finset.filter_product

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Prod/Variantbaf05e3f20183571c3e9c47028cb337961305c3243b298d70f1447ec668e30c5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Prod/Variantbaf05e3f20183571c3e9c47028cb337961305c3243b298d70f1447ec668e30c5.lean#L151).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `389bdc6cf1681ac393a9e992c3095ead5b22b1e2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
