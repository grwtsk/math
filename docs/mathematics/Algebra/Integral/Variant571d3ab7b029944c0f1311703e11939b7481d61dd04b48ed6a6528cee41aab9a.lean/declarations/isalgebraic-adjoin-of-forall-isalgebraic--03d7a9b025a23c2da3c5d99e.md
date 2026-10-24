# IsAlgebraic.adjoin_of_forall_isAlgebraic

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:13300e7a-f39b-3fac-71da-bc7a072556d3",
  "kind": "theorem",
  "lexical_name": "IsAlgebraic.adjoin_of_forall_isAlgebraic",
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
  "slug": "isalgebraic-adjoin-of-forall-isalgebraic--03d7a9b025a23c2da3c5d99e",
  "source": {
    "blob": "cca6655112d4a938c47e8076287e10b113b1edb9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 470,
    "line": 443,
    "path": "GRWTSK/Algebra/Integral/Variant571d3ab7b029944c0f1311703e11939b7481d61dd04b48ed6a6528cee41aab9a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:03d7a9b025a23c2da3c5d99edbf37161c5d1fd0726bfa150c579a6cf22f21264",
  "verification": {
    "reference": "docs/verification/Algebra/Integral/Variant571d3ab7b029944c0f1311703e11939b7481d61dd04b48ed6a6528cee41aab9a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:13300e7a-f39b-3fac-71da-bc7a072556d3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 443–470.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsAlgebraic.adjoin_of_forall_isAlgebraic [NoZeroDivisors S] {s t : Set S}
    (alg : ∀ x ∈ s \ t, IsAlgebraic (adjoin R t) x) {a : A}
    (ha : IsAlgebraic (adjoin R s) a) : IsAlgebraic (adjoin R t) a := by
  set Rs := adjoin R s
  set Rt := adjoin R t
  let Rts := adjoin Rt s
  let _ : Algebra Rs Rts := (Subalgebra.inclusion
    (T := Rts.restrictScalars R) <| adjoin_le <| by apply subset_adjoin).toAlgebra
  have : IsScalarTower Rs Rts A := .of_algebraMap_eq fun ⟨a, _⟩ ↦ rfl
  have : Algebra.IsAlgebraic Rt Rts := by
    have := ha.nontrivial
    have := Subtype.val_injective (p := (· ∈ Rs)).nontrivial
    have := (isDomain_iff_noZeroDivisors_and_nontrivial Rt).mpr ⟨inferInstance, inferInstance⟩
    rw [← Subalgebra.isAlgebraic_iff, isAlgebraic_adjoin_iff]
    intro x hs
    by_cases ht : x ∈ t
    · exact isAlgebraic_algebraMap (⟨x, subset_adjoin ht⟩ : Rt)
    exact alg _ ⟨hs, ht⟩
  have : IsAlgebraic Rts a := ha.extendScalars (by apply Subalgebra.inclusion_injective)
  exact this.restrictScalars Rt

namespace Transcendental

section

variable (S) [NoZeroDivisors S] {a : A} (ha : Transcendental R a)
include ha

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Integral/Variant571d3ab7b029944c0f1311703e11939b7481d61dd04b48ed6a6528cee41aab9a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Integral/Variant571d3ab7b029944c0f1311703e11939b7481d61dd04b48ed6a6528cee41aab9a.lean#L443).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cca6655112d4a938c47e8076287e10b113b1edb9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
