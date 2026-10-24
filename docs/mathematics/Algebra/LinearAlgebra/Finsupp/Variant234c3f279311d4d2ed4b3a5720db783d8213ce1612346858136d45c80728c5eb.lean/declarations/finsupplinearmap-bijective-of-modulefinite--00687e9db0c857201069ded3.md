# finsuppLinearMap_bijective_of_moduleFinite

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5f6c46c6-a2c5-35a3-136c-66e7fcf01bde",
  "kind": "theorem",
  "lexical_name": "finsuppLinearMap_bijective_of_moduleFinite",
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
  "slug": "finsupplinearmap-bijective-of-modulefinite--00687e9db0c857201069ded3",
  "source": {
    "blob": "8612c795098e73760be678c9fb31e99cdb25959a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 61,
    "line": 54,
    "path": "GRWTSK/Algebra/LinearAlgebra/Finsupp/Variant234c3f279311d4d2ed4b3a5720db783d8213ce1612346858136d45c80728c5eb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:00687e9db0c857201069ded382191243a20bedb2794f7c55ad2bd91d7c3c0828",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Finsupp/Variant234c3f279311d4d2ed4b3a5720db783d8213ce1612346858136d45c80728c5eb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5f6c46c6-a2c5-35a3-136c-66e7fcf01bde`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 54–61.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finsuppLinearMap_bijective_of_moduleFinite [Module.Finite R M] :
    Function.Bijective (finsuppLinearMap S : (ι →₀ M →ₗ[R] N) → M →ₗ[R] ι →₀ N) := by
  have ⟨s, span_s⟩ := Module.finite_def.mp ‹Module.Finite R M›
  classical refine ⟨finsuppLinearMap_injective ..,
    fun x ↦ ⟨.onFinset (s.sup fun m ↦ (x m).support) (lapply · ∘ₗ x) fun i h ↦ ?_, ?_⟩⟩
  · contrapose! h; exact LinearMap.ext_on span_s (by simpa using! h)
  · ext; rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Finsupp/Variant234c3f279311d4d2ed4b3a5720db783d8213ce1612346858136d45c80728c5eb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Finsupp/Variant234c3f279311d4d2ed4b3a5720db783d8213ce1612346858136d45c80728c5eb.lean#L54).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8612c795098e73760be678c9fb31e99cdb25959a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
