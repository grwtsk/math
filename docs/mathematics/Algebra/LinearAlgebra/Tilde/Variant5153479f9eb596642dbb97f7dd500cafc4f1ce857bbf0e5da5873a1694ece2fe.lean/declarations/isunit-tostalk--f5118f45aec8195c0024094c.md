# isUnit_toStalk

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3c9206b5-0fe1-7453-77bb-43937b2c7b02",
  "kind": "lemma",
  "lexical_name": "isUnit_toStalk",
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
  "slug": "isunit-tostalk--f5118f45aec8195c0024094c",
  "source": {
    "blob": "676cac9f85635e220480acd39f7281ebe0c16b14",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 266,
    "line": 241,
    "path": "GRWTSK/Algebra/LinearAlgebra/Tilde/Variant5153479f9eb596642dbb97f7dd500cafc4f1ce857bbf0e5da5873a1694ece2fe.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f5118f45aec8195c0024094c560b651db2d265c4e8057f1101bd6c6bf75b2b5e",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Tilde/Variant5153479f9eb596642dbb97f7dd500cafc4f1ce857bbf0e5da5873a1694ece2fe.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3c9206b5-0fe1-7453-77bb-43937b2c7b02`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 241–266.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isUnit_toStalk (x : PrimeSpectrum.Top R) (r : x.asIdeal.primeCompl) :
    IsUnit ((algebraMap R (Module.End R ((tildeInModuleCat M).stalk x))) r) := by
  rw [Module.End.isUnit_iff]
  refine ⟨LinearMap.ker_eq_bot.1 <| eq_bot_iff.2 fun st (h : r.1 • st = 0) ↦
    smul_stalk_no_nonzero_divisor M r st h, fun st ↦ ?_⟩
  obtain ⟨U, mem, s, rfl⟩ := germ_exist (F := M.tildeInModuleCat) x st
  let O := U ⊓ (PrimeSpectrum.basicOpen r)
  refine ⟨germ M.tildeInModuleCat O x ⟨mem, r.2⟩
    ⟨fun q ↦ (Localization.mk 1 ⟨r, q.2.2⟩ : Localization.AtPrime q.1.asIdeal) • s.1
      ⟨q.1, q.2.1⟩, fun q ↦ ?_⟩, by
        simpa only [Module.algebraMap_end_apply, ← map_smul] using
          germ_ext (C := ModuleCat R) (W := O) (hxW := ⟨mem, r.2⟩) (iWU := 𝟙 _)
            (iWV := homOfLE inf_le_left) _ <|
          Subtype.eq <| funext fun y ↦ smul_eq_iff_of_mem (S := y.1.1.primeCompl) r _ _ _ |>.2 rfl⟩
  obtain ⟨V, mem_V, iV, num, den, hV⟩ := s.2 ⟨q.1, q.2.1⟩
  refine ⟨V ⊓ O, ⟨mem_V, q.2⟩, homOfLE inf_le_right, num, r * den, fun y ↦ ?_⟩
  obtain ⟨h1, h2⟩ := hV ⟨y, y.2.1⟩
  refine ⟨y.1.asIdeal.primeCompl.mul_mem y.2.2.2 h1, ?_⟩
  simp only [Opens.coe_inf, Opens.apply_def, isLocallyFraction_pred, mkLinearMap_apply,
    smul_eq_iff_of_mem (S := y.1.1.primeCompl) (hr := h1), mk_smul_mk, one_smul, mul_one] at h2 ⊢
  simpa only [h2, mk_smul_mk, one_smul, smul'_mk, mk_eq] using ⟨1, by simp only [one_smul]; rfl⟩

/--
The morphism of `R`-modules from the localization of `M` at the prime ideal corresponding to `x`
to the stalk of `M^~` at `x`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Tilde/Variant5153479f9eb596642dbb97f7dd500cafc4f1ce857bbf0e5da5873a1694ece2fe.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Tilde/Variant5153479f9eb596642dbb97f7dd500cafc4f1ce857bbf0e5da5873a1694ece2fe.lean#L241).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `676cac9f85635e220480acd39f7281ebe0c16b14` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
