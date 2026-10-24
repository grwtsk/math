# differentiableWithinAt_finCons

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "411b5f2f6a95bdce18d85ba51f9f21e78f36e770",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 595,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d9/d9edeab4ca3671820dd56f6bb5d12a875cbda846eded02c4aeac125112a892e5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4dadfe03-3aea-0356-601e-2312f3a7d00f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:04114bc0-37c9-c318-e362-88818b64207f",
  "kind": "theorem",
  "lexical_name": "differentiableWithinAt_finCons",
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
  "slug": "differentiablewithinat-fincons--814b1fdb0f81a6428580da3e",
  "source": {
    "blob": "411b5f2f6a95bdce18d85ba51f9f21e78f36e770",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 604,
    "line": 595,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Prod/Variantd9edeab4ca3671820dd56f6bb5d12a875cbda846eded02c4aeac125112a892e5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:814b1fdb0f81a6428580da3e864974c9e7d28341f4a65e36dbbe06711129dd62",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Prod/Variantd9edeab4ca3671820dd56f6bb5d12a875cbda846eded02c4aeac125112a892e5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:04114bc0-37c9-c318-e362-88818b64207f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 595–604.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem differentiableWithinAt_finCons :
    DifferentiableWithinAt 𝕜 (fun x => Fin.cons (φ x) (φs x)) s x ↔
      DifferentiableWithinAt 𝕜 φ s x ∧ DifferentiableWithinAt 𝕜 φs s x := by
  rw [differentiableWithinAt_pi, Fin.forall_fin_succ, differentiableWithinAt_pi]
  simp only [Fin.cons_zero, Fin.cons_succ]

@[deprecated (since := "2026-08-08")]
alias differentiableWithinAt_finCons' := differentiableWithinAt_finCons

@[fun_prop]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Prod/Variantd9edeab4ca3671820dd56f6bb5d12a875cbda846eded02c4aeac125112a892e5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Prod/Variantd9edeab4ca3671820dd56f6bb5d12a875cbda846eded02c4aeac125112a892e5.lean#L595).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `411b5f2f6a95bdce18d85ba51f9f21e78f36e770` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
