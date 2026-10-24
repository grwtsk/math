# IsTranscendenceBasis.mvPolynomial

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "719787d3972b07cbf7379dc9c356934a648993d4",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 169,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3a/3a751df10e6be745855791161d569d4686ec0d66e99039afa06ee045179df056.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:82c0e91f-5f4f-be5f-6c96-6df4f1d9ffc6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0e2638fd-f4b5-5596-0aa0-e4f4847b4e2e",
  "kind": "theorem",
  "lexical_name": "IsTranscendenceBasis.mvPolynomial",
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
  "slug": "istranscendencebasis-mvpolynomial--a6a2fa31fc444d8ff947b0d6",
  "source": {
    "blob": "719787d3972b07cbf7379dc9c356934a648993d4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 176,
    "line": 169,
    "path": "GRWTSK/Algebra/TranscendenceBasis/Variant3a751df10e6be745855791161d569d4686ec0d66e99039afa06ee045179df056.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a6a2fa31fc444d8ff947b0d61833c6495c35e92d9099086e717c7e8b101012b9",
  "verification": {
    "reference": "docs/verification/Algebra/TranscendenceBasis/Variant3a751df10e6be745855791161d569d4686ec0d66e99039afa06ee045179df056.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0e2638fd-f4b5-5596-0aa0-e4f4847b4e2e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 169–176.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsTranscendenceBasis.mvPolynomial [Nontrivial R] :
    IsTranscendenceBasis R (X (R := R) (σ := ι)) := by
  refine isTranscendenceBasis_iff_algebraicIndependent_isAlgebraic.2 ⟨algebraicIndependent_X .., ?_⟩
  rw [adjoin_range_X]
  set A := MvPolynomial ι R
  have := Algebra.isIntegral_of_surjective (R := (⊤ : Subalgebra R A)) (B := A) (⟨⟨·, ⟨⟩⟩, rfl⟩)
  infer_instance

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/TranscendenceBasis/Variant3a751df10e6be745855791161d569d4686ec0d66e99039afa06ee045179df056.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/TranscendenceBasis/Variant3a751df10e6be745855791161d569d4686ec0d66e99039afa06ee045179df056.lean#L169).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `719787d3972b07cbf7379dc9c356934a648993d4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
