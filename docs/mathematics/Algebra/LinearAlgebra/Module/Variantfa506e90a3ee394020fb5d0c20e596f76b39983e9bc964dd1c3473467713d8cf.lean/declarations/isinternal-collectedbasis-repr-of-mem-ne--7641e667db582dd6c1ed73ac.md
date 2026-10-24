# IsInternal.collectedBasis_repr_of_mem_ne

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f37c6ae1-69a3-2344-f913-a175fb463cfc",
  "kind": "theorem",
  "lexical_name": "IsInternal.collectedBasis_repr_of_mem_ne",
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
  "slug": "isinternal-collectedbasis-repr-of-mem-ne--7641e667db582dd6c1ed73ac",
  "source": {
    "blob": "4a18004256606e6d84cc164c3bf2b853a3048d52",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 501,
    "line": 493,
    "path": "GRWTSK/Algebra/LinearAlgebra/Module/Variantfa506e90a3ee394020fb5d0c20e596f76b39983e9bc964dd1c3473467713d8cf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7641e667db582dd6c1ed73acfffefbb688952196d8d4e211a469adcefeca1bb9",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Module/Variantfa506e90a3ee394020fb5d0c20e596f76b39983e9bc964dd1c3473467713d8cf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f37c6ae1-69a3-2344-f913-a175fb463cfc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 493–501.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsInternal.collectedBasis_repr_of_mem_ne (h : IsInternal A) {α : ι → Type*}
    (v : ∀ i, Basis (α i) R (A i)) {x : M} {i j : ι} (hij : i ≠ j) {a : α j} (hx : x ∈ A i) :
    (h.collectedBasis v).repr x ⟨j, a⟩ = 0 := by
  change (sigmaFinsuppLequivDFinsupp R).symm (DFinsupp.mapRange _ (fun i ↦ map_zero _) _) _ = _
  simp [h.ofBijective_coeLinearMap_of_mem_ne hij hx]

/-- When indexed by only two distinct elements, `DirectSum.IsInternal` implies
the two submodules are complementary. Over a `Ring R`, this is true as an iff, as
`DirectSum.isInternal_submodule_iff_isCompl`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Module/Variantfa506e90a3ee394020fb5d0c20e596f76b39983e9bc964dd1c3473467713d8cf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Module/Variantfa506e90a3ee394020fb5d0c20e596f76b39983e9bc964dd1c3473467713d8cf.lean#L493).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4a18004256606e6d84cc164c3bf2b853a3048d52` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
