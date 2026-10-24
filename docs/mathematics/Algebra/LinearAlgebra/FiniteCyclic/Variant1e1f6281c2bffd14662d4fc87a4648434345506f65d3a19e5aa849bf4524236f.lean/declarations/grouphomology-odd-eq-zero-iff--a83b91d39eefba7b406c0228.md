# groupHomologyπOdd_eq_zero_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "72c64f3139a077ea24b44d9f319cbafe02fe215e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 139,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1e/1e1f6281c2bffd14662d4fc87a4648434345506f65d3a19e5aa849bf4524236f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1d37aa2f-a2d4-6089-e866-f3cf5e233efd",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8a719e58-eb5b-a36e-7c95-15b658ca1cfd",
  "kind": "lemma",
  "lexical_name": "groupHomologyπOdd_eq_zero_iff",
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
  "slug": "grouphomology-odd-eq-zero-iff--a83b91d39eefba7b406c0228",
  "source": {
    "blob": "72c64f3139a077ea24b44d9f319cbafe02fe215e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 144,
    "line": 139,
    "path": "GRWTSK/Algebra/LinearAlgebra/FiniteCyclic/Variant1e1f6281c2bffd14662d4fc87a4648434345506f65d3a19e5aa849bf4524236f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a83b91d39eefba7b406c022882657e1e606726b2a7e8a969712b5efd8a3a7f1e",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/FiniteCyclic/Variant1e1f6281c2bffd14662d4fc87a4648434345506f65d3a19e5aa849bf4524236f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8a719e58-eb5b-a36e-7c95-15b658ca1cfd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 139–144.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma groupHomologyπOdd_eq_zero_iff (hg : ∀ x, x ∈ Subgroup.zpowers g)
    (i : ℕ) (hi : Odd i) (x : LinearMap.ker (applyAsHom A g - 𝟙 A).hom.toLinearMap) :
    groupHomologyπOdd A g hg i hi x = 0 ↔ x.1 ∈ LinearMap.range A.ρ.norm := by
  simp [groupHomologyπOdd, map_eq_zero_iff _ ((ModuleCat.mono_iff_injective _).1 inferInstance),
    ShortComplex.moduleCatToCycles, -LinearMap.mem_range, Rep.norm, LinearMap.range_codRestrict]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/FiniteCyclic/Variant1e1f6281c2bffd14662d4fc87a4648434345506f65d3a19e5aa849bf4524236f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/FiniteCyclic/Variant1e1f6281c2bffd14662d4fc87a4648434345506f65d3a19e5aa849bf4524236f.lean#L139).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `72c64f3139a077ea24b44d9f319cbafe02fe215e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
