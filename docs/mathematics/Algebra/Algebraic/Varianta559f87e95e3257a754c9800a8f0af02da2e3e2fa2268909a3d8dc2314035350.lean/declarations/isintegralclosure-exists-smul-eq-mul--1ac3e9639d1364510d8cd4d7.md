# IsIntegralClosure.exists_smul_eq_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "018a1223267835ca45d23b5cc9f0b3125ebd3006",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 350,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a5/a559f87e95e3257a754c9800a8f0af02da2e3e2fa2268909a3d8dc2314035350.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:35cacf20-a439-cdc9-614b-fa61bf1e075a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:bca1c9a5-bbd8-a6ed-4500-75edde19f1cc",
  "kind": "theorem",
  "lexical_name": "IsIntegralClosure.exists_smul_eq_mul",
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
  "slug": "isintegralclosure-exists-smul-eq-mul--1ac3e9639d1364510d8cd4d7",
  "source": {
    "blob": "018a1223267835ca45d23b5cc9f0b3125ebd3006",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 368,
    "line": 350,
    "path": "GRWTSK/Algebra/Algebraic/Varianta559f87e95e3257a754c9800a8f0af02da2e3e2fa2268909a3d8dc2314035350.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1ac3e9639d1364510d8cd4d79f7cfbba95d8d759cb642d67c93e59cbd6135358",
  "verification": {
    "reference": "docs/verification/Algebra/Algebraic/Varianta559f87e95e3257a754c9800a8f0af02da2e3e2fa2268909a3d8dc2314035350.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bca1c9a5-bbd8-a6ed-4500-75edde19f1cc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 350–368.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsIntegralClosure.exists_smul_eq_mul {L : Type*} [Field L] [Algebra R S] [Algebra S L]
    [Algebra R L] [IsScalarTower R S L] [IsIntegralClosure S R L] (h : Algebra.IsAlgebraic R L)
    (inj : Function.Injective (algebraMap R L)) (a : S) {b : S} (hb : b ≠ 0) :
    ∃ (c : S) (d : _) (_ : d ≠ (0 : R)), d • a = b * c := by
  obtain ⟨c, d, d_ne, hx⟩ :=
    exists_integral_multiple (h (algebraMap _ L a / algebraMap _ L b))
      ((injective_iff_map_eq_zero _).mp inj)
  refine'
    ⟨IsIntegralClosure.mk' S (c : L) c.2, d, d_ne, IsIntegralClosure.algebraMap_injective S R L _⟩
  simp only [Algebra.smul_def, RingHom.map_mul, IsIntegralClosure.algebraMap_mk', ← hx, ←
    IsScalarTower.algebraMap_apply]
  rw [← mul_assoc _ (_ / _), mul_div_cancel' (algebraMap S L a), mul_comm]
  exact mt ((injective_iff_map_eq_zero _).mp (IsIntegralClosure.algebraMap_injective S R L) _) hb
#align is_integral_closure.exists_smul_eq_mul IsIntegralClosure.exists_smul_eq_mul

section Field

variable {K L : Type*} [Field K] [Field L] [Algebra K L] (A : Subalgebra K L)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Algebraic/Varianta559f87e95e3257a754c9800a8f0af02da2e3e2fa2268909a3d8dc2314035350.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Algebraic/Varianta559f87e95e3257a754c9800a8f0af02da2e3e2fa2268909a3d8dc2314035350.lean#L350).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `018a1223267835ca45d23b5cc9f0b3125ebd3006` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
