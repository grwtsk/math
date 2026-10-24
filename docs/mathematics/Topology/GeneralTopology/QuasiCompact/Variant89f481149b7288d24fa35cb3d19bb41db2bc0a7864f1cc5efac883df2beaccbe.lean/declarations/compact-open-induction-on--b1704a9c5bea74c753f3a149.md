# compact_open_induction_on

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fd9bd5ec-c1bb-b4aa-a4b4-8f4d9fceb74f",
  "kind": "theorem",
  "lexical_name": "compact_open_induction_on",
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
  "slug": "compact-open-induction-on--b1704a9c5bea74c753f3a149",
  "source": {
    "blob": "05399ce62aa03a6bf827e5e15e46066b6be70e23",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 303,
    "line": 285,
    "path": "GRWTSK/Topology/GeneralTopology/QuasiCompact/Variant89f481149b7288d24fa35cb3d19bb41db2bc0a7864f1cc5efac883df2beaccbe.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b1704a9c5bea74c753f3a1494f21185b79d4e6189923cd0f3ba6789e912813d5",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/QuasiCompact/Variant89f481149b7288d24fa35cb3d19bb41db2bc0a7864f1cc5efac883df2beaccbe.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fd9bd5ec-c1bb-b4aa-a4b4-8f4d9fceb74f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 285–303.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem compact_open_induction_on {P : Opens X.carrier → Prop} (S : Opens X.carrier)
    (hS : IsCompact S.1) (h₁ : P ⊥)
    (h₂ : ∀ (S : Opens X.carrier) (_ : IsCompact S.1) (U : X.affineOpens), P S → P (S ⊔ U)) :
    P S := by
  classical
  obtain ⟨s, hs, hs'⟩ := (isCompact_open_iff_eq_finset_affine_union S.1).mp ⟨hS, S.2⟩
  replace hs' : S = iSup fun i : s => (i : Opens X.carrier) := by ext1; simpa using hs'
  subst hs'
  apply @Set.Finite.induction_on _ _ _ hs
  · convert h₁; rw [iSup_eq_bot]; rintro ⟨_, h⟩; exact h.elim
  · intro x s _ hs h₄
    have : IsCompact (⨆ i : s, (i : Opens X.carrier)).1 := by
      refine' ((isCompact_open_iff_eq_finset_affine_union _).mpr _).1; exact ⟨s, hs, by simp⟩
    convert h₂ _ this x h₄
    rw [iSup_subtype, sup_comm]
    conv_rhs => rw [iSup_subtype]
    exact iSup_insert
#align algebraic_geometry.compact_open_induction_on AlgebraicGeometry.compact_open_induction_on

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/QuasiCompact/Variant89f481149b7288d24fa35cb3d19bb41db2bc0a7864f1cc5efac883df2beaccbe.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/QuasiCompact/Variant89f481149b7288d24fa35cb3d19bb41db2bc0a7864f1cc5efac883df2beaccbe.lean#L285).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `05399ce62aa03a6bf827e5e15e46066b6be70e23` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
