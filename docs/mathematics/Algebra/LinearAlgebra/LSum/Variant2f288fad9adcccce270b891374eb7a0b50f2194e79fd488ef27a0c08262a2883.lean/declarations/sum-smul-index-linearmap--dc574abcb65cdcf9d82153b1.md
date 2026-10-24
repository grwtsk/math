# sum_smul_index_linearMap'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e2ddcf9583cf21555ca01bd648488cdb56e37967",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 54,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2f/2f288fad9adcccce270b891374eb7a0b50f2194e79fd488ef27a0c08262a2883.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:82fe5305-83a4-8ab4-b080-48b531b22da8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:40d46eb0-3f2b-05c8-1e20-d6cf041989a8",
  "kind": "theorem",
  "lexical_name": "sum_smul_index_linearMap'",
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
  "slug": "sum-smul-index-linearmap--dc574abcb65cdcf9d82153b1",
  "source": {
    "blob": "e2ddcf9583cf21555ca01bd648488cdb56e37967",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 72,
    "line": 54,
    "path": "GRWTSK/Algebra/LinearAlgebra/LSum/Variant2f288fad9adcccce270b891374eb7a0b50f2194e79fd488ef27a0c08262a2883.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dc574abcb65cdcf9d82153b115cf5ac63d8555489cea6d3d30cdff6e02f36f9f",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/LSum/Variant2f288fad9adcccce270b891374eb7a0b50f2194e79fd488ef27a0c08262a2883.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:40d46eb0-3f2b-05c8-1e20-d6cf041989a8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 54–72.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sum_smul_index_linearMap' [Semiring R] [AddCommMonoid M] [Module R M] [AddCommMonoid M₂]
    [Module R M₂] {v : α →₀ M} {c : R} {h : α → M →ₗ[R] M₂} :
    ((c • v).sum fun a => h a) = c • v.sum fun a => h a :=
  sum_smul_index_semilinearMap'

end SMul

variable {α : Type*} {M N : Type*} {R R₂ : Type*} {S : Type*}
variable [Semiring R] [Semiring R₂] [Semiring S]
variable [AddCommMonoid M] [Module R M]
variable [AddCommMonoid N] [Module R₂ N]

variable {σ : R →+* R₂} {σ_inv : R₂ →+* R}

section CompatibleSMul

variable (R S M N ι : Type*)
variable [Semiring S] [AddCommMonoid M] [AddCommMonoid N] [Module S M] [Module S N]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/LSum/Variant2f288fad9adcccce270b891374eb7a0b50f2194e79fd488ef27a0c08262a2883.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/LSum/Variant2f288fad9adcccce270b891374eb7a0b50f2194e79fd488ef27a0c08262a2883.lean#L54).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e2ddcf9583cf21555ca01bd648488cdb56e37967` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
