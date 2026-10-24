# iSupIndep_iff_linearIndependent_of_ne_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0bcc814745c5cb0e29c55623626bb5cdd1553bef",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 613,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8a/8afd84a6c36555db736efec79da2e787b49169aebbd14508bd7a470892a3e7a0.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4662a731-51ac-01b6-d229-4256e2e274ec",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:fa24e89b-4f34-984c-ec0b-1bb2c3002716",
  "kind": "theorem",
  "lexical_name": "iSupIndep_iff_linearIndependent_of_ne_zero",
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
  "slug": "isupindep-iff-linearindependent-of-ne-zero--ba86d343670737a939ca6d40",
  "source": {
    "blob": "0bcc814745c5cb0e29c55623626bb5cdd1553bef",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 647,
    "line": 613,
    "path": "GRWTSK/Algebra/LinearAlgebra/DFinsupp/Variant8afd84a6c36555db736efec79da2e787b49169aebbd14508bd7a470892a3e7a0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ba86d343670737a939ca6d4003a0bf138501e848cac0514f446b2a2926bfee9c",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/DFinsupp/Variant8afd84a6c36555db736efec79da2e787b49169aebbd14508bd7a470892a3e7a0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fa24e89b-4f34-984c-ec0b-1bb2c3002716`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 613–647.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem iSupIndep_iff_linearIndependent_of_ne_zero [NoZeroSMulDivisors R N] {ι} {v : ι → N}
    (h_ne_zero : ∀ i, v i ≠ 0) : (iSupIndep fun i => R ∙ v i) ↔ LinearIndependent R v :=
  let _ := Classical.decEq ι
  ⟨fun hv => hv.linearIndependent _ (fun i => Submodule.mem_span_singleton_self <| v i) h_ne_zero,
    fun hv => hv.iSupIndep_span_singleton⟩

@[deprecated (since := "2024-11-24")]
alias independent_iff_linearIndependent_of_ne_zero := iSupIndep_iff_linearIndependent_of_ne_zero

end Ring

namespace LinearMap

section AddCommMonoid

variable {R : Type*} {R₂ : Type*}
variable {M : Type*} {M₂ : Type*}
variable {ι : Type*}
variable [Semiring R] [Semiring R₂]
variable [AddCommMonoid M] [AddCommMonoid M₂]
variable {σ₁₂ : R →+* R₂}
variable [Module R M] [Module R₂ M₂]

open Submodule

section DFinsupp

open DFinsupp

variable {γ : ι → Type*} [DecidableEq ι]

section Sum

variable [∀ i, Zero (γ i)] [∀ (i) (x : γ i), Decidable (x ≠ 0)]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/DFinsupp/Variant8afd84a6c36555db736efec79da2e787b49169aebbd14508bd7a470892a3e7a0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/DFinsupp/Variant8afd84a6c36555db736efec79da2e787b49169aebbd14508bd7a470892a3e7a0.lean#L613).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0bcc814745c5cb0e29c55623626bb5cdd1553bef` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
