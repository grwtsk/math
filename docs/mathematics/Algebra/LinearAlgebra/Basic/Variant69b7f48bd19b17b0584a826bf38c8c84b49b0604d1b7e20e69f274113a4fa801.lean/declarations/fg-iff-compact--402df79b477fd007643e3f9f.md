# fg_iff_compact

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:641a419f-9809-aeb7-3c01-2aa02cf79947",
  "kind": "theorem",
  "lexical_name": "fg_iff_compact",
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
  "slug": "fg-iff-compact--402df79b477fd007643e3f9f",
  "source": {
    "blob": "aa3a788de0edbe021892dc5ba4a97bc2955642ba",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 241,
    "line": 200,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant69b7f48bd19b17b0584a826bf38c8c84b49b0604d1b7e20e69f274113a4fa801.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:402df79b477fd007643e3f9ff557848e071719bc4467c6069b3e7788088d5b76",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variant69b7f48bd19b17b0584a826bf38c8c84b49b0604d1b7e20e69f274113a4fa801.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:641a419f-9809-aeb7-3c01-2aa02cf79947`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 200–241.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem fg_iff_compact (s : Submodule R M) : s.FG ↔ IsCompactElement s := by
  -- Introduce shorthand for span of an element
  let sp : M → Submodule R M := fun a => span R {a}
  -- Trivial rewrite lemma; a small hack since simp (only) & rw can't accomplish this smoothly.
  have supr_rw : ∀ t : Finset M, ⨆ x ∈ t, sp x = ⨆ x ∈ (↑t : Set M), sp x := fun t => by rfl
  constructor
  · rintro ⟨t, rfl⟩
    rw [span_eq_iSup_of_singleton_spans, ← supr_rw, ← t.sup_eq_iSup sp]
    apply isCompactElement_finsetSup
    exact fun n _ => singleton_span_isCompactElement n
  · intro h
    rw [isCompactElement_iff_exists_le_sSup_of_le_sSup] at h
    -- s is the Sup of the spans of its elements.
    have sSup' : s = sSup (sp '' ↑s) := by
      rw [sSup_eq_iSup, iSup_image, ← span_eq_iSup_of_singleton_spans, eq_comm, span_eq]
    -- by h, s is then below (and equal to) the sup of the spans of finitely many elements.
    obtain ⟨u, ⟨huspan, husup⟩⟩ := h (sp '' ↑s) (le_of_eq sSup')
    have ssup : s = u.sup id := by
      suffices u.sup id ≤ s from le_antisymm husup this
      rw [sSup', Finset.sup_id_eq_sSup]
      exact sSup_le_sSup huspan
    obtain ⟨t, -, rfl⟩ := Finset.subset_set_image_iff.mp huspan
    rw [Finset.sup_image, Function.id_comp, Finset.sup_eq_iSup, supr_rw,
      ← span_eq_iSup_of_singleton_spans, eq_comm] at ssup
    exact ⟨t, ssup⟩

end Submodule

section ModuleAndAlgebra

variable (R A M N : Type*)

namespace Module

variable [Semiring R] [AddCommMonoid M] [Module R M] [AddCommMonoid N] [Module R N]

namespace Finite

open Submodule Set

variable {R M N}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variant69b7f48bd19b17b0584a826bf38c8c84b49b0604d1b7e20e69f274113a4fa801.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variant69b7f48bd19b17b0584a826bf38c8c84b49b0604d1b7e20e69f274113a4fa801.lean#L200).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `aa3a788de0edbe021892dc5ba4a97bc2955642ba` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
