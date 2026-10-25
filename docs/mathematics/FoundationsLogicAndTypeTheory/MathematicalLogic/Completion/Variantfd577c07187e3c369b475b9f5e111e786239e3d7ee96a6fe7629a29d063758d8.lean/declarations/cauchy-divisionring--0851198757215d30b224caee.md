# Cauchy.divisionRing

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:33c1a085dc67df8597acf403358d72c4bf572496781db7f42b1c6237eeab6793",
  "kind": "instance",
  "lexical_name": "Cauchy.divisionRing",
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
  "slug": "cauchy-divisionring--0851198757215d30b224caee",
  "source": {
    "blob": "8a18a81505bfb6458ba3b16a25ba63dcd7f16948",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 253,
    "line": 238,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Completion/Variantfd577c07187e3c369b475b9f5e111e786239e3d7ee96a6fe7629a29d063758d8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0851198757215d30b224caee88eca4b864ce2eee3a40e905e9a2ac25babc6bd0",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Completion/Variantfd577c07187e3c369b475b9f5e111e786239e3d7ee96a6fe7629a29d063758d8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:33c1a085dc67df8597acf403358d72c4bf572496781db7f42b1c6237eeab6793`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 238–253.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable instance Cauchy.divisionRing : DivisionRing (Cauchy abv) where
  exists_pair_ne := ⟨0, 1, zero_ne_one⟩
  inv_zero := inv_zero
  mul_inv_cancel _ := CauSeq.Completion.mul_inv_cancel
  nnqsmul := (· • ·)
  qsmul := (· • ·)
  nnratCast_def q := by simp_rw [← ofRat_nnratCast, NNRat.cast_def, ofRat_div, ofRat_natCast]
  ratCast_def q := by rw [← ofRat_ratCast, Rat.cast_def, ofRat_div, ofRat_natCast, ofRat_intCast]
  nnqsmul_def _ x := Quotient.inductionOn x fun _ ↦ congr_arg mk <| ext fun _ ↦ NNRat.smul_def _ _
  qsmul_def _ x := Quotient.inductionOn x fun _ ↦ congr_arg mk <| ext fun _ ↦ Rat.smul_def _ _

/-- Show the first 10 items of a representative of this equivalence class of cauchy sequences.

The representative chosen is the one passed in the VM to `Quot.mk`, so two cauchy sequences
converging to the same number may be printed differently.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Completion/Variantfd577c07187e3c369b475b9f5e111e786239e3d7ee96a6fe7629a29d063758d8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Completion/Variantfd577c07187e3c369b475b9f5e111e786239e3d7ee96a6fe7629a29d063758d8.lean#L238).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8a18a81505bfb6458ba3b16a25ba63dcd7f16948` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
