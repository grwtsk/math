# homogeneous_mulVec_origin_mem_zeroLocus

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1a38b90e-92db-7437-6a1e-3a04b5bd1bf2",
  "kind": "theorem",
  "lexical_name": "homogeneous_mulVec_origin_mem_zeroLocus",
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
  "slug": "homogeneous-mulvec-origin-mem-zerolocus--a470b6f96142c9377cfb173c",
  "source": {
    "blob": "79f0825f2a5a5b9e0c6ce92320d0de5286d7b618",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 186,
    "line": 177,
    "path": "GRWTSK/Algebra/LinearAlgebra/HomogeneousLinearIdeal/Variante764e4f54c45b9f48f675343900cf70e202ff51c5720d7b922c7afbd7ab5ebfd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a470b6f96142c9377cfb173c6f1baf10debc84941276871b3e8398632b7a15d8",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/HomogeneousLinearIdeal/Variante764e4f54c45b9f48f675343900cf70e202ff51c5720d7b922c7afbd7ab5ebfd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1a38b90e-92db-7437-6a1e-3a04b5bd1bf2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 177–186.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem homogeneous_mulVec_origin_mem_zeroLocus {α σ : Type*} [Fintype σ]
    (L : Matrix α σ K) :
    (0 : σ → K) ∈ MvPolynomial.zeroLocus K
      (Ideal.span (Set.range ((L.map (MvPolynomial.C : K →+* MvPolynomial σ K)).mulVec
        MvPolynomial.X))) := by
  rw [MvPolynomial.zeroLocus_span]
  rintro _ ⟨i, rfl⟩
  simp [Matrix.mulVec, dotProduct]

end FormalResearch.PositiveAtlas
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/HomogeneousLinearIdeal/Variante764e4f54c45b9f48f675343900cf70e202ff51c5720d7b922c7afbd7ab5ebfd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/HomogeneousLinearIdeal/Variante764e4f54c45b9f48f675343900cf70e202ff51c5720d7b922c7afbd7ab5ebfd.lean#L177).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `79f0825f2a5a5b9e0c6ce92320d0de5286d7b618` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
