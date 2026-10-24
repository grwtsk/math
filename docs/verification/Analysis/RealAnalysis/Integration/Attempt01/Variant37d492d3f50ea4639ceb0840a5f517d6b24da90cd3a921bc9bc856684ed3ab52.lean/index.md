# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.Attempt01.Variant37d492d3f50ea4639ceb0840a5f517d6b24da90cd3a921bc9bc856684ed3ab52

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2698f998dcc7f47ddf880b516a544dd603e8d299",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/Attempt01/Variant37d492d3f50ea4639ceb0840a5f517d6b24da90cd3a921bc9bc856684ed3ab52.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt01/Variant37d492d3f50ea4639ceb0840a5f517d6b24da90cd3a921bc9bc856684ed3ab52.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt01/Variant37d492d3f50ea4639ceb0840a5f517d6b24da90cd3a921bc9bc856684ed3ab52.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2698f998dcc7f47ddf880b516a544dd603e8d299`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/Attempt01/Variant37d492d3f50ea4639ceb0840a5f517d6b24da90cd3a921bc9bc856684ed3ab52.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/Attempt01/Variant37d492d3f50ea4639ceb0840a5f517d6b24da90cd3a921bc9bc856684ed3ab52.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `DensityDecoder` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [primeAtoms](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt01/Variant37d492d3f50ea4639ceb0840a5f517d6b24da90cd3a921bc9bc856684ed3ab52.lean/declarations/primeatoms--55e0fc4b013cd0dee88eba50.md) | 26 | `declaration-track:55e0fc4b013cd0dee88eba5024ac8cc217f5136195a699ff5211ec9d9e0a095c` |
| 2 | `def` | [primeCorrected](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt01/Variant37d492d3f50ea4639ceb0840a5f517d6b24da90cd3a921bc9bc856684ed3ab52.lean/declarations/primecorrected--b3eb4781262db8f0461274e0.md) | 30 | `declaration-track:b3eb4781262db8f0461274e042e80249babd8ad52bc082972fb6a51266c39c0b` |
| 3 | `theorem` | [primeCorrected_at_atom](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt01/Variant37d492d3f50ea4639ceb0840a5f517d6b24da90cd3a921bc9bc856684ed3ab52.lean/declarations/primecorrected-at-atom--b4746b3a0e326d80536c61d6.md) | 33 | `result-track:b4746b3a0e326d80536c61d686e427a8ba9aee597e9f1249a0151a3a609673d8` |
| 4 | `theorem` | [primeCorrected_ae](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt01/Variant37d492d3f50ea4639ceb0840a5f517d6b24da90cd3a921bc9bc856684ed3ab52.lean/declarations/primecorrected-ae--08b2e42aa8d25d3a15c8bb04.md) | 40 | `result-track:08b2e42aa8d25d3a15c8bb04fcf9ff705127b342045e641b2a2684a21601fd88` |
| 5 | `theorem` | [primeCorrected_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt01/Variant37d492d3f50ea4639ceb0840a5f517d6b24da90cd3a921bc9bc856684ed3ab52.lean/declarations/primecorrected-integrable--b78b75f00631830ca1c35858.md) | 46 | `result-track:b78b75f00631830ca1c358586aa988b6e9a0c2afbc3b49b04dd325f2b8b467d8` |
| 6 | `theorem` | [primeCorrected_primeLogSum](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt01/Variant37d492d3f50ea4639ceb0840a5f517d6b24da90cd3a921bc9bc856684ed3ab52.lean/declarations/primecorrected-primelogsum--c1f51c44092d2030d36bec49.md) | 50 | `result-track:c1f51c44092d2030d36bec499d7482ceae3048bb0d856a7bd762cc1b2b587080` |
| 7 | `theorem` | [primeCorrected_density_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt01/Variant37d492d3f50ea4639ceb0840a5f517d6b24da90cd3a921bc9bc856684ed3ab52.lean/declarations/primecorrected-density-integral--c1310da842a6e5d70e88e50e.md) | 58 | `result-track:c1310da842a6e5d70e88e50eed0d4b75b4206371b549db3eed688833d8c1a9b1` |
| 8 | `theorem` | [primeCorrected_readout_error](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt01/Variant37d492d3f50ea4639ceb0840a5f517d6b24da90cd3a921bc9bc856684ed3ab52.lean/declarations/primecorrected-readout-error--3b5fcc339719e485f1e031c1.md) | 67 | `result-track:3b5fcc339719e485f1e031c1baa1482c68503d1b80daa9daf5cd157cc2ba1b6e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
