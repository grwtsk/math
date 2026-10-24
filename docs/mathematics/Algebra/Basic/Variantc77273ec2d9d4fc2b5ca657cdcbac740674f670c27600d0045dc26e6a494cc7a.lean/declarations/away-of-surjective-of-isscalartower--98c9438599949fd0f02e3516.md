# Away.of_surjective_of_isScalarTower

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2a2b5b0b-4713-98d5-9b6b-e4c3af47b4c1",
  "kind": "lemma",
  "lexical_name": "Away.of_surjective_of_isScalarTower",
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
  "slug": "away-of-surjective-of-isscalartower--98c9438599949fd0f02e3516",
  "source": {
    "blob": "8ac0114b1e03d40f266eb5373f388d9ba55d7559",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 492,
    "line": 468,
    "path": "GRWTSK/Algebra/Basic/Variantc77273ec2d9d4fc2b5ca657cdcbac740674f670c27600d0045dc26e6a494cc7a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:98c9438599949fd0f02e3516d6816af5042beb5a61cd17c77a814fbfe95d61c6",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variantc77273ec2d9d4fc2b5ca657cdcbac740674f670c27600d0045dc26e6a494cc7a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2a2b5b0b-4713-98d5-9b6b-e4c3af47b4c1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 468–492.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Away.of_surjective_of_isScalarTower {R : Type*}
    [CommRing R] [Algebra R S] [Algebra R T] [IsScalarTower R S T]
    (h₁ : Function.Surjective (algebraMap S T))
    (h₂ : Function.Surjective (algebraMap R S))
    (r : R) (hr : IsUnit (algebraMap R T r))
    {n : ℕ} (hn : r ^ n • RingHom.ker (algebraMap R T) ≤ RingHom.ker (algebraMap R S)) :
    IsLocalization.Away (algebraMap R S r) T := by
  refine Away.of_surjective h₁ ?_ n ?_
  · rwa [← IsScalarTower.algebraMap_apply]
  · rw [← (RingHom.ker (algebraMap S T)).map_comap_of_surjective _ h₂, ← map_pow,
      ← Ideal.map_pointwise_smul, RingHom.comap_ker, ← IsScalarTower.algebraMap_eq]
    rwa [RingHom.ker_eq_comap_bot (algebraMap R S), ← Ideal.map_le_iff_le_comap] at hn

end

end IsLocalization

namespace Localization

open IsLocalization

variable {M}

/-- Given a map `f : R →+* S` and an element `r : R`, such that `f r` is invertible,
  we may construct a map `Rᵣ →+* S`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variantc77273ec2d9d4fc2b5ca657cdcbac740674f670c27600d0045dc26e6a494cc7a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variantc77273ec2d9d4fc2b5ca657cdcbac740674f670c27600d0045dc26e6a494cc7a.lean#L468).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8ac0114b1e03d40f266eb5373f388d9ba55d7559` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
