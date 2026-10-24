# restr_symm_trans

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0a7ab096-24e9-2c38-f91f-1369e0be5e10",
  "kind": "theorem",
  "lexical_name": "restr_symm_trans",
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
  "slug": "restr-symm-trans--d336687a0190784dea8c7573",
  "source": {
    "blob": "02df1b0d77d6913ab1a12a4e9685376afb0c8a4a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 180,
    "line": 161,
    "path": "GRWTSK/Topology/GeneralTopology/Composition/Variant174598786d605d06f98f702129d1b7f37decc62a852d155137db4b07b4260e4a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d336687a0190784dea8c75736fe560f88a6922f5a4fbcbbed81f0b1b5fbe5cfb",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Composition/Variant174598786d605d06f98f702129d1b7f37decc62a852d155137db4b07b4260e4a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0a7ab096-24e9-2c38-f91f-1369e0be5e10`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 161–180.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem restr_symm_trans {e' : OpenPartialHomeomorph X Y}
    (hs : IsOpen s) (hs' : IsOpen (e '' s)) (hs'' : s ⊆ e.source) :
    (e.restr s).symm.trans e' ≈ (e.symm.trans e').restr (e '' s) := by
  refine ⟨?_, ?_⟩
  · simp only [trans_toPartialEquiv, symm_toPartialEquiv, restr_toPartialEquiv,
      PartialEquiv.trans_source, PartialEquiv.symm_source, PartialEquiv.restr_target,
      coe_toPartialEquiv_symm, PartialEquiv.restr_coe_symm, PartialEquiv.restr_source]
    rw [interior_eq_iff_isOpen.mpr hs', interior_eq_iff_isOpen.mpr hs]
    -- Get rid of the middle term, which is merely distracting.
    rw [inter_assoc, inter_assoc, inter_comm _ (e '' s), ← inter_assoc, ← inter_assoc]
    congr 1
    -- Now, just a bunch of rewrites: should this be a separate lemma?
    rw [← image_source_inter_eq', ← image_source_eq_target]
    refine image_inter_on ?_
    intro x hx y hy h
    rw [← left_inv e hy, ← left_inv e (hs'' hx), h]
  · simp_rw [coe_trans, restr_symm_apply, restr_apply, coe_trans]
    intro x hx
    simp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Composition/Variant174598786d605d06f98f702129d1b7f37decc62a852d155137db4b07b4260e4a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Composition/Variant174598786d605d06f98f702129d1b7f37decc62a852d155137db4b07b4260e4a.lean#L161).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `02df1b0d77d6913ab1a12a4e9685376afb0c8a4a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
