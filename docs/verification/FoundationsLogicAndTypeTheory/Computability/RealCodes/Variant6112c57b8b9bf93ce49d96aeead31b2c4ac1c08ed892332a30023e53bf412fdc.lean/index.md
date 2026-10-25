# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.Computability.RealCodes.Variant6112c57b8b9bf93ce49d96aeead31b2c4ac1c08ed892332a30023e53bf412fdc

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1828fcfe54489442372fb2b644d8519c3df88f8a",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/Computability/RealCodes/Variant6112c57b8b9bf93ce49d96aeead31b2c4ac1c08ed892332a30023e53bf412fdc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/RealCodes/Variant6112c57b8b9bf93ce49d96aeead31b2c4ac1c08ed892332a30023e53bf412fdc.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/RealCodes/Variant6112c57b8b9bf93ce49d96aeead31b2c4ac1c08ed892332a30023e53bf412fdc.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1828fcfe54489442372fb2b644d8519c3df88f8a`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/Computability/RealCodes/Variant6112c57b8b9bf93ce49d96aeead31b2c4ac1c08ed892332a30023e53bf412fdc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/Computability/RealCodes/Variant6112c57b8b9bf93ce49d96aeead31b2c4ac1c08ed892332a30023e53bf412fdc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Surface.Legacy.BinaryLogicMatrix.Rational` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ComputableAlgebraicMatrixCode](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/RealCodes/Variant6112c57b8b9bf93ce49d96aeead31b2c4ac1c08ed892332a30023e53bf412fdc.lean/declarations/computablealgebraicmatrixcode--05ee8e212b2b81d196581eac.md) | 13 | `declaration-track:05ee8e212b2b81d196581eac485e28edccc617bf0f61ce8816ffcc2f5eb1d724` |
| 2 | `structure` | [OracleRealMatrixCode](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/RealCodes/Variant6112c57b8b9bf93ce49d96aeead31b2c4ac1c08ed892332a30023e53bf412fdc.lean/declarations/oraclerealmatrixcode--f1202d3344c8512df69a27aa.md) | 18 | `declaration-track:f1202d3344c8512df69a27aa0dd7b891b4a2acae1fc45813a2e4c1beefd8115e` |
| 3 | `theorem` | [computable_algebraic_certificate_projects](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/RealCodes/Variant6112c57b8b9bf93ce49d96aeead31b2c4ac1c08ed892332a30023e53bf412fdc.lean/declarations/computable-algebraic-certificate-projects--abc2ef62d7f53911e24b5a7f.md) | 24 | `result-track:abc2ef62d7f53911e24b5a7feaa6272709b0b56f195bd70626289a28109eff47` |
| 4 | `theorem` | [oracle_real_is_oracle_relative](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/RealCodes/Variant6112c57b8b9bf93ce49d96aeead31b2c4ac1c08ed892332a30023e53bf412fdc.lean/declarations/oracle-real-is-oracle-relative--a5ad1c62848874f3383df705.md) | 30 | `result-track:a5ad1c62848874f3383df7051cc95e59ccf7ef19c3029139414ed7f9d42ceecf` |
| 5 | `theorem` | [oracle_real_boundary_visible](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/RealCodes/Variant6112c57b8b9bf93ce49d96aeead31b2c4ac1c08ed892332a30023e53bf412fdc.lean/declarations/oracle-real-boundary-visible--5893c82019bb299525ddfaf6.md) | 36 | `result-track:5893c82019bb299525ddfaf6f82edc5f4f235924214888008fe14edc3d145b8a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
