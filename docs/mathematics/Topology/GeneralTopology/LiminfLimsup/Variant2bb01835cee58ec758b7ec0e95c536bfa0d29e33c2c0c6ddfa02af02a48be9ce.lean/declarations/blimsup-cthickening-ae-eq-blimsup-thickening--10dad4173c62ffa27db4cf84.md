# blimsup_cthickening_ae_eq_blimsup_thickening

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6bb01e72-111f-e1be-4930-55f2d6bf85d4",
  "kind": "theorem",
  "lexical_name": "blimsup_cthickening_ae_eq_blimsup_thickening",
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
  "slug": "blimsup-cthickening-ae-eq-blimsup-thickening--10dad4173c62ffa27db4cf84",
  "source": {
    "blob": "40f1b74fbaa2f395164c7fc5d1b3eb74b742bb7b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 247,
    "line": 236,
    "path": "GRWTSK/Topology/GeneralTopology/LiminfLimsup/Variant2bb01835cee58ec758b7ec0e95c536bfa0d29e33c2c0c6ddfa02af02a48be9ce.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:10dad4173c62ffa27db4cf8400907bb646472bb11893976322b30468eb11b1cf",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/LiminfLimsup/Variant2bb01835cee58ec758b7ec0e95c536bfa0d29e33c2c0c6ddfa02af02a48be9ce.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6bb01e72-111f-e1be-4930-55f2d6bf85d4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 236–247.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem blimsup_cthickening_ae_eq_blimsup_thickening {p : ℕ → Prop} {s : ℕ → Set α} {r : ℕ → ℝ}
    (hr : Tendsto r atTop (𝓝 0)) (hr' : ∀ᶠ i in atTop, p i → 0 < r i) :
    (blimsup (fun i => cthickening (r i) (s i)) atTop p : Set α) =ᵐ[μ]
      (blimsup (fun i => thickening (r i) (s i)) atTop p : Set α) := by
  refine eventuallySubset_antisymm_iff.mpr ⟨?_, .of_subset ?_⟩
  · refine (blimsup_cthickening_mul_ae_eq μ p s (one_half_pos (α := ℝ)) r hr).superset.trans
      (.of_subset ?_)
    refine mono_blimsup' (hr'.mono fun i hi pi => cthickening_subset_thickening' (hi pi) ?_ (s i))
    nlinarith [hi pi]
  · exact mono_blimsup fun i _ => thickening_subset_cthickening _ _

/-- An auxiliary result en route to `blimsup_thickening_mul_ae_eq`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LiminfLimsup/Variant2bb01835cee58ec758b7ec0e95c536bfa0d29e33c2c0c6ddfa02af02a48be9ce.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LiminfLimsup/Variant2bb01835cee58ec758b7ec0e95c536bfa0d29e33c2c0c6ddfa02af02a48be9ce.lean#L236).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `40f1b74fbaa2f395164c7fc5d1b3eb74b742bb7b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
