# exists_rat_eq_of_terminates

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:97ee28dd-a908-c3cf-111e-8973443db6d7",
  "kind": "theorem",
  "lexical_name": "exists_rat_eq_of_terminates",
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
  "slug": "exists-rat-eq-of-terminates--52c90ba420c296f90e8451db",
  "source": {
    "blob": "eb5a3e3e8744b0ccc132946edfddaa0f628a0761",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 178,
    "line": 138,
    "path": "GRWTSK/Algebra/UniversalAlgebra/TerminatesIffRat/Variant474db4a3d5ba4542b4bd9f8786171177283921ff6a7e185e8abe89d4706354c8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:52c90ba420c296f90e8451dbe60a6620b1e3daadcf87bbdb399e962caf021deb",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/TerminatesIffRat/Variant474db4a3d5ba4542b4bd9f8786171177283921ff6a7e185e8abe89d4706354c8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:97ee28dd-a908-c3cf-111e-8973443db6d7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 138–178.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
theorem exists_rat_eq_of_terminates (terminates : (of v).Terminates) : ∃ q : ℚ, v = ↑q := by
  obtain ⟨n, v_eq_conv⟩ : ∃ n, v = (of v).convergents n;
  exact of_correctness_of_terminates terminates
  obtain ⟨q, conv_eq_q⟩ : ∃ q : ℚ, (of v).convergents n = (↑q : K)
  exact exists_rat_eq_nth_convergent v n
  have : v = (↑q : K) := Eq.trans v_eq_conv conv_eq_q
  use q, this
#align generalized_continued_fraction.exists_rat_eq_of_terminates GeneralizedContinuedFraction.exists_rat_eq_of_terminates

end RatOfTerminates

section RatTranslation

/-!
### Technical Translation Lemmas

Before we can show that the continued fraction of a rational number terminates, we have to prove
some technical translation lemmas. More precisely, in this section, we show that, given a rational
number `q : ℚ` and value `v : K` with `v = ↑q`, the continued fraction of `q` and `v` coincide.
In particular, we show that
```lean
    (↑(GeneralizedContinuedFraction.of q : GeneralizedContinuedFraction ℚ)
      : GeneralizedContinuedFraction K)
  = GeneralizedContinuedFraction.of v`
```
in `generalized_continued_fraction.coe_of_rat`.

To do this, we proceed bottom-up, showing the correspondence between the basic functions involved in
the Computation first and then lift the results step-by-step.
-/


-- The lifting works for arbitrary linear ordered fields with a floor function.
variable {v : K} {q : ℚ} (v_eq_q : v = (↑q : K)) (n : ℕ)

/-! First, we show the correspondence for the very basic functions in
`GeneralizedContinuedFraction.IntFractPair`. -/


namespace IntFractPair

````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/TerminatesIffRat/Variant474db4a3d5ba4542b4bd9f8786171177283921ff6a7e185e8abe89d4706354c8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/TerminatesIffRat/Variant474db4a3d5ba4542b4bd9f8786171177283921ff6a7e185e8abe89d4706354c8.lean#L138).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eb5a3e3e8744b0ccc132946edfddaa0f628a0761` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
