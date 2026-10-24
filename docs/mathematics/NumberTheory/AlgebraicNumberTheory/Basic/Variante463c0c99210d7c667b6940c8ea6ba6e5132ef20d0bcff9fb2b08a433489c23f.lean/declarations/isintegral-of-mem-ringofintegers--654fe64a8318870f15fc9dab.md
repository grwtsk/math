# isIntegral_of_mem_ringOfIntegers

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "22dbbacde8046d5b20475335eb6e0c73e44dafaf",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 75,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e4/e463c0c99210d7c667b6940c8ea6ba6e5132ef20d0bcff9fb2b08a433489c23f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3dd45ef7-e92f-6c4e-5705-1477579ecef6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:afe66ca1-fdbf-4fe1-beb1-140830db2320",
  "kind": "theorem",
  "lexical_name": "isIntegral_of_mem_ringOfIntegers",
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
  "slug": "isintegral-of-mem-ringofintegers--654fe64a8318870f15fc9dab",
  "source": {
    "blob": "22dbbacde8046d5b20475335eb6e0c73e44dafaf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 83,
    "line": 75,
    "path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/Basic/Variante463c0c99210d7c667b6940c8ea6ba6e5132ef20d0bcff9fb2b08a433489c23f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:654fe64a8318870f15fc9dab5d0c9bef3c99622d107404a28d1ec6e44124a803",
  "verification": {
    "reference": "docs/verification/NumberTheory/AlgebraicNumberTheory/Basic/Variante463c0c99210d7c667b6940c8ea6ba6e5132ef20d0bcff9fb2b08a433489c23f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:afe66ca1-fdbf-4fe1-beb1-140830db2320`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 75–83.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isIntegral_of_mem_ringOfIntegers {K : Type*} [Field K] {x : K} (hx : x ∈ 𝓞 K) :
    IsIntegral ℤ (⟨x, hx⟩ : 𝓞 K) := by
  obtain ⟨P, hPm, hP⟩ := hx
  refine' ⟨P, hPm, _⟩
  rw [← Polynomial.aeval_def, ← Subalgebra.coe_eq_zero, Polynomial.aeval_subalgebra_coe,
    Polynomial.aeval_def, Subtype.coe_mk, hP]
#align number_field.is_integral_of_mem_ring_of_integers NumberField.isIntegral_of_mem_ringOfIntegers

/-- Given an algebra between two fields, create an algebra between their two rings of integers. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AlgebraicNumberTheory/Basic/Variante463c0c99210d7c667b6940c8ea6ba6e5132ef20d0bcff9fb2b08a433489c23f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AlgebraicNumberTheory/Basic/Variante463c0c99210d7c667b6940c8ea6ba6e5132ef20d0bcff9fb2b08a433489c23f.lean#L75).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `22dbbacde8046d5b20475335eb6e0c73e44dafaf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
