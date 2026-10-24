# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.FinitePrimeState.Variant86c6aa0b7b7962ae173fa73541c883160f82331844e036a1154d7c97c7dcb562

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1e382ce8cd74303b90bf628f8d4ae15bf98cf22c",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/FinitePrimeState/Variant86c6aa0b7b7962ae173fa73541c883160f82331844e036a1154d7c97c7dcb562.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FinitePrimeState/Variant86c6aa0b7b7962ae173fa73541c883160f82331844e036a1154d7c97c7dcb562.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FinitePrimeState/Variant86c6aa0b7b7962ae173fa73541c883160f82331844e036a1154d7c97c7dcb562.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1e382ce8cd74303b90bf628f8d4ae15bf98cf22c`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/FinitePrimeState/Variant86c6aa0b7b7962ae173fa73541c883160f82331844e036a1154d7c97c7dcb562.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/FinitePrimeState/Variant86c6aa0b7b7962ae173fa73541c883160f82331844e036a1154d7c97c7dcb562.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.Prismatic.PrimeFiber` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [FinitePrimeState](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FinitePrimeState/Variant86c6aa0b7b7962ae173fa73541c883160f82331844e036a1154d7c97c7dcb562.lean/declarations/finiteprimestate--78038ead20c19088676778dd.md) | 20 | `declaration-track:78038ead20c19088676778dd6a0d742ffd84d64bff69b80317363179be9d9e52` |
| 2 | `theorem` | [primeCertified](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FinitePrimeState/Variant86c6aa0b7b7962ae173fa73541c883160f82331844e036a1154d7c97c7dcb562.lean/declarations/primecertified--8cc81bc48f15ba70933b773b.md) | 32 | `result-track:8cc81bc48f15ba70933b773bdb6e95f146bfec7cc08be443434332021735c0a3` |
| 3 | `def` | [fiberAt](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FinitePrimeState/Variant86c6aa0b7b7962ae173fa73541c883160f82331844e036a1154d7c97c7dcb562.lean/declarations/fiberat--ec87958b9f1e6861c16d615c.md) | 40 | `declaration-track:ec87958b9f1e6861c16d615cbde411df3969e8b77fd996f6c8136ff0dff6563b` |
| 4 | `def` | [fiberAddress](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FinitePrimeState/Variant86c6aa0b7b7962ae173fa73541c883160f82331844e036a1154d7c97c7dcb562.lean/declarations/fiberaddress--9690a7ee90bfc9a81db1c73f.md) | 52 | `declaration-track:9690a7ee90bfc9a81db1c73f595566f7135738ab1aef25ac55172acea60283a5` |
| 5 | `def` | [fiberObjectAddress](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FinitePrimeState/Variant86c6aa0b7b7962ae173fa73541c883160f82331844e036a1154d7c97c7dcb562.lean/declarations/fiberobjectaddress--0e09bfdc469522aee9fac5c1.md) | 60 | `declaration-track:0e09bfdc469522aee9fac5c1c4ff4142db40a1311e9b0a8d179de4214cc05e74` |
| 6 | `structure` | [CertifiedPrimeExtension](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FinitePrimeState/Variant86c6aa0b7b7962ae173fa73541c883160f82331844e036a1154d7c97c7dcb562.lean/declarations/certifiedprimeextension--5b7b6e99143b5ab3e93b98b7.md) | 70 | `declaration-track:5b7b6e99143b5ab3e93b98b7726a10d22df70a45120aba5dd8669d1c4b121329` |
| 7 | `theorem` | [newPrime_mem_target](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FinitePrimeState/Variant86c6aa0b7b7962ae173fa73541c883160f82331844e036a1154d7c97c7dcb562.lean/declarations/newprime-mem-target--f1aec36e7df4aa2eaf806de9.md) | 96 | `result-track:f1aec36e7df4aa2eaf806de9ab3cca1b98d3c44c645926b1d387387294778660` |
| 8 | `theorem` | [oldFiber_typed_preserved](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FinitePrimeState/Variant86c6aa0b7b7962ae173fa73541c883160f82331844e036a1154d7c97c7dcb562.lean/declarations/oldfiber-typed-preserved--80025cad6a5618b956c949b8.md) | 104 | `result-track:80025cad6a5618b956c949b88333773112f1e7cf367aeb827b32f34cef687094` |
| 9 | `theorem` | [newFiber_typed_preserved](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FinitePrimeState/Variant86c6aa0b7b7962ae173fa73541c883160f82331844e036a1154d7c97c7dcb562.lean/declarations/newfiber-typed-preserved--3ce0111692aa49d36d4211eb.md) | 116 | `result-track:3ce0111692aa49d36d4211eb15cabcab684eb545128900e58b1f2cf825cc1f30` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
