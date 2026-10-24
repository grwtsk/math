# multiple_mem_adjoin_of_mem_localization_adjoin

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c8a5894b575792148826cccb1c3478652b2e96ba",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 121,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b1/b17655d054ede1ba9fd921ccd90ea9e995258294c6dc6e0d087c961b9c647149.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c9e02c80-7f30-b527-197c-3831d4c539ca",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9638b035-ae6f-1c3a-aa53-1cfe8c2bca04",
  "kind": "theorem",
  "lexical_name": "multiple_mem_adjoin_of_mem_localization_adjoin",
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
  "slug": "multiple-mem-adjoin-of-mem-localization-adjoin--880997545ace728337b48a2a",
  "source": {
    "blob": "c8a5894b575792148826cccb1c3478652b2e96ba",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 141,
    "line": 121,
    "path": "GRWTSK/Algebra/LinearAlgebra/Finiteness/Variantb17655d054ede1ba9fd921ccd90ea9e995258294c6dc6e0d087c961b9c647149.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:880997545ace728337b48a2ac5125b801ded87c4802db638711aa61b7c9b4ba2",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Finiteness/Variantb17655d054ede1ba9fd921ccd90ea9e995258294c6dc6e0d087c961b9c647149.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9638b035-ae6f-1c3a-aa53-1cfe8c2bca04`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 121–141.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem multiple_mem_adjoin_of_mem_localization_adjoin [Algebra R' S] [Algebra R S]
    [IsScalarTower R R' S] [IsLocalization M R'] (s : Set S) (x : S)
    (hx : x ∈ Algebra.adjoin R' s) : ∃ t : M, t • x ∈ Algebra.adjoin R s := by
  change ∃ t : M, t • x ∈ Subalgebra.toSubmodule (Algebra.adjoin R s)
  change x ∈ Subalgebra.toSubmodule (Algebra.adjoin R' s) at hx
  simp_rw [Algebra.adjoin_eq_span] at hx ⊢
  exact multiple_mem_span_of_mem_localization_span M R' _ _ hx

end

namespace Module.Finite

section

variable {R : Type u} [CommSemiring R] (S : Submonoid R)
variable {Rₚ : Type v} [CommSemiring Rₚ] [Algebra R Rₚ] [IsLocalization S Rₚ]
variable {M : Type w} [AddCommMonoid M] [Module R M]
variable {Mₚ : Type t} [AddCommMonoid Mₚ] [Module R Mₚ] [Module Rₚ Mₚ] [IsScalarTower R Rₚ Mₚ]
variable (f : M →ₗ[R] Mₚ) [IsLocalizedModule S f]

set_option backward.isDefEq.respectTransparency false in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Finiteness/Variantb17655d054ede1ba9fd921ccd90ea9e995258294c6dc6e0d087c961b9c647149.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Finiteness/Variantb17655d054ede1ba9fd921ccd90ea9e995258294c6dc6e0d087c961b9c647149.lean#L121).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c8a5894b575792148826cccb1c3478652b2e96ba` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
