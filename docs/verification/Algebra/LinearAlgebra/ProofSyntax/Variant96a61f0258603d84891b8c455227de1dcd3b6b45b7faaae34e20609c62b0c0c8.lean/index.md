# Verification target: GRWTSK.Algebra.LinearAlgebra.ProofSyntax.Variant96a61f0258603d84891b8c455227de1dcd3b6b45b7faaae34e20609c62b0c0c8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bbf239e3577ade2ed5a227e3019367868c76c98f",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/ProofSyntax/Variant96a61f0258603d84891b8c455227de1dcd3b6b45b7faaae34e20609c62b0c0c8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/ProofSyntax/Variant96a61f0258603d84891b8c455227de1dcd3b6b45b7faaae34e20609c62b0c0c8.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/ProofSyntax/Variant96a61f0258603d84891b8c455227de1dcd3b6b45b7faaae34e20609c62b0c0c8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bbf239e3577ade2ed5a227e3019367868c76c98f`.

Source path: `GRWTSK/Algebra/LinearAlgebra/ProofSyntax/Variant96a61f0258603d84891b8c455227de1dcd3b6b45b7faaae34e20609c62b0c0c8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/ProofSyntax/Variant96a61f0258603d84891b8c455227de1dcd3b6b45b7faaae34e20609c62b0c0c8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Surface.Legacy.BinaryLogicMatrix.Core` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [ProofTerm](../../../../../mathematics/Algebra/LinearAlgebra/ProofSyntax/Variant96a61f0258603d84891b8c455227de1dcd3b6b45b7faaae34e20609c62b0c0c8.lean/declarations/proofterm--e50c52be7c16d512807a1e88.md) | 13 | `declaration-track:e50c52be7c16d512807a1e88e0fa374f8326bfaded8713bdd6b67af37f7c501f` |
| 2 | `structure` | [ProofTermMatrixCode](../../../../../mathematics/Algebra/LinearAlgebra/ProofSyntax/Variant96a61f0258603d84891b8c455227de1dcd3b6b45b7faaae34e20609c62b0c0c8.lean/declarations/prooftermmatrixcode--5d3c1ec93c2de7a0f02cec66.md) | 21 | `declaration-track:5d3c1ec93c2de7a0f02cec66f3d8f7a23c6a437fde60fa4b8d558287a3c3a24a` |
| 3 | `def` | [encodeProofTerm](../../../../../mathematics/Algebra/LinearAlgebra/ProofSyntax/Variant96a61f0258603d84891b8c455227de1dcd3b6b45b7faaae34e20609c62b0c0c8.lean/declarations/encodeproofterm--a458e377c3502c892b25a066.md) | 25 | `declaration-track:a458e377c3502c892b25a066f76f6a61b34e46d1afd70b047ccf379fc5ace183` |
| 4 | `def` | [decodeProofTerm?](../../../../../mathematics/Algebra/LinearAlgebra/ProofSyntax/Variant96a61f0258603d84891b8c455227de1dcd3b6b45b7faaae34e20609c62b0c0c8.lean/declarations/decodeproofterm--c7cea2a7d7cb5574bd6bfeff.md) | 29 | `declaration-track:c7cea2a7d7cb5574bd6bfeff392d9161aae105756b50b1c1df0fa137b1328c68` |
| 5 | `theorem` | [proofTerm_roundTrip](../../../../../mathematics/Algebra/LinearAlgebra/ProofSyntax/Variant96a61f0258603d84891b8c455227de1dcd3b6b45b7faaae34e20609c62b0c0c8.lean/declarations/proofterm-roundtrip--327b67ae6da66901c666d6ee.md) | 32 | `result-track:327b67ae6da66901c666d6ee3fcb7ccdd300c39465a148ddaed8c317eb33351b` |
| 6 | `def` | [RepresentsProofTerm](../../../../../mathematics/Algebra/LinearAlgebra/ProofSyntax/Variant96a61f0258603d84891b8c455227de1dcd3b6b45b7faaae34e20609c62b0c0c8.lean/declarations/representsproofterm--0c022075afcbf7334696fe29.md) | 36 | `declaration-track:0c022075afcbf7334696fe290c3c3845d97d24a8f27793e800a3f718ff38c3af` |
| 7 | `theorem` | [finite_proofTerm_blm_representable](../../../../../mathematics/Algebra/LinearAlgebra/ProofSyntax/Variant96a61f0258603d84891b8c455227de1dcd3b6b45b7faaae34e20609c62b0c0c8.lean/declarations/finite-proofterm-blm-representable--78e583f7873291d557874f64.md) | 39 | `result-track:78e583f7873291d557874f64b623f8554fe7414f2e0e0c4d0511d899b65e7dbf` |
| 8 | `structure` | [ProofAuthorityBoundary](../../../../../mathematics/Algebra/LinearAlgebra/ProofSyntax/Variant96a61f0258603d84891b8c455227de1dcd3b6b45b7faaae34e20609c62b0c0c8.lean/declarations/proofauthorityboundary--a6040bdbc16d174fb645ca15.md) | 43 | `declaration-track:a6040bdbc16d174fb645ca15d08264e1cc79cdf1fcfae58ad30dcc9d66e7a36b` |
| 9 | `theorem` | [proofAuthorityBoundary_projects](../../../../../mathematics/Algebra/LinearAlgebra/ProofSyntax/Variant96a61f0258603d84891b8c455227de1dcd3b6b45b7faaae34e20609c62b0c0c8.lean/declarations/proofauthorityboundary-projects--8cfbb3f5e140fbb9ed3aea60.md) | 48 | `result-track:8cfbb3f5e140fbb9ed3aea60be20b8d815bde2544ecaa42b98adb65960d02d83` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
