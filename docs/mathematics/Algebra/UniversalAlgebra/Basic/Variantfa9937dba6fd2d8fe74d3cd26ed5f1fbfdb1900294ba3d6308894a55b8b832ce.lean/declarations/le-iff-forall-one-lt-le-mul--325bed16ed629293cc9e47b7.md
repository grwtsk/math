# le_iff_forall_one_lt_le_mul₀

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:429da1c7-b446-90ed-e54f-888a0b17693f",
  "kind": "theorem",
  "lexical_name": "le_iff_forall_one_lt_le_mul₀",
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
  "slug": "le-iff-forall-one-lt-le-mul--325bed16ed629293cc9e47b7",
  "source": {
    "blob": "c67d7ff404e76764131d627a10a12dbe13520f47",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 249,
    "line": 239,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Basic/Variantfa9937dba6fd2d8fe74d3cd26ed5f1fbfdb1900294ba3d6308894a55b8b832ce.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:325bed16ed629293cc9e47b7c4f4375590b88743e70268a16bfac469fc4e0239",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Basic/Variantfa9937dba6fd2d8fe74d3cd26ed5f1fbfdb1900294ba3d6308894a55b8b832ce.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:429da1c7-b446-90ed-e54f-888a0b17693f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 239–249.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem le_iff_forall_one_lt_le_mul₀ {α : Type*}
    [Semifield α] [LinearOrder α] [IsStrictOrderedRing α]
    {a b : α} (hb : 0 ≤ b) : a ≤ b ↔ ∀ ε, 1 < ε → a ≤ b * ε := by
  refine ⟨fun h _ hε ↦ h.trans <| le_mul_of_one_le_right hb hε.le, fun h ↦ ?_⟩
  obtain rfl | hb := hb.eq_or_lt
  · simp_rw [zero_mul] at h
    exact h 2 one_lt_two
  refine le_of_forall_gt_imp_ge_of_dense fun x hbx => ?_
  convert h (x / b) ((one_lt_div hb).mpr hbx)
  rw [mul_div_cancel₀ _ hb.ne']

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Basic/Variantfa9937dba6fd2d8fe74d3cd26ed5f1fbfdb1900294ba3d6308894a55b8b832ce.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Basic/Variantfa9937dba6fd2d8fe74d3cd26ed5f1fbfdb1900294ba3d6308894a55b8b832ce.lean#L239).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c67d7ff404e76764131d627a10a12dbe13520f47` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
