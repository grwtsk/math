# tensor_defined_over_finiteGalois

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:09865b7a-59a9-aa1f-b779-29344f3b6950",
  "kind": "theorem",
  "lexical_name": "tensor_defined_over_finiteGalois",
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
  "slug": "tensor-defined-over-finitegalois--92ec59199418c575b46bd761",
  "source": {
    "blob": "e0751d298fefe79f8a5fc987922f18ec5b22fb35",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 95,
    "line": 79,
    "path": "GRWTSK/LinearAlgebra/TensorProduct/GaloisScalarDescent.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:92ec59199418c575b46bd761717ec3008bb2e7b3b1d924fd764822a7e317a597",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/TensorProduct/GaloisScalarDescent.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:09865b7a-59a9-aa1f-b779-29344f3b6950`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 79–95.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tensor_defined_over_finiteGalois (t : K ⊗[k] V) :
    ∃ (L : FiniteGaloisIntermediateField k K) (u : L ⊗[k] V),
      coefficientInclusion u = t := by
  classical
  obtain ⟨s, hs⟩ := TensorProduct.exists_finset t
  let L := FiniteGaloisIntermediateField.adjoin
    k (↑(s.image Prod.fst) : Set K)
  have hmem (a : ↥s) : a.val.1 ∈ L.toIntermediateField := by
    exact FiniteGaloisIntermediateField.subset_adjoin k _
      (Finset.mem_image.mpr ⟨a.val, a.property, rfl⟩)
  refine ⟨L,
    ∑ a : ↥s, (⟨a.val.1, hmem a⟩ : L) ⊗ₜ[k] a.val.2,
    ?_⟩
  simpa [coefficientInclusion, ← hs] using
    (Finset.sum_attach s
      (fun a : K × V => a.1 ⊗ₜ[k] a.2))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/TensorProduct/GaloisScalarDescent.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/LinearAlgebra/TensorProduct/GaloisScalarDescent.lean#L79).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e0751d298fefe79f8a5fc987922f18ec5b22fb35` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
