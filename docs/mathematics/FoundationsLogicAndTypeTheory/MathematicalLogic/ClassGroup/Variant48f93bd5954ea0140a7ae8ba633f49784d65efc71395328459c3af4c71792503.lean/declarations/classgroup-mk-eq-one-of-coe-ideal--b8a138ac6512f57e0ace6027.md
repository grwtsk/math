# ClassGroup.mk_eq_one_of_coe_ideal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7b31e1b20d6be8aabaf838d1636b5320aaba114b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 150,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/48/48f93bd5954ea0140a7ae8ba633f49784d65efc71395328459c3af4c71792503.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:fa07466c-dfb2-1ea6-91fa-00e1c0213151",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:085033ad-1e4b-be83-54cc-b9caba315d70",
  "kind": "theorem",
  "lexical_name": "ClassGroup.mk_eq_one_of_coe_ideal",
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
  "slug": "classgroup-mk-eq-one-of-coe-ideal--b8a138ac6512f57e0ace6027",
  "source": {
    "blob": "7b31e1b20d6be8aabaf838d1636b5320aaba114b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 172,
    "line": 150,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/ClassGroup/Variant48f93bd5954ea0140a7ae8ba633f49784d65efc71395328459c3af4c71792503.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b8a138ac6512f57e0ace6027b3bd83acba0a51ec476277ae0c40f925db0f7760",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/ClassGroup/Variant48f93bd5954ea0140a7ae8ba633f49784d65efc71395328459c3af4c71792503.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:085033ad-1e4b-be83-54cc-b9caba315d70`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 150–172.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ClassGroup.mk_eq_one_of_coe_ideal {I : (FractionalIdeal R⁰ <| FractionRing R)ˣ}
    {I' : Ideal R} (hI : (I : FractionalIdeal R⁰ <| FractionRing R) = I') :
    ClassGroup.mk I = 1 ↔ ∃ x : R, x ≠ 0 ∧ I' = Ideal.span {x} := by
  rw [← map_one (ClassGroup.mk (R := R) (K := FractionRing R)),
    ClassGroup.mk_eq_mk_of_coe_ideal hI (?_ : _ = ↑(⊤ : Ideal R))]
  any_goals rfl
  constructor
  · rintro ⟨x, y, hx, hy, h⟩
    rw [Ideal.mul_top] at h
    rcases Ideal.mem_span_singleton_mul.mp ((Ideal.span_singleton_le_iff_mem _).mp h.ge) with
      ⟨i, _hi, rfl⟩
    rw [← Ideal.span_singleton_mul_span_singleton, Ideal.span_singleton_mul_right_inj hx] at h
    exact ⟨i, right_ne_zero_of_mul hy, h⟩
  · rintro ⟨x, hx, rfl⟩
    exact ⟨1, x, one_ne_zero, hx, by rw [Ideal.span_singleton_one, Ideal.top_mul, Ideal.mul_top]⟩
#align class_group.mk_eq_one_of_coe_ideal ClassGroup.mk_eq_one_of_coe_ideal

variable (K)

/-- Induction principle for the class group: to show something holds for all `x : ClassGroup R`,
we can choose a fraction field `K` and show it holds for the equivalence class of each
`I : FractionalIdeal R⁰ K`. -/
@[elab_as_elim]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/ClassGroup/Variant48f93bd5954ea0140a7ae8ba633f49784d65efc71395328459c3af4c71792503.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/ClassGroup/Variant48f93bd5954ea0140a7ae8ba633f49784d65efc71395328459c3af4c71792503.lean#L150).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7b31e1b20d6be8aabaf838d1636b5320aaba114b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
