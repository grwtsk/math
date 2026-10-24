# jointFourierIntegrand_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9195805c3a64b0572ffb49ae24da758b0b905db2",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 141,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ca/ca717292568268f01f086e799291e2117f6ae8b8f619ec959ab253f722970178.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2374256a-76d2-027d-8f8e-3111952e7e02",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:440f16a3-cd81-9f87-e790-004be5aedb10",
  "kind": "theorem",
  "lexical_name": "jointFourierIntegrand_eq",
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
  "slug": "jointfourierintegrand-eq--47026edc25d7d73c59dace19",
  "source": {
    "blob": "9195805c3a64b0572ffb49ae24da758b0b905db2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 153,
    "line": 141,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/FourierDraft/Variantca717292568268f01f086e799291e2117f6ae8b8f619ec959ab253f722970178.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:47026edc25d7d73c59dace19fe970d3da746f6c4a951a9e6de8c14f204d0757e",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/FourierDraft/Variantca717292568268f01f086e799291e2117f6ae8b8f619ec959ab253f722970178.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:440f16a3-cd81-9f87-e790-004be5aedb10`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 141–153.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem jointFourierIntegrand_eq (A : ℝ) (s t : Finset ℕ) (c d : ℕ → ℝ) (ξ : ℝ) :
    jointFourierIntegrand A s t c d ξ =
      ∑ m ∈ s, ∑ n ∈ t, c m * d n *
        (Real.cos (ξ * (Real.log m + Real.log n)) * sourceFourierSquare A ξ) := by
  unfold jointFourierIntegrand
  rw [arithmeticPolynomial_real_product, Finset.sum_mul]
  apply Finset.sum_congr rfl
  intro m hm
  rw [Finset.sum_mul]
  apply Finset.sum_congr rfl
  intro n hn
  ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/FourierDraft/Variantca717292568268f01f086e799291e2117f6ae8b8f619ec959ab253f722970178.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/FourierDraft/Variantca717292568268f01f086e799291e2117f6ae8b8f619ec959ab253f722970178.lean#L141).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9195805c3a64b0572ffb49ae24da758b0b905db2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
