# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PrettyPrinter.Varianta48ff072b116813a14b1107dfe25a8cb07bbe4a0d80a52dacb8743afc4d0591e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bf8a43fe1921819f374b73d36113694c44f3349d",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrettyPrinter/Varianta48ff072b116813a14b1107dfe25a8cb07bbe4a0d80a52dacb8743afc4d0591e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrettyPrinter/Varianta48ff072b116813a14b1107dfe25a8cb07bbe4a0d80a52dacb8743afc4d0591e.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrettyPrinter/Varianta48ff072b116813a14b1107dfe25a8cb07bbe4a0d80a52dacb8743afc4d0591e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bf8a43fe1921819f374b73d36113694c44f3349d`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrettyPrinter/Varianta48ff072b116813a14b1107dfe25a8cb07bbe4a0d80a52dacb8743afc4d0591e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrettyPrinter/Varianta48ff072b116813a14b1107dfe25a8cb07bbe4a0d80a52dacb8743afc4d0591e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.Format.Macro` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [indentD](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrettyPrinter/Varianta48ff072b116813a14b1107dfe25a8cb07bbe4a0d80a52dacb8743afc4d0591e.lean/declarations/indentd--94c63e17fac70e4e89342ca5.md) | 17 | `declaration-track:94c63e17fac70e4e89342ca53dcd2044188430815adb29d16e8577c567033df2` |
| 2 | `abbrev` | [M](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrettyPrinter/Varianta48ff072b116813a14b1107dfe25a8cb07bbe4a0d80a52dacb8743afc4d0591e.lean/declarations/m--69662de12569223b08819f31.md) | 21 | `declaration-track:69662de12569223b08819f315ca43d12b11a1f670501919464c6ac9fe0462e46` |
| 3 | `def` | [join](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrettyPrinter/Varianta48ff072b116813a14b1107dfe25a8cb07bbe4a0d80a52dacb8743afc4d0591e.lean/declarations/join--e57aebea1909d3754dc3ec51.md) | 23 | `declaration-track:e57aebea1909d3754dc3ec51f39d54c3d8bb6343fe1ed40a782fed66ef8a43c5` |
| 4 | `def` | [prefixJoin](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrettyPrinter/Varianta48ff072b116813a14b1107dfe25a8cb07bbe4a0d80a52dacb8743afc4d0591e.lean/declarations/prefixjoin--9581b596a09f63710a1c3a4a.md) | 32 | `declaration-track:9581b596a09f63710a1c3a4adf1d9df7668dda8a160d6378ec4aecf6863525d8` |
| 5 | `def` | [ppFVar](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrettyPrinter/Varianta48ff072b116813a14b1107dfe25a8cb07bbe4a0d80a52dacb8743afc4d0591e.lean/declarations/ppfvar--fbae50a156908478420d49b3.md) | 38 | `declaration-track:fbae50a156908478420d49b3f8a43ae7b1926c05944dfd6be94f655a75868e09` |
| 6 | `def` | [ppExpr](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrettyPrinter/Varianta48ff072b116813a14b1107dfe25a8cb07bbe4a0d80a52dacb8743afc4d0591e.lean/declarations/ppexpr--84b17bb8e2329d58c11738fa.md) | 44 | `declaration-track:84b17bb8e2329d58c11738fa451bf684bc4ca47e029a27d6e0c91206e4497aab` |
| 7 | `def` | [ppArg](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrettyPrinter/Varianta48ff072b116813a14b1107dfe25a8cb07bbe4a0d80a52dacb8743afc4d0591e.lean/declarations/pparg--a595675e2f3eb146d4800fc8.md) | 47 | `declaration-track:a595675e2f3eb146d4800fc8f316ce90abafbba816ba3ee655e0649d8b9a107d` |
| 8 | `def` | [ppArgs](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrettyPrinter/Varianta48ff072b116813a14b1107dfe25a8cb07bbe4a0d80a52dacb8743afc4d0591e.lean/declarations/ppargs--00dac53791a0966aa2f82de7.md) | 60 | `declaration-track:00dac53791a0966aa2f82de787ba8b1cfc82a7208acd29eb029e67cd58677729` |
| 9 | `def` | [ppLitValue](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrettyPrinter/Varianta48ff072b116813a14b1107dfe25a8cb07bbe4a0d80a52dacb8743afc4d0591e.lean/declarations/pplitvalue--fed2ac3238e1d4e21cfb0e08.md) | 63 | `declaration-track:fed2ac3238e1d4e21cfb0e088b15caabf6e322a8787097633cfd6b3f6b885b17` |
| 10 | `def` | [formatCtorInfo](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrettyPrinter/Varianta48ff072b116813a14b1107dfe25a8cb07bbe4a0d80a52dacb8743afc4d0591e.lean/declarations/formatctorinfo--d97226d99e69f61b7366ba37.md) | 68 | `declaration-track:d97226d99e69f61b7366ba37b98bf2f6eb23902e24eebd41b7f204dd8512553b` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrettyPrinter/Varianta48ff072b116813a14b1107dfe25a8cb07bbe4a0d80a52dacb8743afc4d0591e.lean/declarations/instance--5065a1a5725369daa5a66644.md) | 77 | `declaration-track:5065a1a5725369daa5a6664467d650e0263e35f2b28901f99c94e16aa259dd57` |
| 12 | `def` | [ppLetValue](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrettyPrinter/Varianta48ff072b116813a14b1107dfe25a8cb07bbe4a0d80a52dacb8743afc4d0591e.lean/declarations/ppletvalue--ba839664c207793bcf92e183.md) | 79 | `declaration-track:ba839664c207793bcf92e183fda4d24c99b1475356f0558f61505b7c6791a0b1` |
| 13 | `def` | [ppParam](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrettyPrinter/Varianta48ff072b116813a14b1107dfe25a8cb07bbe4a0d80a52dacb8743afc4d0591e.lean/declarations/ppparam--fb66c4fe337900b5813f362a.md) | 99 | `declaration-track:fb66c4fe337900b5813f362a8ba97167dd897c50c6812245e0b31ebfc47d2688` |
| 14 | `def` | [ppParams](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrettyPrinter/Varianta48ff072b116813a14b1107dfe25a8cb07bbe4a0d80a52dacb8743afc4d0591e.lean/declarations/ppparams--6e117cf2f891039647ac78e2.md) | 106 | `declaration-track:6e117cf2f891039647ac78e2c42173a63d926c9ed7d65517e1611d8a8c188fa8` |
| 15 | `def` | [ppLetDecl](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrettyPrinter/Varianta48ff072b116813a14b1107dfe25a8cb07bbe4a0d80a52dacb8743afc4d0591e.lean/declarations/ppletdecl--2df8aa6fe612c9de99b29fc9.md) | 109 | `declaration-track:2df8aa6fe612c9de99b29fc97e819d192ad28a1c654af75a968b5dacc2f6b551` |
| 16 | `def` | [getFunType](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrettyPrinter/Varianta48ff072b116813a14b1107dfe25a8cb07bbe4a0d80a52dacb8743afc4d0591e.lean/declarations/getfuntype--f14ad7f775c99e571355d600.md) | 115 | `declaration-track:f14ad7f775c99e571355d60089ed720cbb3f8cbdc2bc813e285c7e1fcf38297a` |
| 17 | `def` | [ppFunDecl](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrettyPrinter/Varianta48ff072b116813a14b1107dfe25a8cb07bbe4a0d80a52dacb8743afc4d0591e.lean/declarations/ppfundecl--92c948b70decaa4be2f13331.md) | 124 | `declaration-track:92c948b70decaa4be2f133314ee65d7e595fbe61521299f70b9f9cb9df270e3a` |
| 18 | `def` | [ppAlt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrettyPrinter/Varianta48ff072b116813a14b1107dfe25a8cb07bbe4a0d80a52dacb8743afc4d0591e.lean/declarations/ppalt--173fdcb7f16e873fd3423d94.md) | 127 | `declaration-track:173fdcb7f16e873fd3423d94675a0cdf9f0450cf909db2e3767b1d00da703a5d` |
| 19 | `def` | [ppCode](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrettyPrinter/Varianta48ff072b116813a14b1107dfe25a8cb07bbe4a0d80a52dacb8743afc4d0591e.lean/declarations/ppcode--71f237165590da9f98a6097a.md) | 133 | `declaration-track:71f237165590da9f98a6097ad464d65cab091c48be66fe1030db51a161ea96d2` |
| 20 | `def` | [ppDeclValue](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrettyPrinter/Varianta48ff072b116813a14b1107dfe25a8cb07bbe4a0d80a52dacb8743afc4d0591e.lean/declarations/ppdeclvalue--3450ef05b869ffceb0d41103.md) | 176 | `declaration-track:3450ef05b869ffceb0d41103e8265529d14d537b95b46abd9f6a99e77c2dc112` |
| 21 | `def` | [run](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrettyPrinter/Varianta48ff072b116813a14b1107dfe25a8cb07bbe4a0d80a52dacb8743afc4d0591e.lean/declarations/run--12fe84becb1c111ad400d93d.md) | 182 | `declaration-track:12fe84becb1c111ad400d93d3d830791b8f8b5c44df70d97fd9d374f729f5e15` |
| 22 | `def` | [ppCode](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrettyPrinter/Varianta48ff072b116813a14b1107dfe25a8cb07bbe4a0d80a52dacb8743afc4d0591e.lean/declarations/ppcode--a4e1355ede45b7949da8fda5.md) | 188 | `declaration-track:a4e1355ede45b7949da8fda5b52f4dbd7b8ac9f745bb06a42070c69b2d7e5d6d` |
| 23 | `def` | [ppLetValue](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrettyPrinter/Varianta48ff072b116813a14b1107dfe25a8cb07bbe4a0d80a52dacb8743afc4d0591e.lean/declarations/ppletvalue--99616a055a2c2afdac6d9ff8.md) | 191 | `declaration-track:99616a055a2c2afdac6d9ff8a5f8ee5881636597aa8008abff77d1eafa9e84d7` |
| 24 | `def` | [ppDecl](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrettyPrinter/Varianta48ff072b116813a14b1107dfe25a8cb07bbe4a0d80a52dacb8743afc4d0591e.lean/declarations/ppdecl--c54043fff4f3d6cd5d0cdfaf.md) | 194 | `declaration-track:c54043fff4f3d6cd5d0cdfaf3aabd00a45371d4d1b3b1df9d4f130ed8a9bbcaa` |
| 25 | `def` | [ppFunDecl](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrettyPrinter/Varianta48ff072b116813a14b1107dfe25a8cb07bbe4a0d80a52dacb8743afc4d0591e.lean/declarations/ppfundecl--c35f1e92ea36d5475e09daa0.md) | 198 | `declaration-track:c35f1e92ea36d5475e09daa04dfdc75f3a694886c2761dd25fc1927468a185da` |
| 26 | `def` | [runCompilerWithoutModifyingState](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrettyPrinter/Varianta48ff072b116813a14b1107dfe25a8cb07bbe4a0d80a52dacb8743afc4d0591e.lean/declarations/runcompilerwithoutmodifyingstate--62450b1829b5e42cfa862fff.md) | 206 | `declaration-track:62450b1829b5e42cfa862fffeb5014d5126dc416dfffb3550c3392b960cd1bba` |
| 27 | `def` | [ppDecl'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrettyPrinter/Varianta48ff072b116813a14b1107dfe25a8cb07bbe4a0d80a52dacb8743afc4d0591e.lean/declarations/ppdecl--af42b59e854ef88aa705bf2b.md) | 218 | `declaration-track:af42b59e854ef88aa705bf2ba355f322951c0ca644e09a411abf11d47cfa3db0` |
| 28 | `def` | [ppCode'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrettyPrinter/Varianta48ff072b116813a14b1107dfe25a8cb07bbe4a0d80a52dacb8743afc4d0591e.lean/declarations/ppcode--39e38de65157a9aaafa13fdf.md) | 226 | `declaration-track:39e38de65157a9aaafa13fdf8e992ca5b2849b34bfa435945a476c574149286f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
