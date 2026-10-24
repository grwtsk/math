# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.FinitePrimeState.Variantdd94d3684faddd514746f50e40ec6bef31ac4a9172200ec8c29d64cffca06ae8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ac2970a0ef04c2c0bc7ab8b9ff3422cef3fa3696",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/FinitePrimeState/Variantdd94d3684faddd514746f50e40ec6bef31ac4a9172200ec8c29d64cffca06ae8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FinitePrimeState/Variantdd94d3684faddd514746f50e40ec6bef31ac4a9172200ec8c29d64cffca06ae8.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FinitePrimeState/Variantdd94d3684faddd514746f50e40ec6bef31ac4a9172200ec8c29d64cffca06ae8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ac2970a0ef04c2c0bc7ab8b9ff3422cef3fa3696`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/FinitePrimeState/Variantdd94d3684faddd514746f50e40ec6bef31ac4a9172200ec8c29d64cffca06ae8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/FinitePrimeState/Variantdd94d3684faddd514746f50e40ec6bef31ac4a9172200ec8c29d64cffca06ae8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.Prismatic.PrimeFiber` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [FinitePrimeState](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FinitePrimeState/Variantdd94d3684faddd514746f50e40ec6bef31ac4a9172200ec8c29d64cffca06ae8.lean/declarations/finiteprimestate--06b714f647cbd7c79767e06d.md) | 28 | `declaration-track:06b714f647cbd7c79767e06d0bf946817a05f522577bfcdc2cfe6d80b6ab142a` |
| 2 | `theorem` | [primeCertified](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FinitePrimeState/Variantdd94d3684faddd514746f50e40ec6bef31ac4a9172200ec8c29d64cffca06ae8.lean/declarations/primecertified--3e953667df531ba77bdabb1d.md) | 40 | `result-track:3e953667df531ba77bdabb1d2c946451eb13780e28cf28176a51c48e3ec22245` |
| 3 | `def` | [fiberAt](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FinitePrimeState/Variantdd94d3684faddd514746f50e40ec6bef31ac4a9172200ec8c29d64cffca06ae8.lean/declarations/fiberat--e3facf1a77b7ea8512b79975.md) | 48 | `declaration-track:e3facf1a77b7ea8512b799752349f2c600f715ec95576bb561848d8a7de2844f` |
| 4 | `def` | [fiberAddress](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FinitePrimeState/Variantdd94d3684faddd514746f50e40ec6bef31ac4a9172200ec8c29d64cffca06ae8.lean/declarations/fiberaddress--2ec8bb55fee29cbcecd5dcb1.md) | 60 | `declaration-track:2ec8bb55fee29cbcecd5dcb1dfbc0329dc7f6b52f8b5be39f170b9246857ad3e` |
| 5 | `def` | [fiberObjectAddress](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FinitePrimeState/Variantdd94d3684faddd514746f50e40ec6bef31ac4a9172200ec8c29d64cffca06ae8.lean/declarations/fiberobjectaddress--9ed0561944bba842d9f302f2.md) | 68 | `declaration-track:9ed0561944bba842d9f302f221acba15d85c8f81d249b3b9a05f0e057cfd6aff` |
| 6 | `structure` | [CertifiedPrimeExtension](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FinitePrimeState/Variantdd94d3684faddd514746f50e40ec6bef31ac4a9172200ec8c29d64cffca06ae8.lean/declarations/certifiedprimeextension--e770858f0e0b709c55162f28.md) | 78 | `declaration-track:e770858f0e0b709c55162f282079392401fb69ab46efed012ce8fa040e703325` |
| 7 | `theorem` | [newPrime_mem_target](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FinitePrimeState/Variantdd94d3684faddd514746f50e40ec6bef31ac4a9172200ec8c29d64cffca06ae8.lean/declarations/newprime-mem-target--76ba726d3638358dc60bd177.md) | 104 | `result-track:76ba726d3638358dc60bd177830a17ee5330093f31ca7357f9ff93a529dc933e` |
| 8 | `theorem` | [oldFiber_typed_preserved](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FinitePrimeState/Variantdd94d3684faddd514746f50e40ec6bef31ac4a9172200ec8c29d64cffca06ae8.lean/declarations/oldfiber-typed-preserved--5ed15731f9f3204be281d241.md) | 112 | `result-track:5ed15731f9f3204be281d241b27b3b979036ec1f316ae79d96848d4d99686519` |
| 9 | `theorem` | [newFiber_typed_preserved](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FinitePrimeState/Variantdd94d3684faddd514746f50e40ec6bef31ac4a9172200ec8c29d64cffca06ae8.lean/declarations/newfiber-typed-preserved--cfbe972c5fe26e94dbb20c64.md) | 124 | `result-track:cfbe972c5fe26e94dbb20c64ea1611fa42d0564f897a77f6313d40a808e8ae06` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
