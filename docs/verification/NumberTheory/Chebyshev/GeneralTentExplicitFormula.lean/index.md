# Verification target: GRWTSK.NumberTheory.Chebyshev.GeneralTentExplicitFormula

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1029daef4e33c6e277ab5dfd86840ac977cefb56",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Chebyshev/GeneralTentExplicitFormula.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Chebyshev/GeneralTentExplicitFormula.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Chebyshev/GeneralTentExplicitFormula.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1029daef4e33c6e277ab5dfd86840ac977cefb56`.

Source path: `GRWTSK/NumberTheory/Chebyshev/GeneralTentExplicitFormula.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Chebyshev/GeneralTentExplicitFormula.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Chebyshev.CanonicalTentExplicitFormula`](../../../../mathematics/NumberTheory/Chebyshev/CanonicalTentExplicitFormula.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.NumberTheory.LSeries.TentPairing`](../../../../mathematics/NumberTheory/LSeries/TentPairing.lean/index.md) — import line 5; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [tentMangoldt](../../../../mathematics/NumberTheory/Chebyshev/GeneralTentExplicitFormula.lean/declarations/tentmangoldt--09999a3dc9bb2827e1df96a1.md) | 34 | `declaration-track:09999a3dc9bb2827e1df96a1538d25b487aa733a6990a0fd50c117c680e958f0` |
| 2 | `theorem` | [tentMangoldt_eq_rightLine](../../../../mathematics/NumberTheory/Chebyshev/GeneralTentExplicitFormula.lean/declarations/tentmangoldt-eq-rightline--0d7b1f8035f2519435a0f34f.md) | 37 | `result-track:0d7b1f8035f2519435a0f34f97ba0b411c45344d5f60f7d6cbaa2d5045161dc8` |
| 3 | `theorem` | [separated_right_tendsto_tentMangoldt](../../../../mathematics/NumberTheory/Chebyshev/GeneralTentExplicitFormula.lean/declarations/separated-right-tendsto-tentmangoldt--19385a9afe3c60a2f4b5c8a6.md) | 46 | `result-track:19385a9afe3c60a2f4b5c8a6d4a0955eedce43ca89deb1b4387d86b2ce7bae03` |
| 4 | `theorem` | [general_residues_tendsto_source](../../../../mathematics/NumberTheory/Chebyshev/GeneralTentExplicitFormula.lean/declarations/general-residues-tendsto-source--8bcfe3039c8c42a0e57ae195.md) | 60 | `result-track:8bcfe3039c8c42a0e57ae195e93191ef9d44f476a2cc97df8462ae1a4ee29e7b` |
| 5 | `theorem` | [general_tent_source_eq_tsum](../../../../mathematics/NumberTheory/Chebyshev/GeneralTentExplicitFormula.lean/declarations/general-tent-source-eq-tsum--ca9ed9c227c5541d60ebd168.md) | 82 | `result-track:ca9ed9c227c5541d60ebd168d99926dc969d49620e4f4f251114ebe6e51c5a2d` |
| 6 | `theorem` | [norm_general_tent_sub_head_le](../../../../mathematics/NumberTheory/Chebyshev/GeneralTentExplicitFormula.lean/declarations/norm-general-tent-sub-head-le--8b4c431a19a7113e2e6bc9b0.md) | 93 | `result-track:8b4c431a19a7113e2e6bc9b061a674fe577cc0c8dfc45fe3a151aaa0a01f801c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
