# Verification target: GRWTSK.Algebra.Profinite.Variant6ed9453247c7d64a8c9ac3e6b9515d97d48facf2b8debb74f1546b80ddb8d6df

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2a16d714bbccb28eda032a355518d8853069d2f4",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Profinite/Variant6ed9453247c7d64a8c9ac3e6b9515d97d48facf2b8debb74f1546b80ddb8d6df.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Profinite/Variant6ed9453247c7d64a8c9ac3e6b9515d97d48facf2b8debb74f1546b80ddb8d6df.lean/index.md) · [Full source](../../../../mathematics/Algebra/Profinite/Variant6ed9453247c7d64a8c9ac3e6b9515d97d48facf2b8debb74f1546b80ddb8d6df.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2a16d714bbccb28eda032a355518d8853069d2f4`.

Source path: `GRWTSK/Algebra/Profinite/Variant6ed9453247c7d64a8c9ac3e6b9515d97d48facf2b8debb74f1546b80ddb8d6df.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Profinite/Variant6ed9453247c7d64a8c9ac3e6b9515d97d48facf2b8debb74f1546b80ddb8d6df.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Invariant.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.ClopenNhdofOne` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Category.ProfiniteGrp.Limits` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.CofilteredSystem` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [Algebra.IsInvariant.isIntegral_of_profinite](../../../../mathematics/Algebra/Profinite/Variant6ed9453247c7d64a8c9ac3e6b9515d97d48facf2b8debb74f1546b80ddb8d6df.lean/declarations/algebra-isinvariant-isintegral-of-profinite--8dbfe2ac8c457996cb05a7c7.md) | 42 | `result-track:8dbfe2ac8c457996cb05a7c74ae5d6b080474397229c275fedaa1fc26a4b7dbb` |
| 2 | `lemma` | [Algebra.IsInvariant.exists_smul_of_under_eq_of_profinite](../../../../mathematics/Algebra/Profinite/Variant6ed9453247c7d64a8c9ac3e6b9515d97d48facf2b8debb74f1546b80ddb8d6df.lean/declarations/algebra-isinvariant-exists-smul-of-under-eq-of-profinite--4a3b9081ef86e4b4f5d87afa.md) | 53 | `result-track:4a3b9081ef86e4b4f5d87afa4b3359f89fe5ca2091447ba8f21dc2c44376a4d2` |
| 3 | `lemma` | [Ideal.Quotient.stabilizerHomSurjectiveAuxFunctor_aux](../../../../mathematics/Algebra/Profinite/Variant6ed9453247c7d64a8c9ac3e6b9515d97d48facf2b8debb74f1546b80ddb8d6df.lean/declarations/ideal-quotient-stabilizerhomsurjectiveauxfunctor-aux--c8790867eaafde3c925673dc.md) | 103 | `result-track:c8790867eaafde3c925673dc932d6e3b2889c9fdc68d019b8d6ec01c3b0e7080` |
| 4 | `def` | [Ideal.Quotient.stabilizerHomSurjectiveAuxFunctor](../../../../mathematics/Algebra/Profinite/Variant6ed9453247c7d64a8c9ac3e6b9515d97d48facf2b8debb74f1546b80ddb8d6df.lean/declarations/ideal-quotient-stabilizerhomsurjectiveauxfunctor--0c618f0ee1f9eeff2b70d3e9.md) | 121 | `declaration-track:0c618f0ee1f9eeff2b70d3e95f6f134dcb1078c5ee19dcafe987bc937b707814` |
| 5 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Profinite/Variant6ed9453247c7d64a8c9ac3e6b9515d97d48facf2b8debb74f1546b80ddb8d6df.lean/declarations/instance--24991e7893d165cc7d1c445b.md) | 144 | `declaration-track:24991e7893d165cc7d1c445ba33237606628c58d2f4932e43702e58cf4e57584` |
| 6 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Profinite/Variant6ed9453247c7d64a8c9ac3e6b9515d97d48facf2b8debb74f1546b80ddb8d6df.lean/declarations/instance--d5d191ffa807a2d0fb66a14a.md) | 151 | `declaration-track:d5d191ffa807a2d0fb66a14a40870f5ced3c55f8bbdd4b25b2f992b7c6a08969` |
| 7 | `theorem` | [Ideal.Quotient.stabilizerHom_surjective_of_profinite](../../../../mathematics/Algebra/Profinite/Variant6ed9453247c7d64a8c9ac3e6b9515d97d48facf2b8debb74f1546b80ddb8d6df.lean/declarations/ideal-quotient-stabilizerhom-surjective-of-profinite--c61b26e6c6c77ad4133e4ade.md) | 167 | `result-track:c61b26e6c6c77ad4133e4adeffaaa8b77381ed36675692bbf0852f075f5c1147` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
