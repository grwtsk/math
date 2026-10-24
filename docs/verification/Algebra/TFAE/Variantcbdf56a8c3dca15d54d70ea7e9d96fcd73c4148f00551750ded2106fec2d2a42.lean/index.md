# Verification target: GRWTSK.Algebra.TFAE.Variantcbdf56a8c3dca15d54d70ea7e9d96fcd73c4148f00551750ded2106fec2d2a42

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2fa9d6e7743e3db96a5cbea729f5e60dfde748a8",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/TFAE/Variantcbdf56a8c3dca15d54d70ea7e9d96fcd73c4148f00551750ded2106fec2d2a42.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/TFAE/Variantcbdf56a8c3dca15d54d70ea7e9d96fcd73c4148f00551750ded2106fec2d2a42.lean/index.md) · [Full source](../../../../mathematics/Algebra/TFAE/Variantcbdf56a8c3dca15d54d70ea7e9d96fcd73c4148f00551750ded2106fec2d2a42.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2fa9d6e7743e3db96a5cbea729f5e60dfde748a8`.

Source path: `GRWTSK/Algebra/TFAE/Variantcbdf56a8c3dca15d54d70ea7e9d96fcd73c4148f00551750ded2106fec2d2a42.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/TFAE/Variantcbdf56a8c3dca15d54d70ea7e9d96fcd73c4148f00551750ded2106fec2d2a42.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.DedekindDomain.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.DiscreteValuationRing.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Finiteness.Ideal` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.Cotangent` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [exists_maximalIdeal_pow_eq_of_principal](../../../../mathematics/Algebra/TFAE/Variantcbdf56a8c3dca15d54d70ea7e9d96fcd73c4148f00551750ded2106fec2d2a42.lean/declarations/exists-maximalideal-pow-eq-of-principal--8e26b3c3a0a465e1e571b9a0.md) | 43 | `result-track:8e26b3c3a0a465e1e571b9a07604ea4e60bcfc3d056bff14a3c776836c11d5e7` |
| 2 | `theorem` | [maximalIdeal_isPrincipal_of_isDedekindDomain](../../../../mathematics/Algebra/TFAE/Variantcbdf56a8c3dca15d54d70ea7e9d96fcd73c4148f00551750ded2106fec2d2a42.lean/declarations/maximalideal-isprincipal-of-isdedekinddomain--5fe60a18631a4b29b223062e.md) | 98 | `result-track:5fe60a18631a4b29b223062e0794c8a21daf0e612e15af28e9dbdf211223e60e` |
| 3 | `theorem` | [tfae_of_isNoetherianRing_of_isLocalRing_of_isDomain](../../../../mathematics/Algebra/TFAE/Variantcbdf56a8c3dca15d54d70ea7e9d96fcd73c4148f00551750ded2106fec2d2a42.lean/declarations/tfae-of-isnoetherianring-of-islocalring-of-isdomain--1bc32512fede7fec244651db.md) | 171 | `result-track:1bc32512fede7fec244651db5e38e133f87f71cf26f4e03bb69dff5e8e06f152` |
| 4 | `theorem` | [IsDiscreteValuationRing.TFAE](../../../../mathematics/Algebra/TFAE/Variantcbdf56a8c3dca15d54d70ea7e9d96fcd73c4148f00551750ded2106fec2d2a42.lean/declarations/isdiscretevaluationring-tfae--0ba1640a0bc326286e159d5d.md) | 213 | `result-track:0ba1640a0bc326286e159d5da59bb675400e3735abc944d35a033e42761dfb78` |
| 5 | `lemma` | [IsLocalRing.finrank_CotangentSpace_eq_one_iff](../../../../mathematics/Algebra/TFAE/Variantcbdf56a8c3dca15d54d70ea7e9d96fcd73c4148f00551750ded2106fec2d2a42.lean/declarations/islocalring-finrank-cotangentspace-eq-one-iff--ba47c7dcadf3ff64a240157a.md) | 232 | `result-track:ba47c7dcadf3ff64a240157a433edf7018267d692ac39bd627f56de36686fdef` |
| 6 | `lemma` | [IsLocalRing.finrank_CotangentSpace_eq_one](../../../../mathematics/Algebra/TFAE/Variantcbdf56a8c3dca15d54d70ea7e9d96fcd73c4148f00551750ded2106fec2d2a42.lean/declarations/islocalring-finrank-cotangentspace-eq-one--f66e74e7b0a8f9167b47e178.md) | 245 | `result-track:f66e74e7b0a8f9167b47e1788e60c57c4d75a1e48c0e1096fc8ba9dbe521ab8a` |
| 7 | `instance` | [(anonymous)](../../../../mathematics/Algebra/TFAE/Variantcbdf56a8c3dca15d54d70ea7e9d96fcd73c4148f00551750ded2106fec2d2a42.lean/declarations/instance--4f0eb9b61ddcb47f99ebb1ab.md) | 252 | `declaration-track:4f0eb9b61ddcb47f99ebb1ab44f5f5ea9e138d390c819a4ccaded57f4af964cb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
