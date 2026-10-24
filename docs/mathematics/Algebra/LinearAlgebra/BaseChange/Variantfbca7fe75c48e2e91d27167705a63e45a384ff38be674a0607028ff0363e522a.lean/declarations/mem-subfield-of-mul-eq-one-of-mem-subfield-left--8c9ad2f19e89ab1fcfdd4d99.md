# mem_subfield_of_mul_eq_one_of_mem_subfield_left

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:931f4cc1-e61f-dfb7-97d5-05aeb56b80ca",
  "kind": "lemma",
  "lexical_name": "mem_subfield_of_mul_eq_one_of_mem_subfield_left",
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
  "slug": "mem-subfield-of-mul-eq-one-of-mem-subfield-left--8c9ad2f19e89ab1fcfdd4d99",
  "source": {
    "blob": "4f0471e5c35b7072aedc670118cd6a3a93a19c2a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 67,
    "line": 59,
    "path": "GRWTSK/Algebra/LinearAlgebra/BaseChange/Variantfbca7fe75c48e2e91d27167705a63e45a384ff38be674a0607028ff0363e522a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8c9ad2f19e89ab1fcfdd4d99b7234de07b549a6ca1e3dcd64a9a576077cba313",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/BaseChange/Variantfbca7fe75c48e2e91d27167705a63e45a384ff38be674a0607028ff0363e522a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:931f4cc1-e61f-dfb7-97d5-05aeb56b80ca`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 59–67.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma mem_subfield_of_mul_eq_one_of_mem_subfield_left
    (h_mem : ∀ i j, B i j ∈ K) (i : m) (j : n) :
    A i j ∈ K := by
  replace hAB : Bᵀ * Aᵀ = 1 := by simpa using congr_arg transpose hAB
  rw [← A.transpose_apply]
  simp_rw [← B.transpose_apply] at h_mem
  exact mem_subfield_of_mul_eq_one_of_mem_subfield_right e K hAB (fun i j ↦ h_mem j i) j i

end Matrix
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/BaseChange/Variantfbca7fe75c48e2e91d27167705a63e45a384ff38be674a0607028ff0363e522a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/BaseChange/Variantfbca7fe75c48e2e91d27167705a63e45a384ff38be674a0607028ff0363e522a.lean#L59).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4f0471e5c35b7072aedc670118cd6a3a93a19c2a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
