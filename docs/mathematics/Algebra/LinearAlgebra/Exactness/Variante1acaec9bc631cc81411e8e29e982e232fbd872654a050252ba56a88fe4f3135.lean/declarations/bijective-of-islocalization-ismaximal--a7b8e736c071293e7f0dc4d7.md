# bijective_of_isLocalization_isMaximal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a5265fe141c47eddb700275066f46725bdbb7b56",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 277,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e1/e1acaec9bc631cc81411e8e29e982e232fbd872654a050252ba56a88fe4f3135.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d2e64e23-9592-c6db-9647-6a2d3c1af3d1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f486d278-9f56-a51f-9467-6c3374e6339a",
  "kind": "lemma",
  "lexical_name": "bijective_of_isLocalization_isMaximal",
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
  "slug": "bijective-of-islocalization-ismaximal--a7b8e736c071293e7f0dc4d7",
  "source": {
    "blob": "a5265fe141c47eddb700275066f46725bdbb7b56",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 295,
    "line": 277,
    "path": "GRWTSK/Algebra/LinearAlgebra/Exactness/Variante1acaec9bc631cc81411e8e29e982e232fbd872654a050252ba56a88fe4f3135.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a7b8e736c071293e7f0dc4d74d69ab0f2eeec4f57028b82dbf6ee19098dfd70f",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Exactness/Variante1acaec9bc631cc81411e8e29e982e232fbd872654a050252ba56a88fe4f3135.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f486d278-9f56-a51f-9467-6c3374e6339a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 277–295.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma bijective_of_isLocalization_isMaximal
    (H : ∀ (p : Ideal R) [p.IsMaximal], Function.Bijective (algebraMap (Rₚ p) (Sₚ p))) :
    Function.Bijective (algebraMap R S) :=
  ⟨injective_of_isLocalization_isMaximal _ _ (fun p _ ↦ (H p).1),
    surjective_of_isLocalization_isMaximal _ _ (fun p _ ↦ (H p).2)⟩

end Algebra

section IsLocalization

variable {R S : Type*} [CommSemiring R] [CommSemiring S] {s : Set R} (hs : span s = ⊤)
-- For every element `r ∈ s`, let `Rᵣ` be the localization of `R` away from `r`
-- and `Sᵣ` the localization of `S` away from `f r`.
variable (Rᵣ : s → Type*) [∀ r, CommSemiring (Rᵣ r)] [∀ r, Algebra R (Rᵣ r)]
  (Sᵣ : s → Type*) [∀ r, CommSemiring (Sᵣ r)] [∀ r, Algebra S (Sᵣ r)]
variable (f : R →+* S) [∀ r, IsLocalization.Away r.val (Rᵣ r)]
    [∀ r, IsLocalization.Away (f r.val) (Sᵣ r)]
include hs

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Exactness/Variante1acaec9bc631cc81411e8e29e982e232fbd872654a050252ba56a88fe4f3135.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Exactness/Variante1acaec9bc631cc81411e8e29e982e232fbd872654a050252ba56a88fe4f3135.lean#L277).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a5265fe141c47eddb700275066f46725bdbb7b56` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
