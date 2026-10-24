# no_scalar_left_extension_of_negative_return

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c104064b-bbff-7891-bfd7-dffea774ba21",
  "kind": "theorem",
  "lexical_name": "no_scalar_left_extension_of_negative_return",
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
  "slug": "no-scalar-left-extension-of-negative-return--d5da4deb3c5d61ecf130c418",
  "source": {
    "blob": "ccf125d739b20575c81c45f1ea05ff4c11be35a5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 144,
    "line": 93,
    "path": "GRWTSK/NumberTheory/Farey/TurnwiseScalarObstruction.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d5da4deb3c5d61ecf130c418db34260dd904941ec8640e789c8bb0b82e7ac261",
  "verification": {
    "reference": "docs/verification/NumberTheory/Farey/TurnwiseScalarObstruction.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c104064b-bbff-7891-bfd7-dffea774ba21`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 93–144.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem no_scalar_left_extension_of_negative_return
    (f : Vec3 → ℂ) (a : ℂ)
    (hLeft : ∀ v, f (leftStep v) = a * f v)
    (hReturn :
      f (modThreeReturn.mulVec (residueOrbit (0 : Fin 4))) =
        -f (residueOrbit (0 : Fin 4)))
    (hNonzero : f (residueOrbit (0 : Fin 4)) ≠ 0) : False := by
  have h0 : f (residueOrbit (1 : Fin 4)) =
      a * f (residueOrbit (0 : Fin 4)) := by
    simpa only [leftStep_zero] using hLeft (residueOrbit 0)
  have h1 : f leftThird =
      a * f (residueOrbit (1 : Fin 4)) := by
    simpa only [leftStep_one] using hLeft (residueOrbit 1)
  have h2 : f (residueOrbit (0 : Fin 4)) = a * f leftThird := by
    simpa only [leftStep_two] using hLeft leftThird
  have hH : f (residueOrbit (1 : Fin 4)) =
      -f (residueOrbit (0 : Fin 4)) := by
    simpa only [returnStep_zero] using hReturn
  have hmul : (a + 1) * f (residueOrbit (0 : Fin 4)) = 0 := by
    calc
      (a + 1) * f (residueOrbit (0 : Fin 4)) =
          a * f (residueOrbit (0 : Fin 4)) +
            f (residueOrbit (0 : Fin 4)) := by ring
      _ = f (residueOrbit (1 : Fin 4)) +
            f (residueOrbit (0 : Fin 4)) := by rw [h0]
      _ = 0 := by rw [hH]; ring
  have ha : a = -1 := by
    have hh : a + 1 = 0 :=
      (mul_eq_zero.mp hmul).resolve_right hNonzero
    linear_combination hh
  have hcycle : f (residueOrbit (0 : Fin 4)) =
      a ^ 3 * f (residueOrbit (0 : Fin 4)) := by
    calc
      f (residueOrbit (0 : Fin 4)) = a * f leftThird := h2
      _ = a * (a * f (residueOrbit (1 : Fin 4))) := by rw [h1]
      _ = a * (a * (a * f (residueOrbit (0 : Fin 4)))) := by rw [h0]
      _ = a ^ 3 * f (residueOrbit (0 : Fin 4)) := by ring
  have hneg : f (residueOrbit (0 : Fin 4)) =
      -(f (residueOrbit (0 : Fin 4))) := by
    simpa only [ha, show (-1 : ℂ) ^ 3 = -1 by norm_num, neg_one_mul] using hcycle
  have hzero : f (residueOrbit (0 : Fin 4)) = 0 := by
    have htwice : (2 : ℂ) * f (residueOrbit (0 : Fin 4)) = 0 := by
      calc
        (2 : ℂ) * f (residueOrbit (0 : Fin 4)) =
            f (residueOrbit (0 : Fin 4)) +
              f (residueOrbit (0 : Fin 4)) := by ring
        _ = 0 := by linear_combination hneg
    exact (mul_eq_zero.mp htwice).resolve_left (by norm_num)
  exact hNonzero hzero

/-- The nonzero SOURCE quadratic H=-1 channel has no full-space
scalar eigenrelation for the individual L generator. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Farey/TurnwiseScalarObstruction.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Farey/TurnwiseScalarObstruction.lean#L93).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ccf125d739b20575c81c45f1ea05ff4c11be35a5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
