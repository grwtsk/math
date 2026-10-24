# integrable_prod_iff'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "67641f1ae7c95edb29cd1dd3c12408019e29783a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 265,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c7/c7c96a652f1bf718b6379f58de9bce80ee477d3be6a54e8e5aaa2fb04bf2b36f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:cad2f714-8e5e-afd9-fe91-90dbf3b65612",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:eafd7ca8-12f2-7238-30f2-635db1967699",
  "kind": "theorem",
  "lexical_name": "integrable_prod_iff'",
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
  "slug": "integrable-prod-iff--9ac265fa709279fedc6b2f46",
  "source": {
    "blob": "67641f1ae7c95edb29cd1dd3c12408019e29783a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 271,
    "line": 265,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Prod/Variantc7c96a652f1bf718b6379f58de9bce80ee477d3be6a54e8e5aaa2fb04bf2b36f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9ac265fa709279fedc6b2f4661a4414b653f85362043da6a8a9d6a20e9d8e4b9",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Prod/Variantc7c96a652f1bf718b6379f58de9bce80ee477d3be6a54e8e5aaa2fb04bf2b36f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:eafd7ca8-12f2-7238-30f2-635db1967699`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 265–271.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integrable_prod_iff' [SFinite μ] ⦃f : α × β → E⦄
    (h1f : AEStronglyMeasurable f (μ.prod ν)) :
    Integrable f (μ.prod ν) ↔
      (∀ᵐ y ∂ν, Integrable (fun x => f (x, y)) μ) ∧ Integrable (fun y => ∫ x, ‖f (x, y)‖ ∂μ) ν := by
  convert integrable_prod_iff h1f.prod_swap using 1
  rw [funext fun _ => Function.comp_apply.symm, integrable_swap_iff]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Prod/Variantc7c96a652f1bf718b6379f58de9bce80ee477d3be6a54e8e5aaa2fb04bf2b36f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Prod/Variantc7c96a652f1bf718b6379f58de9bce80ee477d3be6a54e8e5aaa2fb04bf2b36f.lean#L265).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `67641f1ae7c95edb29cd1dd3c12408019e29783a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
