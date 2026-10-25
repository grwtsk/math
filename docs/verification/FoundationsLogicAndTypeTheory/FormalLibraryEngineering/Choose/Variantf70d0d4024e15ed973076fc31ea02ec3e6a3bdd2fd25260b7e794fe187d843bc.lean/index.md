# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Choose.Variantf70d0d4024e15ed973076fc31ea02ec3e6a3bdd2fd25260b7e794fe187d843bc

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "910c9d6fe5919d6a17f055566a1166159904985f",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Choose/Variantf70d0d4024e15ed973076fc31ea02ec3e6a3bdd2fd25260b7e794fe187d843bc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Choose/Variantf70d0d4024e15ed973076fc31ea02ec3e6a3bdd2fd25260b7e794fe187d843bc.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Choose/Variantf70d0d4024e15ed973076fc31ea02ec3e6a3bdd2fd25260b7e794fe187d843bc.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `910c9d6fe5919d6a17f055566a1166159904985f`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Choose/Variantf70d0d4024e15ed973076fc31ea02ec3e6a3bdd2fd25260b7e794fe187d843bc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Choose/Variantf70d0d4024e15ed973076fc31ea02ec3e6a3bdd2fd25260b7e794fe187d843bc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Util.Tactic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Function.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mk_sometimes](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Choose/Variantf70d0d4024e15ed973076fc31ea02ec3e6a3bdd2fd25260b7e794fe187d843bc.lean/declarations/mk-sometimes--96aa38bc319de8e7645e0d75.md) | 28 | `declaration-track:96aa38bc319de8e7645e0d759662b5bc0af0600a3d39c8bae0c5a688936a04e9` |
| 2 | `inductive` | [ElimStatus](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Choose/Variantf70d0d4024e15ed973076fc31ea02ec3e6a3bdd2fd25260b7e794fe187d843bc.lean/declarations/elimstatus--0c40f8832f4139493a5d13cd.md) | 52 | `declaration-track:0c40f8832f4139493a5d13cd8159a9a014d33ceb862247712e3bb8a238c4731b` |
| 3 | `def` | [ElimStatus.merge](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Choose/Variantf70d0d4024e15ed973076fc31ea02ec3e6a3bdd2fd25260b7e794fe187d843bc.lean/declarations/elimstatus-merge--910c305b30dc0e42dd38c34c.md) | 58 | `declaration-track:910c305b30dc0e42dd38c34cc72e993937ef15219407e0057dca6bcefd42f1c5` |
| 4 | `def` | [mkFreshNameFrom](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Choose/Variantf70d0d4024e15ed973076fc31ea02ec3e6a3bdd2fd25260b7e794fe187d843bc.lean/declarations/mkfreshnamefrom--ec369fe067981cc0663a289e.md) | 65 | `declaration-track:ec369fe067981cc0663a289e5a9f6431b73977d758be8c77df42bd38b2b8873e` |
| 5 | `def` | [choose1](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Choose/Variantf70d0d4024e15ed973076fc31ea02ec3e6a3bdd2fd25260b7e794fe187d843bc.lean/declarations/choose1--fbb5b89358bd200776e6c7d6.md) | 79 | `declaration-track:fbb5b89358bd200776e6c7d68643ddf9befa8e5c5233275b6d077fef1fe1b0d8` |
| 6 | `def` | [choose1WithInfo](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Choose/Variantf70d0d4024e15ed973076fc31ea02ec3e6a3bdd2fd25260b7e794fe187d843bc.lean/declarations/choose1withinfo--9d300bd5515d647c95609cb2.md) | 146 | `declaration-track:9d300bd5515d647c95609cb2e91c082cf63bceffa6b4dd10d44830de0df809e3` |
| 7 | `def` | [elabChoose](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Choose/Variantf70d0d4024e15ed973076fc31ea02ec3e6a3bdd2fd25260b7e794fe187d843bc.lean/declarations/elabchoose--081d03b170fd4abc391c68e4.md) | 154 | `declaration-track:081d03b170fd4abc391c68e40d7afdf18d7b5868fc318459e21ba399226b5b4f` |
| 8 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Choose/Variantf70d0d4024e15ed973076fc31ea02ec3e6a3bdd2fd25260b7e794fe187d843bc.lean/declarations/syntax--32cc605aa5b5938fd56d4f0f.md) | 212 | `declaration-track:32cc605aa5b5938fd56d4f0fa70c834d40d4b93bbf5a43c01503b95ce61114b9` |
| 9 | `elab_rules` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Choose/Variantf70d0d4024e15ed973076fc31ea02ec3e6a3bdd2fd25260b7e794fe187d843bc.lean/declarations/elab-rules--34f4bec0b0daaa846915d205.md) | 213 | `declaration-track:34f4bec0b0daaa846915d205bfaa182457aa7d972298e8fc876f457adb7e9547` |
| 10 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Choose/Variantf70d0d4024e15ed973076fc31ea02ec3e6a3bdd2fd25260b7e794fe187d843bc.lean/declarations/syntax--7e767ec2d3b26488a00b74e9.md) | 220 | `declaration-track:7e767ec2d3b26488a00b74e9f57d15392a0389c9db695eb8745c8bb5d6407398` |
| 11 | `macro_rules` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Choose/Variantf70d0d4024e15ed973076fc31ea02ec3e6a3bdd2fd25260b7e794fe187d843bc.lean/declarations/macro-rules--bd463cc85d1323e04ad04eb8.md) | 221 | `declaration-track:bd463cc85d1323e04ad04eb89d1f746123a4e6378d3944b0e1d0f41a4c8ec5b6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
