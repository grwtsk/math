# Verification target: GRWTSK.Analysis.FunctionalAnalysis.BanachSpaces.NormedSpaces.Ultra.Variant165f108270b0543a32635af4b070afc7a806f504e577f78f6e0b4e81b9f3b921

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ab538b2edcbcb747817b3db08bd2b93e3511fe75",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Ultra/Variant165f108270b0543a32635af4b070afc7a806f504e577f78f6e0b4e81b9f3b921.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Ultra/Variant165f108270b0543a32635af4b070afc7a806f504e577f78f6e0b4e81b9f3b921.lean/index.md) · [Full source](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Ultra/Variant165f108270b0543a32635af4b070afc7a806f504e577f78f6e0b4e81b9f3b921.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ab538b2edcbcb747817b3db08bd2b93e3511fe75`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Ultra/Variant165f108270b0543a32635af4b070afc7a806f504e577f78f6e0b4e81b9f3b921.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Ultra/Variant165f108270b0543a32635af4b070afc7a806f504e577f78f6e0b4e81b9f3b921.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Normed.Ring.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Group.Ultra` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [norm_add_one_le_max_norm_one](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Ultra/Variant165f108270b0543a32635af4b070afc7a806f504e577f78f6e0b4e81b9f3b921.lean/declarations/norm-add-one-le-max-norm-one--a799bf6c89500de19d9ed81f.md) | 54 | `result-track:a799bf6c89500de19d9ed81f9495759858fae592287cffed22071a681d028c1b` |
| 2 | `lemma` | [nnnorm_add_one_le_max_nnnorm_one](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Ultra/Variant165f108270b0543a32635af4b070afc7a806f504e577f78f6e0b4e81b9f3b921.lean/declarations/nnnorm-add-one-le-max-nnnorm-one--a784e4135f6d457470bcf2eb.md) | 58 | `result-track:a784e4135f6d457470bcf2eb2c57c081069e2737db65da6d6364d740fba9efce` |
| 3 | `lemma` | [nnnorm_natCast_le_one](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Ultra/Variant165f108270b0543a32635af4b070afc7a806f504e577f78f6e0b4e81b9f3b921.lean/declarations/nnnorm-natcast-le-one--37a63fe3f8534b024b5fa31f.md) | 63 | `result-track:37a63fe3f8534b024b5fa31f7d79a39cd3f334f3dc0f8eec2745919c42b846b4` |
| 4 | `lemma` | [norm_natCast_le_one](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Ultra/Variant165f108270b0543a32635af4b070afc7a806f504e577f78f6e0b4e81b9f3b921.lean/declarations/norm-natcast-le-one--4d2efe442627866e18b04dae.md) | 70 | `result-track:4d2efe442627866e18b04daeb54df965d9565ba0ca91368ed5552f1365bab861` |
| 5 | `lemma` | [nnnorm_intCast_le_one](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Ultra/Variant165f108270b0543a32635af4b070afc7a806f504e577f78f6e0b4e81b9f3b921.lean/declarations/nnnorm-intcast-le-one--a61271a98cfa9bdf94f49083.md) | 74 | `result-track:a61271a98cfa9bdf94f490834e2108a10e64b88899c853c0ef4a111914f46f82` |
| 6 | `lemma` | [norm_intCast_le_one](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Ultra/Variant165f108270b0543a32635af4b070afc7a806f504e577f78f6e0b4e81b9f3b921.lean/declarations/norm-intcast-le-one--2c8bf44577f2ed36d217a516.md) | 80 | `result-track:2c8bf44577f2ed36d217a516fb5e8fb4ee17b5a7a6deb04c537bcc060b07ced4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
