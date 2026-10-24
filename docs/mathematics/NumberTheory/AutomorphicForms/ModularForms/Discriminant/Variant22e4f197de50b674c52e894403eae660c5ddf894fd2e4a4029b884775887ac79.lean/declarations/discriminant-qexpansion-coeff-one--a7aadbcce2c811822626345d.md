# discriminant_qExpansion_coeff_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f1d831120b5f2baa1b8af0571bce2de472f94014",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 214,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/22/22e4f197de50b674c52e894403eae660c5ddf894fd2e4a4029b884775887ac79.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f07f4d3a-f2d0-b5f4-b854-2544f57b4dd1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:baf0035e-40d9-e444-ffe5-28c6c5aa703d",
  "kind": "lemma",
  "lexical_name": "discriminant_qExpansion_coeff_one",
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
  "slug": "discriminant-qexpansion-coeff-one--a7aadbcce2c811822626345d",
  "source": {
    "blob": "f1d831120b5f2baa1b8af0571bce2de472f94014",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 238,
    "line": 214,
    "path": "GRWTSK/NumberTheory/AutomorphicForms/ModularForms/Discriminant/Variant22e4f197de50b674c52e894403eae660c5ddf894fd2e4a4029b884775887ac79.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a7aadbcce2c811822626345d03426a544a165a4232caa6d2fee803a11647a0ec",
  "verification": {
    "reference": "docs/verification/NumberTheory/AutomorphicForms/ModularForms/Discriminant/Variant22e4f197de50b674c52e894403eae660c5ddf894fd2e4a4029b884775887ac79.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:baf0035e-40d9-e444-ffe5-28c6c5aa703d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 214–238.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma discriminant_qExpansion_coeff_one : (qExpansion 1 Δ).coeff 1 = 1 := by
  have hmem : (0 : ℂ) ∈ Metric.ball (0 : ℂ) 1 := Metric.mem_ball_self one_pos
  calc (qExpansion 1 Δ).coeff 1
      = derivWithin (cuspFunction 1 Δ) (Metric.ball 0 1) 0 := by
        simp [qExpansion_coeff, ← derivWithin_of_isOpen Metric.isOpen_ball hmem]
    _ = derivWithin (fun q ↦ q * ∏' i, (1 - q ^ (i + 1)) ^ 24) (Metric.ball 0 1) 0 :=
        derivWithin_congr discriminant_cuspFunction_eqOn (discriminant_cuspFunction_eqOn hmem)
    _ = 1 := by
        simp [derivWithin_fun_mul differentiableWithinAt_fun_id
          (differentiableOn_tprod_one_sub_pow_pow 24 _ hmem),
          derivWithin_id' _ _ (Metric.isOpen_ball.uniqueDiffWithinAt hmem)]

end

end ModularForm

public section

namespace CuspForm

open ModularForm

local notation "Δ" => ModularForm.discriminant

/-- The modular discriminant `Δ` as a cusp form of weight 12 and level 1. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AutomorphicForms/ModularForms/Discriminant/Variant22e4f197de50b674c52e894403eae660c5ddf894fd2e4a4029b884775887ac79.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AutomorphicForms/ModularForms/Discriminant/Variant22e4f197de50b674c52e894403eae660c5ddf894fd2e4a4029b884775887ac79.lean#L214).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f1d831120b5f2baa1b8af0571bce2de472f94014` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
