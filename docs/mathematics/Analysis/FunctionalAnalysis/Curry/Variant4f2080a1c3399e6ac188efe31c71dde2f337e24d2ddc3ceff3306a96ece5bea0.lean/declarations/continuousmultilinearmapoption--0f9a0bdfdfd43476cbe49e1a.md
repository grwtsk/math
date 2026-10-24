# continuousMultilinearMapOption

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:eb4bcaf334d00e44ff9fc997fc29c100121b1350fd1f47240d3651c1900c4739",
  "kind": "def",
  "lexical_name": "continuousMultilinearMapOption",
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
  "slug": "continuousmultilinearmapoption--0f9a0bdfdfd43476cbe49e1a",
  "source": {
    "blob": "ee4c496966c7933f0c9ba0b6d2783f0133814fdf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 709,
    "line": 670,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/Curry/Variant4f2080a1c3399e6ac188efe31c71dde2f337e24d2ddc3ceff3306a96ece5bea0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0f9a0bdfdfd43476cbe49e1a74bc23279674de073c5d3430b7129bf2f57e0c84",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/Curry/Variant4f2080a1c3399e6ac188efe31c71dde2f337e24d2ddc3ceff3306a96ece5bea0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:eb4bcaf334d00e44ff9fc997fc29c100121b1350fd1f47240d3651c1900c4739`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 670–709.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def continuousMultilinearMapOption (B : G →L[𝕜] ContinuousMultilinearMap 𝕜 E F) :
    ContinuousMultilinearMap 𝕜 (fun (_ : Option ι) ↦ (G × (Π i, E i))) F :=
  MultilinearMap.mkContinuous
  { toFun := fun p ↦ B (p none).1 (fun i ↦ (p i).2 i)
    map_update_add' := by
      intro inst v j x y
      match j with
      | none => simp
      | some j =>
        classical
        have B z : (fun i ↦ (Function.update v (some j) z (some i)).2 i) =
            Function.update (fun (i : ι) ↦ (v i).2 i) j (z.2 j) := by
          ext i
          rcases eq_or_ne i j with rfl | hij
          · simp
          · simp [hij]
        simp [B]
    map_update_smul' := by
      intro inst v j c x
      match j with
      | none => simp
      | some j =>
        classical
        have B z : (fun i ↦ (Function.update v (some j) z (some i)).2 i) =
            Function.update (fun (i : ι) ↦ (v i).2 i) j (z.2 j) := by
          ext i
          rcases eq_or_ne i j with rfl | hij
          · simp
          · simp [hij]
        simp [B] } (‖B‖) <| by
  intro b
  simp only [MultilinearMap.coe_mk, Fintype.prod_option]
  apply (ContinuousMultilinearMap.le_opNorm _ _).trans
  rw [← mul_assoc]
  gcongr with i _
  · apply (B.le_opNorm _).trans
    gcongr
    exact norm_fst_le _
  · exact (norm_le_pi_norm _ _).trans (norm_snd_le _)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/Curry/Variant4f2080a1c3399e6ac188efe31c71dde2f337e24d2ddc3ceff3306a96ece5bea0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/Curry/Variant4f2080a1c3399e6ac188efe31c71dde2f337e24d2ddc3ceff3306a96ece5bea0.lean#L670).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ee4c496966c7933f0c9ba0b6d2783f0133814fdf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
