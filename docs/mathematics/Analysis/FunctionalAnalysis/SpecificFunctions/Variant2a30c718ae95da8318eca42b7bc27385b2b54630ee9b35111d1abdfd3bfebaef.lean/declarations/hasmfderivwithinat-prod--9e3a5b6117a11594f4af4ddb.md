# HasMFDerivWithinAt.prod

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a10c917bc3a2ba6ab90404a64abc2336deb2a7c0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1003,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2a/2a30c718ae95da8318eca42b7bc27385b2b54630ee9b35111d1abdfd3bfebaef.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d9371815-8d49-232d-d7c0-675818cb852c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:513e7876-467b-d713-a5d4-af2dd6059faf",
  "kind": "lemma",
  "lexical_name": "HasMFDerivWithinAt.prod",
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
  "slug": "hasmfderivwithinat-prod--9e3a5b6117a11594f4af4ddb",
  "source": {
    "blob": "a10c917bc3a2ba6ab90404a64abc2336deb2a7c0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1018,
    "line": 1003,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/SpecificFunctions/Variant2a30c718ae95da8318eca42b7bc27385b2b54630ee9b35111d1abdfd3bfebaef.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9e3a5b6117a11594f4af4ddb47974e41f750d9dd81d141b6bb00f97a1dc2933e",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/SpecificFunctions/Variant2a30c718ae95da8318eca42b7bc27385b2b54630ee9b35111d1abdfd3bfebaef.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:513e7876-467b-d713-a5d4-af2dd6059faf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1003–1018.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma HasMFDerivWithinAt.prod [DecidableEq ι]
    (hf : ∀ i ∈ t, HasMFDerivWithinAt I 𝓘(𝕜, F') (f i) s z (f' i)) :
    HasMFDerivWithinAt I 𝓘(𝕜, F') (∏ i ∈ t, f i) s z
      (∑ i ∈ t, (∏ j ∈ t.erase i, f j z) • (f' i)) := by
  induction t using Finset.induction_on with
  | empty => simpa using! hasMFDerivWithinAt_const ..
  | insert i t hi IH =>
    rw [t.sum_insert hi, t.erase_insert hi, t.prod_insert hi, add_comm]
    rw [t.forall_mem_insert] at hf
    convert! hf.1.mul (IH hf.2) using 2
    · simp only [t.smul_sum, ← mul_smul]
      refine t.sum_congr rfl (fun j hj ↦ ?_)
      rw [t.erase_insert_of_ne (by grind), Finset.prod_insert (by grind)]
    · simp

set_option backward.isDefEq.respectTransparency false in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/SpecificFunctions/Variant2a30c718ae95da8318eca42b7bc27385b2b54630ee9b35111d1abdfd3bfebaef.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/SpecificFunctions/Variant2a30c718ae95da8318eca42b7bc27385b2b54630ee9b35111d1abdfd3bfebaef.lean#L1003).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a10c917bc3a2ba6ab90404a64abc2336deb2a7c0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
