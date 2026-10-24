# Verification target: GRWTSK.Analysis.BlaschkeFloor.Variantd7efbd80ab73b9d17082eef9f98425ff8af475ad42b711a2a8d7fa63aaebb294

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f6fb9b11e09323638cf70684a1bcecea0cce2eb7",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/BlaschkeFloor/Variantd7efbd80ab73b9d17082eef9f98425ff8af475ad42b711a2a8d7fa63aaebb294.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/BlaschkeFloor/Variantd7efbd80ab73b9d17082eef9f98425ff8af475ad42b711a2a8d7fa63aaebb294.lean/index.md) · [Full source](../../../../mathematics/Analysis/BlaschkeFloor/Variantd7efbd80ab73b9d17082eef9f98425ff8af475ad42b711a2a8d7fa63aaebb294.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f6fb9b11e09323638cf70684a1bcecea0cce2eb7`.

Source path: `GRWTSK/Analysis/BlaschkeFloor/Variantd7efbd80ab73b9d17082eef9f98425ff8af475ad42b711a2a8d7fa63aaebb294.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/BlaschkeFloor/Variantd7efbd80ab73b9d17082eef9f98425ff8af475ad42b711a2a8d7fa63aaebb294.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Complex.Norm` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [blaschkeAtOne](../../../../mathematics/Analysis/BlaschkeFloor/Variantd7efbd80ab73b9d17082eef9f98425ff8af475ad42b711a2a8d7fa63aaebb294.lean/declarations/blaschkeatone--2de416e61a85ae0882d4a54c.md) | 17 | `declaration-track:2de416e61a85ae0882d4a54c5057077d30e4c8b02cf3324acf4d228774bd8258` |
| 2 | `theorem` | [reference_denominator_ne_zero](../../../../mathematics/Analysis/BlaschkeFloor/Variantd7efbd80ab73b9d17082eef9f98425ff8af475ad42b711a2a8d7fa63aaebb294.lean/declarations/reference-denominator-ne-zero--5261af763d7d1ecec7853bbe.md) | 20 | `result-track:5261af763d7d1ecec7853bbe36fcb297a49088738ef6edc5f7407e14975f694d` |
| 3 | `theorem` | [reference_denominator_normSq](../../../../mathematics/Analysis/BlaschkeFloor/Variantd7efbd80ab73b9d17082eef9f98425ff8af475ad42b711a2a8d7fa63aaebb294.lean/declarations/reference-denominator-normsq--c72824000b6279358ae3cb88.md) | 28 | `result-track:c72824000b6279358ae3cb8817584237c5c14fb5fa4d99cda47f4acb3b24f563` |
| 4 | `theorem` | [blaschke_deficit](../../../../mathematics/Analysis/BlaschkeFloor/Variantd7efbd80ab73b9d17082eef9f98425ff8af475ad42b711a2a8d7fa63aaebb294.lean/declarations/blaschke-deficit--77afeb0248b369cb77b64038.md) | 35 | `result-track:77afeb0248b369cb77b640386765399620598f697629b536116c2e68376e61d1` |
| 5 | `theorem` | [factor_deficit_lower](../../../../mathematics/Analysis/BlaschkeFloor/Variantd7efbd80ab73b9d17082eef9f98425ff8af475ad42b711a2a8d7fa63aaebb294.lean/declarations/factor-deficit-lower--8474912ef1b6fd31fc9b6ede.md) | 47 | `result-track:8474912ef1b6fd31fc9b6ede32aca0502ef232e9dfb76d6ea175b07378e60563` |
| 6 | `theorem` | [blaschke_floor_pos](../../../../mathematics/Analysis/BlaschkeFloor/Variantd7efbd80ab73b9d17082eef9f98425ff8af475ad42b711a2a8d7fa63aaebb294.lean/declarations/blaschke-floor-pos--0139a876da43fcd39895e414.md) | 55 | `result-track:0139a876da43fcd39895e414f4c98c9f9c1295879d5fa290df0d06162deb6457` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
