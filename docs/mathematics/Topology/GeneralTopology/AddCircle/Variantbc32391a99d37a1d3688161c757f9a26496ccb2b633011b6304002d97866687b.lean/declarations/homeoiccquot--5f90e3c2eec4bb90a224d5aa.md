# homeoIccQuot

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c38d5513170cb31c6c6eb87fa529854b8069330f1520c5f7f632426a63deafdf",
  "kind": "def",
  "lexical_name": "homeoIccQuot",
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
  "slug": "homeoiccquot--5f90e3c2eec4bb90a224d5aa",
  "source": {
    "blob": "8a755dc49e1d1927307d4bdc4528c932fc4d7884",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 647,
    "line": 623,
    "path": "GRWTSK/Topology/GeneralTopology/AddCircle/Variantbc32391a99d37a1d3688161c757f9a26496ccb2b633011b6304002d97866687b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5f90e3c2eec4bb90a224d5aa993b8d41671c0c18b623344aaeb6f80f6171d10e",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/AddCircle/Variantbc32391a99d37a1d3688161c757f9a26496ccb2b633011b6304002d97866687b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c38d5513170cb31c6c6eb87fa529854b8069330f1520c5f7f632426a63deafdf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 623–647.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def homeoIccQuot : 𝕋 ≃ₜ Quot (EndpointIdent p a) where
  toEquiv := equivIccQuot p a
  continuous_toFun := by
    -- Porting note: was `simp_rw`
    rw [quotientMap_quotient_mk'.continuous_iff]
    simp_rw [continuous_iff_continuousAt,
      continuousAt_iff_continuous_left_right]
    intro x; constructor
    on_goal 1 => erw [equivIccQuot_comp_mk_eq_toIocMod]
    on_goal 2 => erw [equivIccQuot_comp_mk_eq_toIcoMod]
    all_goals
      apply continuous_quot_mk.continuousAt.comp_continuousWithinAt
      rw [inducing_subtype_val.continuousWithinAt_iff]
    · apply continuous_left_toIocMod
    · apply continuous_right_toIcoMod
  continuous_invFun :=
    continuous_quot_lift _ ((AddCircle.continuous_mk' p).comp continuous_subtype_val)
#align add_circle.homeo_Icc_quot AddCircle.homeoIccQuot

/-! We now show that a continuous function on `[a, a + p]` satisfying `f a = f (a + p)` is the
pullback of a continuous function on `AddCircle p`. -/


variable {p a}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/AddCircle/Variantbc32391a99d37a1d3688161c757f9a26496ccb2b633011b6304002d97866687b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/AddCircle/Variantbc32391a99d37a1d3688161c757f9a26496ccb2b633011b6304002d97866687b.lean#L623).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8a755dc49e1d1927307d4bdc4528c932fc4d7884` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
