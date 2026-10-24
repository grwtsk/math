# isSMulRegular_on_quot_iff_smul_mem_implies_mem

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
      "line": 101,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3a/3a870375661169fef2750bb0afffe044c61932fd3d9d0f2fe6f05a858edc9fa4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:46f03dd5-f977-2290-02a0-4f9848be2cb6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b01452d3-57e3-2e1b-65be-fc57c7b01bb3",
  "kind": "lemma",
  "lexical_name": "isSMulRegular_on_quot_iff_smul_mem_implies_mem",
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
  "slug": "issmulregular-on-quot-iff-smul-mem-implies-mem--93561699da4cfdea69f10c3f",
  "source": {
    "blob": "e3289d8a618354aafa6dc0363c08b40d3a15db7e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 108,
    "line": 101,
    "path": "GRWTSK/Algebra/LinearAlgebra/IsSMulRegular/Variant3a870375661169fef2750bb0afffe044c61932fd3d9d0f2fe6f05a858edc9fa4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:93561699da4cfdea69f10c3f28be0c3ebce84e1b5cefbf81ec0ad3890c0f1f44",
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

Occurrence: `result:b01452d3-57e3-2e1b-65be-fc57c7b01bb3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 101–108.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isSMulRegular_on_quot_iff_smul_mem_implies_mem :
    IsSMulRegular (M ⧸ N) r ↔ ∀ x : M, r • x ∈ N → x ∈ N :=
  Iff.trans (isSMulRegular_iff_smul_eq_zero_imp_eq_zero _ r) <|
    Iff.trans N.mkQ_surjective.forall <| by
      simp_rw [← map_smul, N.mkQ_apply, Submodule.Quotient.mk_eq_zero]

variable {N r}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/IsSMulRegular/Variant3a870375661169fef2750bb0afffe044c61932fd3d9d0f2fe6f05a858edc9fa4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/IsSMulRegular/Variant3a870375661169fef2750bb0afffe044c61932fd3d9d0f2fe6f05a858edc9fa4.lean#L101).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e3289d8a618354aafa6dc0363c08b40d3a15db7e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
