# fromOfGlobalSections

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:508d7b57fc2c534883dd4dead0d3a1b283a7ea8e0f9bab80a8d0ef5dca656be8",
  "kind": "def",
  "lexical_name": "fromOfGlobalSections",
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
  "slug": "fromofglobalsections--b95b742b156d4822c7ba63d8",
  "source": {
    "blob": "c41860c281085da54a5202a6691d8eca3c4f9775",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 465,
    "line": 450,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Basic/Variantc852e2caf2abf10cbea05db4a1a174463e7662536edddfe8d66ff9e7b16cef06.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b95b742b156d4822c7ba63d863893f02f9707096644086411f66f81247dfd410",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Basic/Variantc852e2caf2abf10cbea05db4a1a174463e7662536edddfe8d66ff9e7b16cef06.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:508d7b57fc2c534883dd4dead0d3a1b283a7ea8e0f9bab80a8d0ef5dca656be8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 450–465.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def fromOfGlobalSections : X ⟶ Proj 𝒜 := by
  refine (openCoverOfMapIrrelevantEqTop 𝒜 f hf).glueMorphisms
    (fun ri ↦ toBasicOpenOfGlobalSections 𝒜 f rfl ri.2.2.1 ri.2.2.2 ≫ Scheme.Opens.ι _) ?_
  rintro x y
  let e : pullback ((openCoverOfMapIrrelevantEqTop 𝒜 f hf).f x)
      ((openCoverOfMapIrrelevantEqTop 𝒜 f hf).f y) ≅ (X.basicOpen (f (x.snd.fst * y.snd.fst))) :=
    (isPullback_opens_inf _ _).isoPullback.symm ≪≫ X.isoOfEq (by simp)
  rw [← cancel_epi e.inv]
  trans toBasicOpenOfGlobalSections 𝒜 f rfl (Nat.add_pos_left x.2.2.1 y.1)
    (SetLike.mul_mem_graded x.2.2.2 y.2.2.2) ≫ (Scheme.Opens.ι _)
  · simpa [e, openCoverOfMapIrrelevantEqTop, Scheme.isoOfEq_inv] using
      homOfLE_toBasicOpenOfGlobalSections_ι _ _ rfl rfl y.2.2.2
  · simpa [e, openCoverOfMapIrrelevantEqTop, Scheme.isoOfEq_inv] using
      (homOfLE_toBasicOpenOfGlobalSections_ι _ _ (mul_comm _ _) (add_comm _ _) x.2.2.2).symm

set_option backward.isDefEq.respectTransparency false in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Basic/Variantc852e2caf2abf10cbea05db4a1a174463e7662536edddfe8d66ff9e7b16cef06.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Basic/Variantc852e2caf2abf10cbea05db4a1a174463e7662536edddfe8d66ff9e7b16cef06.lean#L450).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c41860c281085da54a5202a6691d8eca3c4f9775` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
