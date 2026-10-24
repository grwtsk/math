# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.Autocorrelation.Variant5329b0b5e69db61b3247fd00330fae0ab7882d52cc500435943f7afe8275a519

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8560bcd55e490e639a830c866d71c27dfdc8a14c",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/Autocorrelation/Variant5329b0b5e69db61b3247fd00330fae0ab7882d52cc500435943f7afe8275a519.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Autocorrelation/Variant5329b0b5e69db61b3247fd00330fae0ab7882d52cc500435943f7afe8275a519.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Autocorrelation/Variant5329b0b5e69db61b3247fd00330fae0ab7882d52cc500435943f7afe8275a519.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8560bcd55e490e639a830c866d71c27dfdc8a14c`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/Autocorrelation/Variant5329b0b5e69db61b3247fd00330fae0ab7882d52cc500435943f7afe8275a519.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/Autocorrelation/Variant5329b0b5e69db61b3247fd00330fae0ab7882d52cc500435943f7afe8275a519.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [complexMultiplication](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Autocorrelation/Variant5329b0b5e69db61b3247fd00330fae0ab7882d52cc500435943f7afe8275a519.lean/declarations/complexmultiplication--130edc79fe937c740c0a0bd6.md) | 29 | `declaration-track:130edc79fe937c740c0a0bd63973d7127aaab75bc5bee6b704c6ed3ae34961ca` |
| 2 | `def` | [autocorrelationFun](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Autocorrelation/Variant5329b0b5e69db61b3247fd00330fae0ab7882d52cc500435943f7afe8275a519.lean/declarations/autocorrelationfun--1b752cab93914be9c85c4f15.md) | 36 | `declaration-track:1b752cab93914be9c85c4f1537c85c722ae708a158a8ba1abd36fe52bc5179df` |
| 3 | `theorem` | [autocorrelationFun_apply](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Autocorrelation/Variant5329b0b5e69db61b3247fd00330fae0ab7882d52cc500435943f7afe8275a519.lean/declarations/autocorrelationfun-apply--a88ab5172f0c4b1826426f47.md) | 40 | `result-track:a88ab5172f0c4b1826426f47074ca00cdcd75016730111e82f93380ccd514d8e` |
| 4 | `def` | [autocorrelation](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Autocorrelation/Variant5329b0b5e69db61b3247fd00330fae0ab7882d52cc500435943f7afe8275a519.lean/declarations/autocorrelation--520588098d77676aa42f9962.md) | 51 | `declaration-track:520588098d77676aa42f996224d266d3f81c4f9083046372f1eeedb7de7151fa` |
| 5 | `theorem` | [autocorrelation_apply](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Autocorrelation/Variant5329b0b5e69db61b3247fd00330fae0ab7882d52cc500435943f7afe8275a519.lean/declarations/autocorrelation-apply--56e3fbd9be6309f7b80752fe.md) | 71 | `result-track:56e3fbd9be6309f7b80752fed7184b1f18145d6769e30ee50e2bdd0531485635` |
| 6 | `theorem` | [autocorrelation_supportRadius](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Autocorrelation/Variant5329b0b5e69db61b3247fd00330fae0ab7882d52cc500435943f7afe8275a519.lean/declarations/autocorrelation-supportradius--b6a2f39b5510d87f92685b70.md) | 76 | `result-track:b6a2f39b5510d87f92685b7029732167ff2b126847c795938fa178b82fb0db1a` |
| 7 | `theorem` | [autocorrelation_neg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Autocorrelation/Variant5329b0b5e69db61b3247fd00330fae0ab7882d52cc500435943f7afe8275a519.lean/declarations/autocorrelation-neg--739c66ee8bdf58d85bfba862.md) | 82 | `result-track:739c66ee8bdf58d85bfba862a3b68421ee3e92c98211c155af1b825d01eed12c` |
| 8 | `theorem` | [autocorrelation_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Autocorrelation/Variant5329b0b5e69db61b3247fd00330fae0ab7882d52cc500435943f7afe8275a519.lean/declarations/autocorrelation-zero--881dc8363f5efa6016d921df.md) | 95 | `result-track:881dc8363f5efa6016d921df5bf5025f2a98b258f3c59e311502d7b62ad10cf9` |
| 9 | `theorem` | [autocorrelation_support](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Autocorrelation/Variant5329b0b5e69db61b3247fd00330fae0ab7882d52cc500435943f7afe8275a519.lean/declarations/autocorrelation-support--5cf6a535a51137e5b742d61c.md) | 106 | `result-track:5cf6a535a51137e5b742d61ca077687bdb77ab40e4a60dd1af8b866a27e69202` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
