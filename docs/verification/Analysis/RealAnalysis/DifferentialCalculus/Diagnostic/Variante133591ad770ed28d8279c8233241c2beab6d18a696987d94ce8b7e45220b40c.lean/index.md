# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Diagnostic.Variante133591ad770ed28d8279c8233241c2beab6d18a696987d94ce8b7e45220b40c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4886d460a28e7d68ba8f9a4f81f46200ac8e3d4f",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Diagnostic/Variante133591ad770ed28d8279c8233241c2beab6d18a696987d94ce8b7e45220b40c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Diagnostic/Variante133591ad770ed28d8279c8233241c2beab6d18a696987d94ce8b7e45220b40c.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Diagnostic/Variante133591ad770ed28d8279c8233241c2beab6d18a696987d94ce8b7e45220b40c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4886d460a28e7d68ba8f9a4f81f46200ac8e3d4f`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Diagnostic/Variante133591ad770ed28d8279c8233241c2beab6d18a696987d94ce8b7e45220b40c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Diagnostic/Variante133591ad770ed28d8279c8233241c2beab6d18a696987d94ce8b7e45220b40c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.InnerProductSpace.ProdL2` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.InnerProductSpace.Adjoint` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.InnerProductSpace.Calculus` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Deriv.Mul` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Deriv.Add` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [PairState](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Diagnostic/Variante133591ad770ed28d8279c8233241c2beab6d18a696987d94ce8b7e45220b40c.lean/declarations/pairstate--4705512296ea47a32f044fe6.md) | 37 | `declaration-track:4705512296ea47a32f044fe616ee0d68ad7b4e6bc9ccd3e3b5d2b3cd12c0ed27` |
| 2 | `def` | [pairState](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Diagnostic/Variante133591ad770ed28d8279c8233241c2beab6d18a696987d94ce8b7e45220b40c.lean/declarations/pairstate--05c85713217c47a2ce2d380f.md) | 40 | `declaration-track:05c85713217c47a2ce2d380fb48ef7846cbf3eabcf9cbc6d47cfa15b8091c426` |
| 3 | `def` | [pairSwap](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Diagnostic/Variante133591ad770ed28d8279c8233241c2beab6d18a696987d94ce8b7e45220b40c.lean/declarations/pairswap--296ae2c33a42d46862d7ea14.md) | 43 | `declaration-track:296ae2c33a42d46862d7ea1402fbb0f773ce4739970ce3c38cc68114f6aa5c25` |
| 4 | `theorem` | [pairSwap_pairState](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Diagnostic/Variante133591ad770ed28d8279c8233241c2beab6d18a696987d94ce8b7e45220b40c.lean/declarations/pairswap-pairstate--847dd6a9c494e7b956a2956e.md) | 53 | `result-track:847dd6a9c494e7b956a2956e7be7781e1b69ab309fa487925f1e18319ec8a4a9` |
| 5 | `theorem` | [pairSwap_involutive](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Diagnostic/Variante133591ad770ed28d8279c8233241c2beab6d18a696987d94ce8b7e45220b40c.lean/declarations/pairswap-involutive--e956f0c052f889669805397c.md) | 56 | `result-track:e956f0c052f889669805397cc064c26925a2fe32ff420bd1d6734fe1ca2f2bf4` |
| 6 | `def` | [interactionOperator](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Diagnostic/Variante133591ad770ed28d8279c8233241c2beab6d18a696987d94ce8b7e45220b40c.lean/declarations/interactionoperator--1d7138ce8d7d0dd537cee47c.md) | 59 | `declaration-track:1d7138ce8d7d0dd537cee47cee9739efe3586398f7a9db13fe6954e24f6220e8` |
| 7 | `theorem` | [interactionOperator_pairState](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Diagnostic/Variante133591ad770ed28d8279c8233241c2beab6d18a696987d94ce8b7e45220b40c.lean/declarations/interactionoperator-pairstate--a4c62f4af37861bff79fca08.md) | 63 | `result-track:a4c62f4af37861bff79fca0861871b130bcd60004fb71ab390da1a127fb5684f` |
| 8 | `theorem` | [interactionOperator_selfAdjoint](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Diagnostic/Variante133591ad770ed28d8279c8233241c2beab6d18a696987d94ce8b7e45220b40c.lean/declarations/interactionoperator-selfadjoint--487ca0ce08226ec173f6822f.md) | 68 | `result-track:487ca0ce08226ec173f6822fc01ff443c3dd58e5eaa697a0fec50cdc9edeb947` |
| 9 | `def` | [quadraticReadout](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Diagnostic/Variante133591ad770ed28d8279c8233241c2beab6d18a696987d94ce8b7e45220b40c.lean/declarations/quadraticreadout--f043af07fbfc0c76bec02d64.md) | 81 | `declaration-track:f043af07fbfc0c76bec02d64e24331ad8a3d49c3e2a4f2afbf683681fd14adcf` |
| 10 | `def` | [compensatedReadout](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Diagnostic/Variante133591ad770ed28d8279c8233241c2beab6d18a696987d94ce8b7e45220b40c.lean/declarations/compensatedreadout--ec4cc47250a70b7ec0c9f0ff.md) | 84 | `declaration-track:ec4cc47250a70b7ec0c9f0ff1bf9b17b0eda1efc2e915cf24745611323a33fc3` |
| 11 | `theorem` | [interactionOperator_readout](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Diagnostic/Variante133591ad770ed28d8279c8233241c2beab6d18a696987d94ce8b7e45220b40c.lean/declarations/interactionoperator-readout--7d066c055d99f1c4eb108f49.md) | 88 | `result-track:7d066c055d99f1c4eb108f4967f9f187e14b450904b64c12df893f7fcc378821` |
| 12 | `theorem` | [quadraticReadout_sub](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Diagnostic/Variante133591ad770ed28d8279c8233241c2beab6d18a696987d94ce8b7e45220b40c.lean/declarations/quadraticreadout-sub--36a45f1bd5182ecb6367e93f.md) | 101 | `result-track:36a45f1bd5182ecb6367e93ff3bafad6095e3136ebf2afabadb58562489b35cb` |
| 13 | `theorem` | [real_cross_selfAdjoint](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Diagnostic/Variante133591ad770ed28d8279c8233241c2beab6d18a696987d94ce8b7e45220b40c.lean/declarations/real-cross-selfadjoint--ddaba85652be59986ba245c7.md) | 106 | `result-track:ddaba85652be59986ba245c7f579ec10ae85c9f58e4c2359d671a6fca76515e9` |
| 14 | `theorem` | [quadraticReadout_add](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Diagnostic/Variante133591ad770ed28d8279c8233241c2beab6d18a696987d94ce8b7e45220b40c.lean/declarations/quadraticreadout-add--fae2d7a921946ada115e0acc.md) | 115 | `result-track:fae2d7a921946ada115e0acc87fa18fa0bb0f6796a34dc4ea71ee415c4b83505` |
| 15 | `theorem` | [quadraticReadout_pullback](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Diagnostic/Variante133591ad770ed28d8279c8233241c2beab6d18a696987d94ce8b7e45220b40c.lean/declarations/quadraticreadout-pullback--34aee82e610d3ca12c135830.md) | 124 | `result-track:34aee82e610d3ca12c135830cd638b81e778efd187f90edec9367e7b883a8479` |
| 16 | `theorem` | [compensatedReadout_jump](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Diagnostic/Variante133591ad770ed28d8279c8233241c2beab6d18a696987d94ce8b7e45220b40c.lean/declarations/compensatedreadout-jump--ed69c1fe4216ed4c2a8f17a9.md) | 131 | `result-track:ed69c1fe4216ed4c2a8f17a983d58b0a42a2f72384017b3ead66977694327ea3` |
| 17 | `theorem` | [compensatedReadout_identity_jump](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Diagnostic/Variante133591ad770ed28d8279c8233241c2beab6d18a696987d94ce8b7e45220b40c.lean/declarations/compensatedreadout-identity-jump--b1a059ce2a9b1de84c640a86.md) | 142 | `result-track:b1a059ce2a9b1de84c640a86acd7a3040e70a405ca43bca7cecb3af59228ed35` |
| 18 | `def` | [observableCommutator](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Diagnostic/Variante133591ad770ed28d8279c8233241c2beab6d18a696987d94ce8b7e45220b40c.lean/declarations/observablecommutator--e8387da4739d5e94e1390f4e.md) | 152 | `declaration-track:e8387da4739d5e94e1390f4e7977120cda815fb580d31008d0326fab830375bd` |
| 19 | `theorem` | [signed_work_algebra](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Diagnostic/Variante133591ad770ed28d8279c8233241c2beab6d18a696987d94ce8b7e45220b40c.lean/declarations/signed-work-algebra--a32ea1501fb120d8cc18db68.md) | 155 | `result-track:a32ea1501fb120d8cc18db68845b4c03954e721e5c17d31fd1e6bddcc6d16dbd` |
| 20 | `theorem` | [compensatedReadout_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Diagnostic/Variante133591ad770ed28d8279c8233241c2beab6d18a696987d94ce8b7e45220b40c.lean/declarations/compensatedreadout-hasderivat--b6bf038f477194462c44bd3e.md) | 172 | `result-track:b6bf038f477194462c44bd3e297449ce160e2410ffe79bdd6a39a87a534fa580` |
| 21 | `theorem` | [compensatedReadout_hasDerivAt_of_skew](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Diagnostic/Variante133591ad770ed28d8279c8233241c2beab6d18a696987d94ce8b7e45220b40c.lean/declarations/compensatedreadout-hasderivat-of-skew--1013b50ab8cf85605fac31c6.md) | 191 | `result-track:1013b50ab8cf85605fac31c6c578631c26d8fd6470f382f7ce6cf1cd611d51cc` |
| 22 | `theorem` | [compensatedReadout_hasDerivAt_of_cancelled_work](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Diagnostic/Variante133591ad770ed28d8279c8233241c2beab6d18a696987d94ce8b7e45220b40c.lean/declarations/compensatedreadout-hasderivat-of-cancelled-work--17050d41a080f6f7801047f8.md) | 205 | `result-track:17050d41a080f6f7801047f8dbb3401fb23c76be997c7e4855a9f8f5f2172148` |
| 23 | `def` | [signatureOperator](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Diagnostic/Variante133591ad770ed28d8279c8233241c2beab6d18a696987d94ce8b7e45220b40c.lean/declarations/signatureoperator--0b10f5579eb56c68c597be95.md) | 219 | `declaration-track:0b10f5579eb56c68c597be95715593b05a69527bd54c64250fc66205c2808309` |
| 24 | `theorem` | [signatureOperator_pairState](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Diagnostic/Variante133591ad770ed28d8279c8233241c2beab6d18a696987d94ce8b7e45220b40c.lean/declarations/signatureoperator-pairstate--143bac82f82302697c4efb6c.md) | 225 | `result-track:143bac82f82302697c4efb6c6fa4e2e30a74be5c3a440b54044616e374f8123b` |
| 25 | `theorem` | [signatureOperator_readout](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Diagnostic/Variante133591ad770ed28d8279c8233241c2beab6d18a696987d94ce8b7e45220b40c.lean/declarations/signatureoperator-readout--d6d3ed4f299f93164dac240e.md) | 230 | `result-track:d6d3ed4f299f93164dac240e4ad489a30a2d2b506075bd163c5c1f2dbb1c16fd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
