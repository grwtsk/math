# add

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e1569713ecab5dc36078b61178e0392fa284ef5e53bffd352533bbe9df6fc055",
  "kind": "def",
  "lexical_name": "add",
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
  "slug": "add--42a2c8b630cdeea3a136afa4",
  "source": {
    "blob": "8665646926aa906ea2dc54a0cb34b8fb656ece0e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 143,
    "line": 125,
    "path": "GRWTSK/Algebra/GroupTheory/Basic/Variant8ac4acee3ff93d5e06363eac8a0e2da73e1e0c8f0672b2454bba82176e137131.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:42a2c8b630cdeea3a136afa459dd91f730d67db4d7e2966d35aac5e01f0a21a3",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Basic/Variant8ac4acee3ff93d5e06363eac8a0e2da73e1e0c8f0672b2454bba82176e137131.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e1569713ecab5dc36078b61178e0392fa284ef5e53bffd352533bbe9df6fc055`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 125–143.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def add : X[S⁻¹] → X[S⁻¹] → X[S⁻¹] := fun x =>
  Quotient.lift (fun rs : X × S => add' rs.1 rs.2 x)
    (by
      rintro ⟨r₁, s₁⟩ ⟨r₂, s₂⟩ ⟨sb, rb, hb, hb'⟩
      induction' x with r₃ s₃
      show add'' _ _ _ _ = add'' _ _ _ _
      dsimp only at *
      rcases oreCondition (s₃ : R) s₂ with ⟨rc, sc, hc⟩
      rcases oreCondition rc sb with ⟨rd, sd, hd⟩
      have : rd * rb * s₁ = sd * sc * s₃ := by
        rw [mul_assoc, ← hb', ← mul_assoc, ← hd, mul_assoc, ← hc, mul_assoc]
      rw [add''_char _ _ _ _ rc sc hc (sc * s₃).2]
      rw [add''_char _ _ _ _ _ _ this.symm (sd * sc * s₃).2]
      refine oreDiv_eq_iff.mpr ?_
      simp only [Submonoid.mk_smul, smul_add]
      use sd, 1
      simp only [one_smul, one_mul, mul_smul, ← hb, Submonoid.smul_def, ← mul_assoc, and_true]
      simp only [smul_smul, hd])

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Basic/Variant8ac4acee3ff93d5e06363eac8a0e2da73e1e0c8f0672b2454bba82176e137131.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Basic/Variant8ac4acee3ff93d5e06363eac8a0e2da73e1e0c8f0672b2454bba82176e137131.lean#L125).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8665646926aa906ea2dc54a0cb34b8fb656ece0e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
