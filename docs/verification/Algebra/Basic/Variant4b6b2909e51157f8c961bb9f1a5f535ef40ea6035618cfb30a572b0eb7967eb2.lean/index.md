# Verification target: GRWTSK.Algebra.Basic.Variant4b6b2909e51157f8c961bb9f1a5f535ef40ea6035618cfb30a572b0eb7967eb2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e0036d9b215c37edfc7ec06726aaa79ff964626f",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Basic/Variant4b6b2909e51157f8c961bb9f1a5f535ef40ea6035618cfb30a572b0eb7967eb2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Basic/Variant4b6b2909e51157f8c961bb9f1a5f535ef40ea6035618cfb30a572b0eb7967eb2.lean/index.md) · [Full source](../../../../mathematics/Algebra/Basic/Variant4b6b2909e51157f8c961bb9f1a5f535ef40ea6035618cfb30a572b0eb7967eb2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e0036d9b215c37edfc7ec06726aaa79ff964626f`.

Source path: `GRWTSK/Algebra/Basic/Variant4b6b2909e51157f8c961bb9f1a5f535ef40ea6035618cfb30a572b0eb7967eb2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Basic/Variant4b6b2909e51157f8c961bb9f1a5f535ef40ea6035618cfb30a572b0eb7967eb2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Ideal.Over` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Polynomial.RationalRoot` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [Ring.DimensionLEOne](../../../../mathematics/Algebra/Basic/Variant4b6b2909e51157f8c961bb9f1a5f535ef40ea6035618cfb30a572b0eb7967eb2.lean/declarations/ring-dimensionleone--00d17dc592248681a1bdbd26.md) | 56 | `declaration-track:00d17dc592248681a1bdbd26efc18a932de8ea890b26cc6657cdc53f5b94a933` |
| 2 | `theorem` | [Ideal.IsPrime.isMaximal](../../../../mathematics/Algebra/Basic/Variant4b6b2909e51157f8c961bb9f1a5f535ef40ea6035618cfb30a572b0eb7967eb2.lean/declarations/ideal-isprime-ismaximal--d953f1a9bd78f04703b869ec.md) | 62 | `result-track:d953f1a9bd78f04703b869ec597d28623e908ff7aa55962bc19040fbbac7ae33` |
| 3 | `instance` | [DimensionLEOne.principal_ideal_ring](../../../../mathematics/Algebra/Basic/Variant4b6b2909e51157f8c961bb9f1a5f535ef40ea6035618cfb30a572b0eb7967eb2.lean/declarations/dimensionleone-principal-ideal-ring--7eccd341cda0ad554c48889b.md) | 68 | `declaration-track:7eccd341cda0ad554c48889bd8fa9a65a1add069126f9294f92e219e0aa9ddcd` |
| 4 | `theorem` | [DimensionLEOne.isIntegralClosure](../../../../mathematics/Algebra/Basic/Variant4b6b2909e51157f8c961bb9f1a5f535ef40ea6035618cfb30a572b0eb7967eb2.lean/declarations/dimensionleone-isintegralclosure--1907ca41f7180565ea32467e.md) | 74 | `result-track:1907ca41f7180565ea32467eda4976a66fccb113caecf857fbe74a421dfb22b4` |
| 5 | `instance` | [DimensionLEOne.integralClosure](../../../../mathematics/Algebra/Basic/Variant4b6b2909e51157f8c961bb9f1a5f535ef40ea6035618cfb30a572b0eb7967eb2.lean/declarations/dimensionleone-integralclosure--aed5e1c8080ebb6338088de5.md) | 82 | `declaration-track:aed5e1c8080ebb6338088de5ec3710136ef5bea2d545050d82a07c8802d4c34f` |
| 6 | `theorem` | [DimensionLEOne.not_lt_lt](../../../../mathematics/Algebra/Basic/Variant4b6b2909e51157f8c961bb9f1a5f535ef40ea6035618cfb30a572b0eb7967eb2.lean/declarations/dimensionleone-not-lt-lt--60bff2d0bfabed654c9a2dd4.md) | 89 | `result-track:60bff2d0bfabed654c9a2dd457ddfc5f70e3b42b9f72ee9ae8ecfddcaab29c8b` |
| 7 | `theorem` | [DimensionLEOne.eq_bot_of_lt](../../../../mathematics/Algebra/Basic/Variant4b6b2909e51157f8c961bb9f1a5f535ef40ea6035618cfb30a572b0eb7967eb2.lean/declarations/dimensionleone-eq-bot-of-lt--d79b3d3402d3ecd93b0b2a12.md) | 94 | `result-track:d79b3d3402d3ecd93b0b2a1202856c4486dba51d84bdb4977652f82b33153554` |
| 8 | `class` | [IsDedekindDomain](../../../../mathematics/Algebra/Basic/Variant4b6b2909e51157f8c961bb9f1a5f535ef40ea6035618cfb30a572b0eb7967eb2.lean/declarations/isdedekinddomain--5def973010c49aff8a04a64f.md) | 113 | `declaration-track:5def973010c49aff8a04a64f2a7c7cf8b82cd8f5971ca76194c2a2b19dd9be21` |
| 9 | `theorem` | [isDedekindDomain_iff](../../../../mathematics/Algebra/Basic/Variant4b6b2909e51157f8c961bb9f1a5f535ef40ea6035618cfb30a572b0eb7967eb2.lean/declarations/isdedekinddomain-iff--ad815402293be66842690003.md) | 120 | `result-track:ad815402293be6684269000395bbd504545747001674f4b8d3c0a68267b30310` |
| 10 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variant4b6b2909e51157f8c961bb9f1a5f535ef40ea6035618cfb30a572b0eb7967eb2.lean/declarations/instance--5609a20da57d3771db0c5a28.md) | 130 | `declaration-track:5609a20da57d3771db0c5a2844e7a793b7d19a2844022d450f764efea12054a1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
