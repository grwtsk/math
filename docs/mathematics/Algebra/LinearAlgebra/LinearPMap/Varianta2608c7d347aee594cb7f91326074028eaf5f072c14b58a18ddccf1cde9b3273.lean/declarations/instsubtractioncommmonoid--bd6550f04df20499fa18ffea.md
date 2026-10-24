# instSubtractionCommMonoid

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:41a2e16a060ddae1cf4b57f79bef84dba7a5090971a38950c4a0cb87b6539e6d",
  "kind": "instance",
  "lexical_name": "instSubtractionCommMonoid",
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
  "slug": "instsubtractioncommmonoid--bd6550f04df20499fa18ffea",
  "source": {
    "blob": "e8141c16f5dd94b7fa7e010c9b0487c5b40cecc8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 585,
    "line": 555,
    "path": "GRWTSK/Algebra/LinearAlgebra/LinearPMap/Varianta2608c7d347aee594cb7f91326074028eaf5f072c14b58a18ddccf1cde9b3273.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bd6550f04df20499fa18ffea460fa67b2af88e86c8a03a60910ed0db3bb09d0f",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/LinearPMap/Varianta2608c7d347aee594cb7f91326074028eaf5f072c14b58a18ddccf1cde9b3273.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:41a2e16a060ddae1cf4b57f79bef84dba7a5090971a38950c4a0cb87b6539e6d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 555–585.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance instSubtractionCommMonoid : SubtractionCommMonoid (E →ₛₗ.[σ] F) where
  add_comm := add_comm
  sub_eq_add_neg f g := by
    ext x _ h
    · rfl
    simp [sub_apply, add_apply, neg_apply, ← sub_eq_add_neg]
  neg_neg := neg_neg
  neg_add_rev f g := by
    ext x _ h
    · simp [add_domain, neg_domain, And.comm]
    simp [add_apply, neg_apply, ← sub_eq_add_neg]
  neg_eq_of_add f g h' := by
    ext x hf hg
    · have : (0 : E →ₛₗ.[σ] F).domain = ⊤ := zero_domain
      simp only [← h', add_domain, inf_eq_top_iff] at this
      rw [neg_domain, this.1, this.2]
    simp only [neg_domain, neg_apply, neg_eq_iff_add_eq_zero]
    rw [ext_iff] at h'
    rcases h' with ⟨hdom, h'⟩
    rw [zero_domain] at hdom
    simp only [hdom, zero_domain, mem_top, zero_apply, forall_true_left] at h'
    apply h'
  zsmul := zsmulRec

end Sub

section

variable {K L : Type*} [DivisionRing K] [DivisionRing L] {σ : K →+* L} [Module K E] [Module L F]

/-- Extend a `LinearPMap` to `f.domain ⊔ K ∙ x`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/LinearPMap/Varianta2608c7d347aee594cb7f91326074028eaf5f072c14b58a18ddccf1cde9b3273.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/LinearPMap/Varianta2608c7d347aee594cb7f91326074028eaf5f072c14b58a18ddccf1cde9b3273.lean#L555).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e8141c16f5dd94b7fa7e010c9b0487c5b40cecc8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
