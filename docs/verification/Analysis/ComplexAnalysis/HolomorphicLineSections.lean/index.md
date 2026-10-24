# Verification target: GRWTSK.Analysis.Complex.HolomorphicLineSections

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "208a468b2e6d37690eeac86112cd096fd6b233c3",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Complex/HolomorphicLineSections.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicLineSections.lean/index.md) · [Full source](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicLineSections.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `208a468b2e6d37690eeac86112cd096fd6b233c3`.

Source path: `GRWTSK/Analysis/Complex/HolomorphicLineSections.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Complex/HolomorphicLineSections.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.Complex.HolomorphicLineCocycle`](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicLineCocycle.lean/index.md) — import line 1; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [TwistedFamily](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicLineSections.lean/declarations/twistedfamily--8ad556d7dd265cbd8a338732.md) | 24 | `declaration-track:8ad556d7dd265cbd8a33873211b1cc496b89b32d13e1a47258c72868c6b52132` |
| 2 | `def` | [chartCoordinate](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicLineSections.lean/declarations/chartcoordinate--2fc92f3ce18cf8a514b3a547.md) | 32 | `declaration-track:2fc92f3ce18cf8a514b3a5479bd14f576358168d3ff9754f71055b1bad90d367` |
| 3 | `theorem` | [chartCoordinate_apply](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicLineSections.lean/declarations/chartcoordinate-apply--f6638945d2f302e54e42e7e1.md) | 37 | `result-track:f6638945d2f302e54e42e7e121b4cf49d45a59bae2463d55979f648102a3c402` |
| 4 | `structure` | [BundleSection](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicLineSections.lean/declarations/bundlesection--0a8ec14c0c0171a88bc00000.md) | 42 | `declaration-track:0a8ec14c0c0171a88bc00000f9ab2121ae94647a16494ef00dedc6ad61a4f5eb` |
| 5 | `theorem` | [ext_sectionAt](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicLineSections.lean/declarations/ext-sectionat--65527ac01158ea7228aa81ea.md) | 52 | `result-track:65527ac01158ea7228aa81ea12728148a2e5383dd1ab6ffbb2ec629732c8774a` |
| 6 | `def` | [realizeValue](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicLineSections.lean/declarations/realizevalue--85631c503a49da7824758f79.md) | 59 | `declaration-track:85631c503a49da7824758f79f80f5d8bb999b6499b2e017bca27aeb84ecc7886` |
| 7 | `theorem` | [realize_coordinate](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicLineSections.lean/declarations/realize-coordinate--9d9ecd91f75693870c2f0c14.md) | 65 | `result-track:9d9ecd91f75693870c2f0c1437181fb08c9913ae9aa91e1ca8b6cbf6d2f435ea` |
| 8 | `def` | [realize](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicLineSections.lean/declarations/realize--4f726ddd83f4dfaceec123ad.md) | 72 | `declaration-track:4f726ddd83f4dfaceec123ad6282146e291c05c6b69a4711224ddc00c561d852` |
| 9 | `theorem` | [ext_value](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicLineSections.lean/declarations/ext-value--b7d13abe21307167fbd88189.md) | 90 | `result-track:b7d13abe21307167fbd881890dc81c58e38a6be5c2b7a8a4d68fa00ebc45ab5e` |
| 10 | `def` | [localize](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicLineSections.lean/declarations/localize--3325e9560a877a2fde933d49.md) | 97 | `declaration-track:3325e9560a877a2fde933d49a928be99575c21ac636618150bee6d646968d997` |
| 11 | `theorem` | [chartCoordinate_continuousOn](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicLineSections.lean/declarations/chartcoordinate-continuouson--1d1b12bcf527ee0497277e7c.md) | 107 | `result-track:1d1b12bcf527ee0497277e7c0914a1203d31b3a833285fb91ff1a9242c3c1386` |
| 12 | `theorem` | [continuous_totalSection](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicLineSections.lean/declarations/continuous-totalsection--c8ad998a8fb72148945076e3.md) | 117 | `result-track:c8ad998a8fb72148945076e3db0a8b6bf413fb9643d0591e5cd1b3f858bf266e` |
| 13 | `def` | [sectionEquiv](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicLineSections.lean/declarations/sectionequiv--eb69822b5e3e32271785319d.md) | 130 | `declaration-track:eb69822b5e3e32271785319d6f257cdff33a6103b86d312d03c51b4b1201b4b6` |
| 14 | `def` | [identityTwistedFamily](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicLineSections.lean/declarations/identitytwistedfamily--2bc5f4b24ae26fcbcc640997.md) | 149 | `declaration-track:2bc5f4b24ae26fcbcc640997271eb8541be1ae9466a159dccc6619960e1d91d0` |
| 15 | `theorem` | [identity_realization_eq_scalar_glue](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicLineSections.lean/declarations/identity-realization-eq-scalar-glue--64100d5fe4617380e926a594.md) | 161 | `result-track:64100d5fe4617380e926a5945316148afeafef28863f2671e16f717242b98abc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
