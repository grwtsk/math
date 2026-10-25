# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MatchEqsExt.Variant268ef40fdcc64fa01f662247e9c2ac17c953311ead249ba4d38b756a78c113a8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e2a9be51753435b2c801b5b1849472ae74abdbee",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MatchEqsExt/Variant268ef40fdcc64fa01f662247e9c2ac17c953311ead249ba4d38b756a78c113a8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MatchEqsExt/Variant268ef40fdcc64fa01f662247e9c2ac17c953311ead249ba4d38b756a78c113a8.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MatchEqsExt/Variant268ef40fdcc64fa01f662247e9c2ac17c953311ead249ba4d38b756a78c113a8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e2a9be51753435b2c801b5b1849472ae74abdbee`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MatchEqsExt/Variant268ef40fdcc64fa01f662247e9c2ac17c953311ead249ba4d38b756a78c113a8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MatchEqsExt/Variant268ef40fdcc64fa01f662247e9c2ac17c953311ead249ba4d38b756a78c113a8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Meta.Eqns` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [MatchEqns](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MatchEqsExt/Variant268ef40fdcc64fa01f662247e9c2ac17c953311ead249ba4d38b756a78c113a8.lean/declarations/matcheqns--8d6a11d6a02946f58cc2c836.md) | 25 | `declaration-track:8d6a11d6a02946f58cc2c836a615b8322d380a39cb03f21c46ff47fb42f75090` |
| 2 | `def` | [MatchEqns.size](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MatchEqsExt/Variant268ef40fdcc64fa01f662247e9c2ac17c953311ead249ba4d38b756a78c113a8.lean/declarations/matcheqns-size--ee67c0d4ebcd7246cd7230ce.md) | 31 | `declaration-track:ee67c0d4ebcd7246cd7230ceb6f8e5f040af65b794ff8ec1a58b29974b4e04aa` |
| 3 | `structure` | [MatchEqnsExtState](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MatchEqsExt/Variant268ef40fdcc64fa01f662247e9c2ac17c953311ead249ba4d38b756a78c113a8.lean/declarations/matcheqnsextstate--fd052427c029d7c30bd206e4.md) | 34 | `declaration-track:fd052427c029d7c30bd206e41da64b6d6e1efb794ed68082d4b374babc5b595c` |
| 4 | `builtin_initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MatchEqsExt/Variant268ef40fdcc64fa01f662247e9c2ac17c953311ead249ba4d38b756a78c113a8.lean/declarations/builtin-initialize--f623a1d5514dfbc6f51d61e9.md) | 40 | `declaration-track:f623a1d5514dfbc6f51d61e91cb4887111266dbd082cd91954905bd582d6d939` |
| 5 | `def` | [registerMatchEqns](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MatchEqsExt/Variant268ef40fdcc64fa01f662247e9c2ac17c953311ead249ba4d38b756a78c113a8.lean/declarations/registermatcheqns--fb8600bcd0f6e9694a069461.md) | 46 | `declaration-track:fb8600bcd0f6e9694a0694612ba426e0c958cb71921bdd0627cc0ea0f2a0786e` |
| 6 | `opaque` | [getEquationsFor](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MatchEqsExt/Variant268ef40fdcc64fa01f662247e9c2ac17c953311ead249ba4d38b756a78c113a8.lean/declarations/getequationsfor--c06daec2626e8b309b1058e7.md) | 59 | `declaration-track:c06daec2626e8b309b1058e78666b5cd87f83f5c3d6ecd8544d168aa66b867f7` |
| 7 | `opaque` | [genMatchCongrEqns](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MatchEqsExt/Variant268ef40fdcc64fa01f662247e9c2ac17c953311ead249ba4d38b756a78c113a8.lean/declarations/genmatchcongreqns--375cd01a909087929b4eb449.md) | 66 | `declaration-track:375cd01a909087929b4eb4492712b8c88b01a7f2e2955c337d109851c4dd7128` |
| 8 | `def` | [isMatchEqnTheorem](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MatchEqsExt/Variant268ef40fdcc64fa01f662247e9c2ac17c953311ead249ba4d38b756a78c113a8.lean/declarations/ismatcheqntheorem--531d76515f5e607d5fa529fa.md) | 71 | `declaration-track:531d76515f5e607d5fa529fa1e1bc513dd8ba015b708d985e614413415aac416` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
