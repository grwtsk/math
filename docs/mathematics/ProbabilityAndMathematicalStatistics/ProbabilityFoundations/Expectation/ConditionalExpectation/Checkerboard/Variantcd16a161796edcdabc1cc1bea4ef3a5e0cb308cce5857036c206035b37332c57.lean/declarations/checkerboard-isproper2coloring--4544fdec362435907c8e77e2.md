# checkerboard_isProper2Coloring

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3424d53a-e40a-3f3c-3f5d-c99f864a9bbf",
  "kind": "theorem",
  "lexical_name": "checkerboard_isProper2Coloring",
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
  "slug": "checkerboard-isproper2coloring--4544fdec362435907c8e77e2",
  "source": {
    "blob": "40bce8b0b3aa0b4a3c840ee0b939d86eb509c866",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 139,
    "line": 72,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/Checkerboard/Variantcd16a161796edcdabc1cc1bea4ef3a5e0cb308cce5857036c206035b37332c57.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4544fdec362435907c8e77e2b986470b3bcf4fc4c4eab3586988e3c6c7c52e37",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/Checkerboard/Variantcd16a161796edcdabc1cc1bea4ef3a5e0cb308cce5857036c206035b37332c57.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3424d53a-e40a-3f3c-3f5d-c99f864a9bbf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 72–139.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem checkerboard_isProper2Coloring
    (m n : Nat) :
    IsProper2Coloring (checkerboard m n) := by
  intro a b hab
  rcases hab with ⟨hrow, hcol⟩ | ⟨hcol, hrow⟩
  · have hrval : a.1.val = b.1.val := congrArg Fin.val hrow
    rcases hcol with h | h
    · intro heq
      have heqBits :
          (((a.1.val + a.2.val : Nat) : Bit) =
            ((b.1.val + b.2.val : Nat) : Bit)) := by
        change (((a.1.val + a.2.val : Nat) : Bit) =
          ((b.1.val + b.2.val : Nat) : Bit)) at heq
        exact heq
      have hflipEq :
          (((a.1.val + b.2.val : Nat) : Bit) =
            ((a.1.val + a.2.val : Nat) : Bit)) := by
        simpa [hrval] using heqBits.symm
      exact Carrier.Bit.flip_ne_self (((a.1.val + a.2.val : Nat) : Bit)) (by
        rw [← step_flip (r := a.1.val) h]
        exact hflipEq)
    · intro heq
      have heqBits :
          (((a.1.val + a.2.val : Nat) : Bit) =
            ((b.1.val + b.2.val : Nat) : Bit)) := by
        change (((a.1.val + a.2.val : Nat) : Bit) =
          ((b.1.val + b.2.val : Nat) : Bit)) at heq
        exact heq
      have hflipEq :
          (((a.1.val + a.2.val : Nat) : Bit) =
            ((a.1.val + b.2.val : Nat) : Bit)) := by
        simpa [hrval] using heqBits
      exact Carrier.Bit.flip_ne_self (((a.1.val + b.2.val : Nat) : Bit)) (by
        rw [← step_flip (r := a.1.val) h]
        exact hflipEq)
  · have hcval : a.2.val = b.2.val := congrArg Fin.val hcol
    rcases hrow with h | h
    · intro heq
      have heqBits :
          (((a.1.val + a.2.val : Nat) : Bit) =
            ((b.1.val + b.2.val : Nat) : Bit)) := by
        change (((a.1.val + a.2.val : Nat) : Bit) =
          ((b.1.val + b.2.val : Nat) : Bit)) at heq
        exact heq
      have hflipEq :
          (((a.2.val + b.1.val : Nat) : Bit) =
            ((a.2.val + a.1.val : Nat) : Bit)) := by
        simpa [hcval, Nat.add_comm, Nat.add_left_comm, Nat.add_assoc]
          using heqBits.symm
      exact Carrier.Bit.flip_ne_self (((a.2.val + a.1.val : Nat) : Bit)) (by
        rw [← step_flip (r := a.2.val) h]
        exact hflipEq)
    · intro heq
      have heqBits :
          (((a.1.val + a.2.val : Nat) : Bit) =
            ((b.1.val + b.2.val : Nat) : Bit)) := by
        change (((a.1.val + a.2.val : Nat) : Bit) =
          ((b.1.val + b.2.val : Nat) : Bit)) at heq
        exact heq
      have hflipEq :
          (((a.2.val + a.1.val : Nat) : Bit) =
            ((a.2.val + b.1.val : Nat) : Bit)) := by
        simpa [hcval, Nat.add_comm, Nat.add_left_comm, Nat.add_assoc]
          using heqBits
      exact Carrier.Bit.flip_ne_self (((a.2.val + b.1.val : Nat) : Bit)) (by
        rw [← step_flip (r := a.2.val) h]
        exact hflipEq)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/Checkerboard/Variantcd16a161796edcdabc1cc1bea4ef3a5e0cb308cce5857036c206035b37332c57.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/Checkerboard/Variantcd16a161796edcdabc1cc1bea4ef3a5e0cb308cce5857036c206035b37332c57.lean#L72).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `40bce8b0b3aa0b4a3c840ee0b939d86eb509c866` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
