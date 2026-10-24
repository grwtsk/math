# quasiSeparatedOfComp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b8e4dc71-9a64-355a-9307-fe63242c0e30",
  "kind": "theorem",
  "lexical_name": "quasiSeparatedOfComp",
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
  "slug": "quasiseparatedofcomp--0c88539f0fd171a796521194",
  "source": {
    "blob": "b22d6ea6839fc5035fa1658e6c61598d6504a906",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 310,
    "line": 286,
    "path": "GRWTSK/Topology/GeneralTopology/QuasiSeparated/Variant3d56f329ce8ce0310df168cc6c7b992eb555adbd261a78d6c3983c92262ff914.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0c88539f0fd171a79652119423a164f86e6d2f422309f3cd38cc4cd4fb6aa41e",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/QuasiSeparated/Variant3d56f329ce8ce0310df168cc6c7b992eb555adbd261a78d6c3983c92262ff914.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b8e4dc71-9a64-355a-9307-fe63242c0e30`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 286–310.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem quasiSeparatedOfComp {X Y Z : Scheme} (f : X ⟶ Y) (g : Y ⟶ Z) [H : QuasiSeparated (f ≫ g)] :
    QuasiSeparated f := by
  -- Porting note: rewrite `(QuasiSeparated.affine_openCover_TFAE f).out 0 1` directly fails, but
  -- give it a name works
  have h01 := (QuasiSeparated.affine_openCover_TFAE f).out 0 1
  rw [h01]; clear h01
  -- Porting note: rewrite `(QuasiSeparated.affine_openCover_TFAE ...).out 0 2` directly fails, but
  -- give it a name works
  have h02 := (QuasiSeparated.affine_openCover_TFAE (f ≫ g)).out 0 2
  rw [h02] at H; clear h02
  refine ⟨(Z.affineCover.pullbackCover g).bind fun x => Scheme.affineCover _, ?_, ?_⟩
  -- constructor
  · intro i; dsimp; infer_instance
  rintro ⟨i, j⟩; dsimp at i j
  -- replace H := H (Scheme.OpenCover.pullbackCover (Scheme.affineCover Z) g) i
  specialize H _ i
  -- rw [←isQuasiSeparated_iff_quasiSeparatedSpace] at H
  refine @quasiSeparatedSpace_of_quasiSeparated _ _ ?_ H ?_
  · exact pullback.map _ _ _ _ (𝟙 _) _ _ (by simp) (Category.comp_id _) ≫
      (pullbackRightPullbackFstIso g (Z.affineCover.map i) f).hom
  · apply (config := {allowSynthFailures := true}) AlgebraicGeometry.quasiSeparatedOfMono
    -- Porting note: this instance was automatic
    apply mono_comp
#align algebraic_geometry.quasi_separated_of_comp AlgebraicGeometry.quasiSeparatedOfComp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/QuasiSeparated/Variant3d56f329ce8ce0310df168cc6c7b992eb555adbd261a78d6c3983c92262ff914.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/QuasiSeparated/Variant3d56f329ce8ce0310df168cc6c7b992eb555adbd261a78d6c3983c92262ff914.lean#L286).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b22d6ea6839fc5035fa1658e6c61598d6504a906` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
