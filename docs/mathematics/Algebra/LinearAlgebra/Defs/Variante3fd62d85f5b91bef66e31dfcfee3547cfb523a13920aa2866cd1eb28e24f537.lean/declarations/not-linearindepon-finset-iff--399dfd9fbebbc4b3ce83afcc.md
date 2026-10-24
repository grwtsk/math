# not_linearIndepOn_finset_iffₒₛ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1c89a670-454d-4880-65d5-b274d186c02b",
  "kind": "lemma",
  "lexical_name": "not_linearIndepOn_finset_iffₒₛ",
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
  "slug": "not-linearindepon-finset-iff--399dfd9fbebbc4b3ce83afcc",
  "source": {
    "blob": "2ae3d68d4194746108d192c5bb94dadb0aa991dc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 716,
    "line": 694,
    "path": "GRWTSK/Algebra/LinearAlgebra/Defs/Variante3fd62d85f5b91bef66e31dfcfee3547cfb523a13920aa2866cd1eb28e24f537.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:399dfd9fbebbc4b3ce83afccb292f03a3a28d50725df2a88bccb9f0cd8281960",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Defs/Variante3fd62d85f5b91bef66e31dfcfee3547cfb523a13920aa2866cd1eb28e24f537.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1c89a670-454d-4880-65d5-b274d186c02b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 694–716.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma not_linearIndepOn_finset_iffₒₛ [DecidableEq ι] {s : Finset ι} :
    ¬LinearIndepOn R v s ↔ ∃ t ⊆ s, ∃ (f : ι → R),
      ∑ i ∈ t, f i • v i = ∑ i ∈ s \ t, f i • v i ∧ ∃ i ∈ t, 0 < f i := by
  simp only [linearIndepOn_finset_iffₒₛ, not_forall, pos_iff_ne_zero]
  refine ⟨fun ⟨t, hst, f, heq, i, hi, hfi⟩ => ?_,
    fun ⟨t, hst, f, heq, i, hi, hfi⟩ => ⟨t, hst, f, heq, i, hst hi, hfi⟩⟩
  by_cases hi' : i ∈ t
  · exact ⟨t, hst, f, heq, i, hi', hfi⟩
  · refine ⟨s \ t, Finset.sdiff_subset, f, ?_, i, Finset.mem_sdiff.2 ⟨hi, hi'⟩, hfi⟩
    simpa [Finset.sdiff_sdiff_eq_self hst] using heq.symm

end LinearlyCanonicallyOrdered

end Semiring

/-! ### Properties which require `Ring R` -/

section Module

variable [Ring R] [AddCommGroup M] [AddCommGroup M']
variable [Module R M] [Module R M']
variable {v : ι → M} {i : ι}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Defs/Variante3fd62d85f5b91bef66e31dfcfee3547cfb523a13920aa2866cd1eb28e24f537.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Defs/Variante3fd62d85f5b91bef66e31dfcfee3547cfb523a13920aa2866cd1eb28e24f537.lean#L694).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2ae3d68d4194746108d192c5bb94dadb0aa991dc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
