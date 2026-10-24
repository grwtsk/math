# struct

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1eefe2c1fc45c74dfee24d74db8d5a084d4cc4b97f0c6457fa6db0468f247df4",
  "kind": "def",
  "lexical_name": "struct",
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
  "slug": "struct--efebd78ef4839e574ac47f45",
  "source": {
    "blob": "ea761c42e0ec29f78f1314217b0b11c9bb234360",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 180,
    "line": 148,
    "path": "GRWTSK/Topology/EffectiveEpi/Variant91d22f8a26748ff36956732555c16499e76476512f0ee57f823b2962d3c6b7a2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:efebd78ef4839e574ac47f454360d7b8d411a67f643f300ea5a4eb7b1bca6aa7",
  "verification": {
    "reference": "docs/verification/Topology/EffectiveEpi/Variant91d22f8a26748ff36956732555c16499e76476512f0ee57f823b2962d3c6b7a2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1eefe2c1fc45c74dfee24d74db8d5a084d4cc4b97f0c6457fa6db0468f247df4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 148–180.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def struct : EffectiveEpiFamilyStruct X π where
  desc := fun {W} e h => Stonean.toCompHaus.preimage <|
    -- Use the `EffectiveEpiFamily F(X) F(π)` on `CompHaus`
    (CompHaus.effectiveEpiFamily_of_jointly_surjective (F.obj <| X ·) π surj).desc
    (fun (a : α) => F.map (e a)) (lift_desc_condition π h)
  fac := by
    -- The `EffectiveEpiFamily F(X) F(π)` on `CompHaus`
    let fam : EffectiveEpiFamily (F.obj <| X ·) π :=
      CompHaus.effectiveEpiFamily_of_jointly_surjective (F.obj <| X ·) π surj
    intro W e he a
    -- The `fac` on `CompHaus`
    have fac₁ :  F.map (π a ≫ _) = F.map (e a) :=
      EffectiveEpiFamily.fac (F.obj <| X ·) π e (lift_desc_condition π he) a
    replace fac₁ := Faithful.map_injective fac₁
    exact fac₁
  uniq := by
    -- The `EffectiveEpiFamily F(X) F(π)` on `CompHaus`
    let fam : EffectiveEpiFamily (F.obj <| X ·) π :=
      CompHaus.effectiveEpiFamily_of_jointly_surjective (F.obj <| X ·) π surj
    intro W e he m hm
    have Fhm : ∀ (a : α), π a ≫ F.map m = e a
    · intro a
      simp_all only [toCompHaus_map]
    have uniq₁ : F.map m = F.map _ :=
      EffectiveEpiFamily.uniq (F.obj <| X ·) π e (lift_desc_condition π he) (F.map m) Fhm
    replace uniq₁ := Faithful.map_injective uniq₁
    exact uniq₁

end EffectiveEpiFamily

section JointlySurjective

/-- One direction of `effectiveEpiFamily_tfae`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Topology/EffectiveEpi/Variant91d22f8a26748ff36956732555c16499e76476512f0ee57f823b2962d3c6b7a2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/EffectiveEpi/Variant91d22f8a26748ff36956732555c16499e76476512f0ee57f823b2962d3c6b7a2.lean#L148).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ea761c42e0ec29f78f1314217b0b11c9bb234360` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
