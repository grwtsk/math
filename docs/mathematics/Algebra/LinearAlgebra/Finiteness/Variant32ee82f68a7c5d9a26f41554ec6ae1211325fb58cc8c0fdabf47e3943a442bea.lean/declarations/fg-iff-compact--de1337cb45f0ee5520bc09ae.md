# fg_iff_compact

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5eb25c1f587e0789132022a89807a5d56e9f23c2",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 389,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/32/32ee82f68a7c5d9a26f41554ec6ae1211325fb58cc8c0fdabf47e3943a442bea.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c646f87a-a4ac-6a26-13b0-b36b11bc5cc8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9a705243-28ba-99ac-11b7-765ff872d452",
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
  "slug": "fg-iff-compact--de1337cb45f0ee5520bc09ae",
  "source": {
    "blob": "5eb25c1f587e0789132022a89807a5d56e9f23c2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 430,
    "line": 389,
    "path": "GRWTSK/Algebra/LinearAlgebra/Finiteness/Variant32ee82f68a7c5d9a26f41554ec6ae1211325fb58cc8c0fdabf47e3943a442bea.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:de1337cb45f0ee5520bc09ae0ebc3de50ab3e9091f2e1b4f67a4d7194ff22790",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Finiteness/Variant32ee82f68a7c5d9a26f41554ec6ae1211325fb58cc8c0fdabf47e3943a442bea.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9a705243-28ba-99ac-11b7-765ff872d452`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 389–430.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem fg_iff_compact (s : Submodule R M) : s.FG ↔ CompleteLattice.IsCompactElement s := by
  classical
    -- Introduce shorthand for span of an element
    let sp : M → Submodule R M := fun a => span R {a}
    -- Trivial rewrite lemma; a small hack since simp (only) & rw can't accomplish this smoothly.
    have supr_rw : ∀ t : Finset M, ⨆ x ∈ t, sp x = ⨆ x ∈ (↑t : Set M), sp x := fun t => by rfl
    constructor
    · rintro ⟨t, rfl⟩
      rw [span_eq_iSup_of_singleton_spans, ← supr_rw, ← Finset.sup_eq_iSup t sp]
      apply CompleteLattice.finset_sup_compact_of_compact
      exact fun n _ => singleton_span_isCompactElement n
    · intro h
      -- s is the Sup of the spans of its elements.
      have sSup' : s = sSup (sp '' ↑s) := by
        rw [sSup_eq_iSup, iSup_image, ← span_eq_iSup_of_singleton_spans, eq_comm, span_eq]
      -- by h, s is then below (and equal to) the sup of the spans of finitely many elements.
      obtain ⟨u, ⟨huspan, husup⟩⟩ := h (sp '' ↑s) (le_of_eq sSup')
      have ssup : s = u.sup id := by
        suffices : u.sup id ≤ s
        exact le_antisymm husup this
        rw [sSup', Finset.sup_id_eq_sSup]
        exact sSup_le_sSup huspan
      -- Porting note: had to split this out of the `obtain`
      have := Finset.subset_image_iff.mp huspan
      obtain ⟨t, ⟨-, rfl⟩⟩ := this
      rw [Finset.sup_image, Function.comp.left_id, Finset.sup_eq_iSup, supr_rw, ←
        span_eq_iSup_of_singleton_spans, eq_comm] at ssup
      exact ⟨t, ssup⟩
#align submodule.fg_iff_compact Submodule.fg_iff_compact

end Submodule

namespace Submodule

section Map₂

variable {R M N P : Type*}

variable [CommSemiring R] [AddCommMonoid M] [AddCommMonoid N] [AddCommMonoid P]

variable [Module R M] [Module R N] [Module R P]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Finiteness/Variant32ee82f68a7c5d9a26f41554ec6ae1211325fb58cc8c0fdabf47e3943a442bea.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Finiteness/Variant32ee82f68a7c5d9a26f41554ec6ae1211325fb58cc8c0fdabf47e3943a442bea.lean#L389).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5eb25c1f587e0789132022a89807a5d56e9f23c2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
