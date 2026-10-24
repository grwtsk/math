# integrableOn_deriv_inv_div_log

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3e73e970e4c41cfd99a78e1ae11ba7171d276a84",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 791,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/02/02e2584cd33b6439a1b5808e96574aeb1c6bf5be792bbc3ac68e447e6e3c7cda.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:cfba4d2c-61ca-990a-8a76-79b994f0e549",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:19d211e1-b0c6-e030-b78e-d935c15f63f9",
  "kind": "theorem",
  "lexical_name": "integrableOn_deriv_inv_div_log",
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
  "slug": "integrableon-deriv-inv-div-log--d417b7c4d8f07e909e6520f2",
  "source": {
    "blob": "3e73e970e4c41cfd99a78e1ae11ba7171d276a84",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 798,
    "line": 791,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/RosserSchoenfeldPrime/Variant02e2584cd33b6439a1b5808e96574aeb1c6bf5be792bbc3ac68e447e6e3c7cda.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d417b7c4d8f07e909e6520f2b5f2c2b93ca0a3f94dbb4442da6a1ddd72266192",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/RosserSchoenfeldPrime/Variant02e2584cd33b6439a1b5808e96574aeb1c6bf5be792bbc3ac68e447e6e3c7cda.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:19d211e1-b0c6-e030-b78e-d935c15f63f9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 791–798.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integrableOn_deriv_inv_div_log : IntegrableOn (fun y ↦ (θ y - y) *
    deriv (fun t ↦ 1 / t / Real.log t) y) (Set.Ioi 2) volume ∧
    ∀ x ≥ 2, IntervalIntegrable (fun t ↦ deriv (fun s ↦ 1 / s / Real.log s) t) volume 2 x := by
  refine integrableOn_deriv (C := 1) (by fun_prop (disch := grind)) (fun x hx => ⟨?_, ?_⟩)
  · rw [abs_of_nonneg (one_div_nonneg.2 (by grind))]
  · rw [deriv_fun_div (differentiableAt_const 1) differentiableAt_id (by grind), abs_div]
    simp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/RosserSchoenfeldPrime/Variant02e2584cd33b6439a1b5808e96574aeb1c6bf5be792bbc3ac68e447e6e3c7cda.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/RosserSchoenfeldPrime/Variant02e2584cd33b6439a1b5808e96574aeb1c6bf5be792bbc3ac68e447e6e3c7cda.lean#L791).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3e73e970e4c41cfd99a78e1ae11ba7171d276a84` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
