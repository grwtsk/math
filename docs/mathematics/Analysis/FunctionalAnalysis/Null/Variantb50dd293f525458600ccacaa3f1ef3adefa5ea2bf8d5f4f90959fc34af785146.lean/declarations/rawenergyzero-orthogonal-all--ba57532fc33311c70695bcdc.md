# rawEnergyZero_orthogonal_all

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "cd997ebd2e8cb488a832ad77f2c518ea1cdd7a6d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 23,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b5/b50dd293f525458600ccacaa3f1ef3adefa5ea2bf8d5f4f90959fc34af785146.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b746b59b-6307-d27e-4a8a-e4f481d3c19a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f973b03a-4e74-e4ca-4cc7-29cc1acb515f",
  "kind": "theorem",
  "lexical_name": "rawEnergyZero_orthogonal_all",
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
  "slug": "rawenergyzero-orthogonal-all--ba57532fc33311c70695bcdc",
  "source": {
    "blob": "cd997ebd2e8cb488a832ad77f2c518ea1cdd7a6d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 33,
    "line": 23,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/Null/Variantb50dd293f525458600ccacaa3f1ef3adefa5ea2bf8d5f4f90959fc34af785146.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ba57532fc33311c70695bcdc90e3379bacce5461adc9bd45f286b32abf3aa35b",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/Null/Variantb50dd293f525458600ccacaa3f1ef3adefa5ea2bf8d5f4f90959fc34af785146.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f973b03a-4e74-e4ca-4cc7-29cc1acb515f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 23–33.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem rawEnergyZero_orthogonal_all
    {f : Raw kernel}
    (hf : Raw.inner kernel f f = 0)
    (g : Raw kernel) :
    Raw.inner kernel f g = 0 := by
  have bound := Raw.kernel_cauchy_schwarz kernel f g
  rw [Raw.seminorm, hf] at bound
  simp only [Complex.zero_re, Real.sqrt_zero, zero_mul] at bound
  exact norm_eq_zero.mp (le_antisymm bound (norm_nonneg _))

/-- The radical of the raw positive-semidefinite kernel form. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/Null/Variantb50dd293f525458600ccacaa3f1ef3adefa5ea2bf8d5f4f90959fc34af785146.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/Null/Variantb50dd293f525458600ccacaa3f1ef3adefa5ea2bf8d5f4f90959fc34af785146.lean#L23).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cd997ebd2e8cb488a832ad77f2c518ea1cdd7a6d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
