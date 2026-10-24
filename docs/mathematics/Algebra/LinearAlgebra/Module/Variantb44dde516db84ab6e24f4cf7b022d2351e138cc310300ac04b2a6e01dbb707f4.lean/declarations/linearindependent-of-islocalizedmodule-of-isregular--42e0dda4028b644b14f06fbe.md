# LinearIndependent.of_isLocalizedModule_of_isRegular

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4c3a34c4-80c6-73f5-0cec-8a5d9b4c4863",
  "kind": "theorem",
  "lexical_name": "LinearIndependent.of_isLocalizedModule_of_isRegular",
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
  "slug": "linearindependent-of-islocalizedmodule-of-isregular--42e0dda4028b644b14f06fbe",
  "source": {
    "blob": "09b5e8cab30508fdf264751d9cfa712277645a3d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 91,
    "line": 82,
    "path": "GRWTSK/Algebra/LinearAlgebra/Module/Variantb44dde516db84ab6e24f4cf7b022d2351e138cc310300ac04b2a6e01dbb707f4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:42e0dda4028b644b14f06fbe944d3ec81d923b80f415fb844d60d529fd26dcf0",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Module/Variantb44dde516db84ab6e24f4cf7b022d2351e138cc310300ac04b2a6e01dbb707f4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4c3a34c4-80c6-73f5-0cec-8a5d9b4c4863`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 82–91.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem LinearIndependent.of_isLocalizedModule_of_isRegular {ι : Type*} {v : ι → M}
    (hv : LinearIndependent R v) (h : ∀ s : S, IsRegular (s : R)) : LinearIndependent R (f ∘ v) :=
  hv.map_injOn _ <| by
    rw [← Finsupp.range_linearCombination]
    rintro _ ⟨_, r, rfl⟩ _ ⟨_, r', rfl⟩ eq
    congr; ext i
    have ⟨s, eq⟩ := IsLocalizedModule.exists_of_eq (S := S) eq
    simp_rw [Submonoid.smul_def, ← map_smul] at eq
    exact (h s).1 (DFunLike.congr_fun (hv eq) i)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Module/Variantb44dde516db84ab6e24f4cf7b022d2351e138cc310300ac04b2a6e01dbb707f4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Module/Variantb44dde516db84ab6e24f4cf7b022d2351e138cc310300ac04b2a6e01dbb707f4.lean#L82).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `09b5e8cab30508fdf264751d9cfa712277645a3d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
