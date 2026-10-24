# Verification target: GRWTSK.NumberTheory.ElementaryNumberTheory.Place.Variant0f4b724a2aca00626e324ee5158f09b1436b379620d0bcc99ce655af57ce8ed6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "19cb84fe7135440c4831f85424b5642c1f579595",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Place/Variant0f4b724a2aca00626e324ee5158f09b1436b379620d0bcc99ce655af57ce8ed6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Place/Variant0f4b724a2aca00626e324ee5158f09b1436b379620d0bcc99ce655af57ce8ed6.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Place/Variant0f4b724a2aca00626e324ee5158f09b1436b379620d0bcc99ce655af57ce8ed6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `19cb84fe7135440c4831f85424b5642c1f579595`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/Place/Variant0f4b724a2aca00626e324ee5158f09b1436b379620d0bcc99ce655af57ce8ed6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/Place/Variant0f4b724a2aca00626e324ee5158f09b1436b379620d0bcc99ce655af57ce8ed6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.Basic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [Place](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Place/Variant0f4b724a2aca00626e324ee5158f09b1436b379620d0bcc99ce655af57ce8ed6.lean/declarations/place--85d985f7822a900c2153f58c.md) | 26 | `declaration-track:85d985f7822a900c2153f58c0951759e35685e58320bee69aafcb839fc86c24c` |
| 2 | `def` | [IsFinitePrimePlace](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Place/Variant0f4b724a2aca00626e324ee5158f09b1436b379620d0bcc99ce655af57ce8ed6.lean/declarations/isfiniteprimeplace--3c7d2cdb9c5eea3beca259d5.md) | 31 | `declaration-track:3c7d2cdb9c5eea3beca259d5fb2ca4d69101e4ba728708f451f2fb7178a13fbd` |
| 3 | `def` | [IsBadTMFPrime](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Place/Variant0f4b724a2aca00626e324ee5158f09b1436b379620d0bcc99ce655af57ce8ed6.lean/declarations/isbadtmfprime--bd2b9567358dfd66fa06bb83.md) | 34 | `declaration-track:bd2b9567358dfd66fa06bb8369ab5b51726294d49ed0bd53f826dc9c17164b35` |
| 4 | `def` | [IsArchimedeanPlace](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Place/Variant0f4b724a2aca00626e324ee5158f09b1436b379620d0bcc99ce655af57ce8ed6.lean/declarations/isarchimedeanplace--b5b91adb500f0be0414f3e85.md) | 37 | `declaration-track:b5b91adb500f0be0414f3e85ffc6274acb9ae2e97bd305289fc3810bcd7d3838` |
| 5 | `theorem` | [archimedean_ne_finite](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Place/Variant0f4b724a2aca00626e324ee5158f09b1436b379620d0bcc99ce655af57ce8ed6.lean/declarations/archimedean-ne-finite--eda3863c1e19c217bbf84255.md) | 40 | `result-track:eda3863c1e19c217bbf84255cab8fb5fe7dfebabf27b34261fb45ff732f733db` |
| 6 | `theorem` | [bad_tmf_prime_is_finite](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Place/Variant0f4b724a2aca00626e324ee5158f09b1436b379620d0bcc99ce655af57ce8ed6.lean/declarations/bad-tmf-prime-is-finite--2f9266f4130763a660ccb6b1.md) | 46 | `result-track:2f9266f4130763a660ccb6b1e967f95a7f0473e3d46694b1114d7aa7985277e5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
