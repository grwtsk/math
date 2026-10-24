# iSup_cartan_borelLower_borelUpper_eq_top

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c721d506-1d68-a0a3-9d30-4e36dda54de4",
  "kind": "lemma",
  "lexical_name": "iSup_cartan_borelLower_borelUpper_eq_top",
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
  "slug": "isup-cartan-borellower-borelupper-eq-top--401c79e38a747eb239b4b154",
  "source": {
    "blob": "f4c4471b0bce51b1a30d98761d0e26abfeb8b0d6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 268,
    "line": 228,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant9038d0c4ba7e74f4d9b9c6cd1f14dc72626adf5b882d41240acb6956b6488b25.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:401c79e38a747eb239b4b154d47dca86b28a51e95198fd7709511df291c6e4f7",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variant9038d0c4ba7e74f4d9b9c6cd1f14dc72626adf5b882d41240acb6956b6488b25.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c721d506-1d68-a0a3-9d30-4e36dda54de4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 228–268.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma iSup_cartan_borelLower_borelUpper_eq_top :
    iSup ![H.toLieSubmodule, b.borelLower, b.borelUpper] = ⊤ := by
  suffices H.toLieSubmodule ⊔ b.borelLower ⊔ b.borelUpper = ⊤ by simpa
  refine eq_top_iff.mpr fun x hx ↦ ?_
  replace hx : x ∈ lieSpan R L (range b.e ∪ range b.f) := by simp [b.span_ef]
  induction hx using lieSpan_induction with
  | mem u hu =>
    rcases (mem_union _ _ _).mpr hu with hu | hu
    · exact LieSubmodule.mem_sup_right <| subset_lieSpan hu
    · exact LieSubmodule.mem_sup_left <| LieSubmodule.mem_sup_right <| subset_lieSpan hu
  | zero => simp
  | add u v _ _ hu hv => exact add_mem hu hv
  | smul t u _ hu => exact SMulMemClass.smul_mem t hu
  | lie u v _ _ hu hv =>
    obtain ⟨yc, hyc, yl, hyl, yu, hyu, rfl⟩ :
        ∃ᵉ (yc ∈ H) (yl ∈ lieSpan R L (range b.f)) (yu ∈ lieSpan R L (range b.e)),
          yc + yl + yu = u := by simpa [LieSubmodule.mem_sup] using! hu
    obtain ⟨zc, hzc, zl, hzl, zu, hzu, rfl⟩ :
        ∃ᵉ (zc ∈ H) (zl ∈ lieSpan R L (range b.f)) (zu ∈ lieSpan R L (range b.e)),
          zc + zl + zu = v := by simpa [LieSubmodule.mem_sup] using! hv
    simp only [lie_add, add_lie, ← add_assoc]
    repeat apply add_mem
    · exact LieSubmodule.mem_sup_left <| LieSubmodule.mem_sup_left <| lie_mem _ hyc hzc
    · rw [← lie_skew, neg_mem_iff]
      exact LieSubmodule.mem_sup_left <| LieSubmodule.mem_sup_right <|
        b.borelLower.lie_mem (x := ⟨zc, hzc⟩) hyl
    · rw [← lie_skew, neg_mem_iff]
      exact LieSubmodule.mem_sup_right <| b.borelUpper.lie_mem (x := ⟨zc, hzc⟩) hyu
    · exact LieSubmodule.mem_sup_left <| LieSubmodule.mem_sup_right <|
        b.borelLower.lie_mem (x := ⟨yc, hyc⟩) hzl
    · exact LieSubmodule.mem_sup_left <| LieSubmodule.mem_sup_right <| lie_mem _ hyl hzl
    · exact b.iSup_cartan_borelLower_borelUpper_eq_top_aux hyu hzl
    · exact LieSubmodule.mem_sup_right <| b.borelUpper.lie_mem (x := ⟨yc, hyc⟩) hzu
    · rw [← lie_skew, neg_mem_iff]
      exact b.iSup_cartan_borelLower_borelUpper_eq_top_aux hzu hyl
    · exact LieSubmodule.mem_sup_right <| lie_mem _ hyu hzu

variable [Fintype ι]

/-- These elements constitute a base for the root system of the Lie algebra relative to the
associated Cartan subalgebra. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variant9038d0c4ba7e74f4d9b9c6cd1f14dc72626adf5b882d41240acb6956b6488b25.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variant9038d0c4ba7e74f4d9b9c6cd1f14dc72626adf5b882d41240acb6956b6488b25.lean#L228).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f4c4471b0bce51b1a30d98761d0e26abfeb8b0d6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
