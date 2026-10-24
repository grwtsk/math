# isCompl_span_singleton_of_isCoatom_of_notMem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fde45cf7-b209-0fa0-66b8-062df5d3eaab",
  "kind": "lemma",
  "lexical_name": "isCompl_span_singleton_of_isCoatom_of_notMem",
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
  "slug": "iscompl-span-singleton-of-iscoatom-of-notmem--92aca286d1a9fa003cd3b048",
  "source": {
    "blob": "5d128fb58c9f480cc3665978b0329ac22edfe3ad",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 626,
    "line": 602,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant29abf59a892e9c7c73bd0266a8300465052c565290f158d621bc097803f5bde9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:92aca286d1a9fa003cd3b0485db31f714268e21311cfa965b36d459e6d07b6be",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variant29abf59a892e9c7c73bd0266a8300465052c565290f158d621bc097803f5bde9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fde45cf7-b209-0fa0-66b8-062df5d3eaab`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 602–626.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isCompl_span_singleton_of_isCoatom_of_notMem (hs : IsCoatom s) (hx : x ∉ s) :
    IsCompl s (K ∙ x) := by
  refine ⟨disjoint_span_singleton_of_notMem hx, ?_⟩
  rw [← covBy_top_iff] at hs
  simpa only [codisjoint_iff, sup_comm, not_lt_top_iff] using hs.2 (covBy_span_singleton_sup hx).1

@[deprecated (since := "2025-05-23")]
alias isCompl_span_singleton_of_isCoatom_of_not_mem := isCompl_span_singleton_of_isCoatom_of_notMem

end DivisionRing

end Submodule

namespace LinearMap

open Submodule Function

section AddCommGroup

variable [Semiring R] [Semiring R₂]
variable [AddCommGroup M] [AddCommGroup M₂]
variable [Module R M] [Module R₂ M₂]
variable {τ₁₂ : R →+* R₂} [RingHomSurjective τ₁₂]
variable {F : Type*} [FunLike F M M₂] [SemilinearMapClass F τ₁₂ M M₂]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variant29abf59a892e9c7c73bd0266a8300465052c565290f158d621bc097803f5bde9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variant29abf59a892e9c7c73bd0266a8300465052c565290f158d621bc097803f5bde9.lean#L602).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5d128fb58c9f480cc3665978b0329ac22edfe3ad` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
