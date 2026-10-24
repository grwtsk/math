# Multipliable.tprod_eq_mul_tprod_ite

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "59ab373226bf669c56ef3ab1fda7e63c75176d39",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 188,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f0/f076038e732fb9432224fbac1f8ad6435cbc175b9211090a5e3b32081c96694f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a2969ddc-3d7b-2ddb-bb82-1bef2060c8d2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ba4d9d53-a86a-9e47-5f4f-27c3b3784428",
  "kind": "theorem",
  "lexical_name": "Multipliable.tprod_eq_mul_tprod_ite",
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
  "slug": "multipliable-tprod-eq-mul-tprod-ite--d11dff3508f52112ec5e35fa",
  "source": {
    "blob": "59ab373226bf669c56ef3ab1fda7e63c75176d39",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 203,
    "line": 188,
    "path": "GRWTSK/Topology/GeneralTopology/Group/Variantf076038e732fb9432224fbac1f8ad6435cbc175b9211090a5e3b32081c96694f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d11dff3508f52112ec5e35faa0ff180576e7ba56b612f5efeee45751af529fa0",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Group/Variantf076038e732fb9432224fbac1f8ad6435cbc175b9211090a5e3b32081c96694f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ba4d9d53-a86a-9e47-5f4f-27c3b3784428`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 188–203.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem Multipliable.tprod_eq_mul_tprod_ite [DecidableEq β] (hf : Multipliable f)
    (b : β) : ∏' n, f n = f b * ∏' n, ite (n = b) 1 (f n) := by
  rw [(hasProd_ite_div_hasProd hf.hasProd b).tprod_eq]
  exact (mul_div_cancel _ _).symm

end tprod

end IsTopologicalGroup

section IsUniformGroup

variable [UniformSpace α]

/-- The **Cauchy criterion** for infinite products, also known as the **Cauchy convergence test** -/
@[to_additive /-- The **Cauchy criterion** for infinite sums, also known as the
**Cauchy convergence test** -/]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Group/Variantf076038e732fb9432224fbac1f8ad6435cbc175b9211090a5e3b32081c96694f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Group/Variantf076038e732fb9432224fbac1f8ad6435cbc175b9211090a5e3b32081c96694f.lean#L188).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `59ab373226bf669c56ef3ab1fda7e63c75176d39` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
