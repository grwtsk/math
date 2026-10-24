# isSMulRegular_of_range_eq_ker

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e3289d8a618354aafa6dc0363c08b40d3a15db7e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 115,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3a/3a870375661169fef2750bb0afffe044c61932fd3d9d0f2fe6f05a858edc9fa4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2654c1b5-b965-7c08-07b7-0b539428fc13",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:131ade84-92b3-65a2-2cc5-d48abf4f05af",
  "kind": "lemma",
  "lexical_name": "isSMulRegular_of_range_eq_ker",
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
  "slug": "issmulregular-of-range-eq-ker--0c08029065d370c7d5265417",
  "source": {
    "blob": "e3289d8a618354aafa6dc0363c08b40d3a15db7e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 125,
    "line": 115,
    "path": "GRWTSK/Algebra/LinearAlgebra/IsSMulRegular/Variant3a870375661169fef2750bb0afffe044c61932fd3d9d0f2fe6f05a858edc9fa4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0c08029065d370c7d5265417e937f44b24d167711b4544d1291daf5de68a6970",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/IsSMulRegular/Variant3a870375661169fef2750bb0afffe044c61932fd3d9d0f2fe6f05a858edc9fa4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:131ade84-92b3-65a2-2cc5-d48abf4f05af`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 115–125.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isSMulRegular_of_range_eq_ker {f : M →ₗ[R] M'} {g : M' →ₗ[R] M''}
    (hf : Function.Injective f) (hfg : LinearMap.range f = LinearMap.ker g)
    (h1 : IsSMulRegular M r) (h2 : IsSMulRegular M'' r) :
    IsSMulRegular M' r := by
  refine isSMulRegular_of_smul_eq_zero_imp_eq_zero ?_
  intro x hx
  obtain ⟨y, ⟨⟩⟩ := (congrArg (x ∈ ·) hfg).mpr <| h2.eq_zero_of_smul_eq_zero <|
    Eq.trans (g.map_smul r x).symm <| Eq.trans (congrArg _ hx) g.map_zero
  refine Eq.trans (congrArg f (h1.eq_zero_of_smul_eq_zero ?_)) f.map_zero
  exact hf <| Eq.trans (f.map_smul r y) <| Eq.trans hx f.map_zero.symm

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/IsSMulRegular/Variant3a870375661169fef2750bb0afffe044c61932fd3d9d0f2fe6f05a858edc9fa4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/IsSMulRegular/Variant3a870375661169fef2750bb0afffe044c61932fd3d9d0f2fe6f05a858edc9fa4.lean#L115).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e3289d8a618354aafa6dc0363c08b40d3a15db7e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
