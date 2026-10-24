# map_surjective_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e5b9d051-53d8-8dd4-7dde-9afc7ed2ba6c",
  "kind": "lemma",
  "lexical_name": "map_surjective_iff",
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
  "slug": "map-surjective-iff--59f413b24901b4226a670bf0",
  "source": {
    "blob": "8ac0114b1e03d40f266eb5373f388d9ba55d7559",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 249,
    "line": 231,
    "path": "GRWTSK/Algebra/Basic/Variantc77273ec2d9d4fc2b5ca657cdcbac740674f670c27600d0045dc26e6a494cc7a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:59f413b24901b4226a670bf0a764458008eea7e1c758a1fb309bb5d749e29992",
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

Occurrence: `result:e5b9d051-53d8-8dd4-7dde-9afc7ed2ba6c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 231–249.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma map_surjective_iff (f : R →+* P) (r : R) [IsLocalization.Away r S]
    [IsLocalization.Away (f r) Q] :
    Function.Surjective (map S Q f r) ↔ ∀ a, ∃ b m, f b = f r ^ m * a := by
  trans ∀ a n, ∃ b m k, f (r ^ (k + n) * b) = f r ^ (k + m) * a
  · simp [Function.Surjective, (IsLocalization.mk'_surjective (.powers (f r))).forall, ← map_pow,
      (IsLocalization.mk'_surjective (.powers r)).exists, Submonoid.mem_powers_iff, pow_add,
      IsLocalization.Away.map, IsLocalization.map_mk', ← mul_assoc,
      IsLocalization.mk'_eq_iff_eq, ← map_mul, IsLocalization.eq_iff_exists (.powers (f r))]
  · refine ⟨fun H x ↦ ⟨_, _, (H x 0).choose_spec.choose_spec.choose_spec⟩, fun H a n ↦ ?_⟩
    obtain ⟨b, m, e⟩ := H a
    exact ⟨b, n + m, 0, by simp [e, pow_add]; ring_nf⟩

section Algebra

variable {A : Type*} [CommSemiring A] [Algebra R A]
variable {B : Type*} [CommSemiring B] [Algebra R B]
variable (Aₚ : Type*) [CommSemiring Aₚ] [Algebra A Aₚ] [Algebra R Aₚ] [IsScalarTower R A Aₚ]
variable (Bₚ : Type*) [CommSemiring Bₚ] [Algebra B Bₚ] [Algebra R Bₚ] [IsScalarTower R B Bₚ]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variantc77273ec2d9d4fc2b5ca657cdcbac740674f670c27600d0045dc26e6a494cc7a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variantc77273ec2d9d4fc2b5ca657cdcbac740674f670c27600d0045dc26e6a494cc7a.lean#L231).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8ac0114b1e03d40f266eb5373f388d9ba55d7559` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
