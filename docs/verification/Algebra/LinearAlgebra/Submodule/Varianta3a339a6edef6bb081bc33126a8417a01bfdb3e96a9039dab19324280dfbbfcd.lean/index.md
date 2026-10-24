# Verification target: GRWTSK.Algebra.LinearAlgebra.Submodule.Varianta3a339a6edef6bb081bc33126a8417a01bfdb3e96a9039dab19324280dfbbfcd

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "90ade41827edf140fa025e6c976406a71cc2add0",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Submodule/Varianta3a339a6edef6bb081bc33126a8417a01bfdb3e96a9039dab19324280dfbbfcd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Varianta3a339a6edef6bb081bc33126a8417a01bfdb3e96a9039dab19324280dfbbfcd.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Varianta3a339a6edef6bb081bc33126a8417a01bfdb3e96a9039dab19324280dfbbfcd.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `90ade41827edf140fa025e6c976406a71cc2add0`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Submodule/Varianta3a339a6edef6bb081bc33126a8417a01bfdb3e96a9039dab19324280dfbbfcd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Submodule/Varianta3a339a6edef6bb081bc33126a8417a01bfdb3e96a9039dab19324280dfbbfcd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Module.LocalizedModule.Submodule` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Localization.AtPrime` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Localization.Away.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Submodule.mem_of_localization_maximal](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Varianta3a339a6edef6bb081bc33126a8417a01bfdb3e96a9039dab19324280dfbbfcd.lean/declarations/submodule-mem-of-localization-maximal--d16ae976bb768c83fea6c6cd.md) | 41 | `result-track:d16ae976bb768c83fea6c6cd287d8a0aa5687922c0d834ceedc18364053a1f90` |
| 2 | `theorem` | [Submodule.le_of_localization_maximal](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Varianta3a339a6edef6bb081bc33126a8417a01bfdb3e96a9039dab19324280dfbbfcd.lean/declarations/submodule-le-of-localization-maximal--5059e79c7405b6ddcd309b0b.md) | 55 | `result-track:5059e79c7405b6ddcd309b0b19c5b00daae8e8e072b8344e1950a4ec8c6143a8` |
| 3 | `theorem` | [Submodule.eq_of_localization₀_maximal](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Varianta3a339a6edef6bb081bc33126a8417a01bfdb3e96a9039dab19324280dfbbfcd.lean/declarations/submodule-eq-of-localization-maximal--8e9a7cd3dfddd81ba83144d1.md) | 63 | `result-track:8e9a7cd3dfddd81ba83144d1b7381d6717a5f327bbb61711d3aa9e237af0b2c2` |
| 4 | `theorem` | [Submodule.eq_bot_of_localization₀_maximal](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Varianta3a339a6edef6bb081bc33126a8417a01bfdb3e96a9039dab19324280dfbbfcd.lean/declarations/submodule-eq-bot-of-localization-maximal--89161726c90b03eef15e62aa.md) | 71 | `result-track:89161726c90b03eef15e62aa1f98c315518f46b28b1babc8932506a1b0328820` |
| 5 | `theorem` | [Submodule.eq_top_of_localization₀_maximal](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Varianta3a339a6edef6bb081bc33126a8417a01bfdb3e96a9039dab19324280dfbbfcd.lean/declarations/submodule-eq-top-of-localization-maximal--e0420686bee75e132fcb54cc.md) | 76 | `result-track:e0420686bee75e132fcb54cc0a18b80f9a22889a53528ea865369944a2e89758` |
| 6 | `theorem` | [Module.eq_of_localization_maximal](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Varianta3a339a6edef6bb081bc33126a8417a01bfdb3e96a9039dab19324280dfbbfcd.lean/declarations/module-eq-of-localization-maximal--a90de79c6a3fe92a346fabbc.md) | 81 | `result-track:a90de79c6a3fe92a346fabbc4c6d5f018a6a36ee87c1b6f470becc1c8d6dce81` |
| 7 | `theorem` | [Module.eq_zero_of_localization_maximal](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Varianta3a339a6edef6bb081bc33126a8417a01bfdb3e96a9039dab19324280dfbbfcd.lean/declarations/module-eq-zero-of-localization-maximal--9ba2d62a5d51d82aa7f0aa15.md) | 90 | `result-track:9ba2d62a5d51d82aa7f0aa158d884c9bf37b510fc7bb469c91b537bc35980987` |
| 8 | `theorem` | [LinearMap.eq_of_localization_maximal](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Varianta3a339a6edef6bb081bc33126a8417a01bfdb3e96a9039dab19324280dfbbfcd.lean/declarations/linearmap-eq-of-localization-maximal--5b517a1388d418148313c8dc.md) | 95 | `result-track:5b517a1388d418148313c8dcb401bcf13e64dedb4804592cbc4e70d6084d79a6` |
| 9 | `theorem` | [Module.subsingleton_of_localization_maximal](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Varianta3a339a6edef6bb081bc33126a8417a01bfdb3e96a9039dab19324280dfbbfcd.lean/declarations/module-subsingleton-of-localization-maximal--740b7d08f0e693dbe36a859d.md) | 104 | `result-track:740b7d08f0e693dbe36a859dae3fe309d5612701a6f33cf5a36b5ebadcfb82db` |
| 10 | `theorem` | [Submodule.eq_of_localization_maximal](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Varianta3a339a6edef6bb081bc33126a8417a01bfdb3e96a9039dab19324280dfbbfcd.lean/declarations/submodule-eq-of-localization-maximal--2cd34827368b3f9b79a62679.md) | 111 | `result-track:2cd34827368b3f9b79a6267971067c96aaf4df0ab46a98e9dcc9eca3db42a28a` |
| 11 | `theorem` | [Submodule.eq_bot_of_localization_maximal](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Varianta3a339a6edef6bb081bc33126a8417a01bfdb3e96a9039dab19324280dfbbfcd.lean/declarations/submodule-eq-bot-of-localization-maximal--25493595df5dfc5544b331c9.md) | 117 | `result-track:25493595df5dfc5544b331c943fb58c3a7b5a290ae3c22f1e06a8dd2f2e9f6b9` |
| 12 | `theorem` | [Submodule.eq_top_of_localization_maximal](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Varianta3a339a6edef6bb081bc33126a8417a01bfdb3e96a9039dab19324280dfbbfcd.lean/declarations/submodule-eq-top-of-localization-maximal--0b49a770107e2ca92371142d.md) | 122 | `result-track:0b49a770107e2ca92371142dc15de0e8b752c7735751fcbea900ef2f03b8c41d` |
| 13 | `theorem` | [Module.eq_of_isLocalized_span](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Varianta3a339a6edef6bb081bc33126a8417a01bfdb3e96a9039dab19324280dfbbfcd.lean/declarations/module-eq-of-islocalized-span--6267e88ff7b1c6e9201d764f.md) | 149 | `result-track:6267e88ff7b1c6e9201d764f674cad3f93fb826fc04ccf348e0cd09b907c2cb8` |
| 14 | `theorem` | [Module.eq_zero_of_isLocalized_span](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Varianta3a339a6edef6bb081bc33126a8417a01bfdb3e96a9039dab19324280dfbbfcd.lean/declarations/module-eq-zero-of-islocalized-span--d69e7c99a8f09fe9ebff21b6.md) | 157 | `result-track:d69e7c99a8f09fe9ebff21b63e201c36703941990eab80afb874c5386f26acf5` |
| 15 | `theorem` | [Submodule.mem_of_isLocalized_span](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Varianta3a339a6edef6bb081bc33126a8417a01bfdb3e96a9039dab19324280dfbbfcd.lean/declarations/submodule-mem-of-islocalized-span--0d764af1949b4db1f863d78f.md) | 160 | `result-track:0d764af1949b4db1f863d78fbfd22bf1c8d14cd62f633b927fc02d9879128a93` |
| 16 | `theorem` | [Submodule.le_of_isLocalized_span](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Varianta3a339a6edef6bb081bc33126a8417a01bfdb3e96a9039dab19324280dfbbfcd.lean/declarations/submodule-le-of-islocalized-span--a0805715c691c0c903be635a.md) | 173 | `result-track:a0805715c691c0c903be635ae3578d07ff5eed387805398a100b5a364ab2bc98` |
| 17 | `theorem` | [Submodule.eq_of_isLocalized₀_span](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Varianta3a339a6edef6bb081bc33126a8417a01bfdb3e96a9039dab19324280dfbbfcd.lean/declarations/submodule-eq-of-islocalized-span--08648fc0d62b32c88d2e2202.md) | 177 | `result-track:08648fc0d62b32c88d2e220255622683d809a65b8f03175943be3f7604c07516` |
| 18 | `theorem` | [Submodule.eq_bot_of_isLocalized₀_span](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Varianta3a339a6edef6bb081bc33126a8417a01bfdb3e96a9039dab19324280dfbbfcd.lean/declarations/submodule-eq-bot-of-islocalized-span--9fbd7419039c75ba7209d2ea.md) | 182 | `result-track:9fbd7419039c75ba7209d2eaa2d358e7af8bc5d874915d9826e82afd4e25e38f` |
| 19 | `theorem` | [Submodule.eq_top_of_isLocalized₀_span](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Varianta3a339a6edef6bb081bc33126a8417a01bfdb3e96a9039dab19324280dfbbfcd.lean/declarations/submodule-eq-top-of-islocalized-span--601d264183fa55b350d48fbc.md) | 186 | `result-track:601d264183fa55b350d48fbc7af1ee57519d6266b5f014b529087315b345685f` |
| 20 | `theorem` | [Submodule.eq_of_isLocalized'_span](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Varianta3a339a6edef6bb081bc33126a8417a01bfdb3e96a9039dab19324280dfbbfcd.lean/declarations/submodule-eq-of-islocalized-span--49f89dce3b5b3f31e7885289.md) | 190 | `result-track:49f89dce3b5b3f31e78852895fa8610a9838ad63d579b5fd329a1b727e16fffe` |
| 21 | `theorem` | [Submodule.eq_bot_of_isLocalized'_span](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Varianta3a339a6edef6bb081bc33126a8417a01bfdb3e96a9039dab19324280dfbbfcd.lean/declarations/submodule-eq-bot-of-islocalized-span--6fb39218fd7235f1e485bc80.md) | 195 | `result-track:6fb39218fd7235f1e485bc80781ec273a723ba12ff8491681b7894a4b15ac441` |
| 22 | `theorem` | [Submodule.eq_top_of_isLocalized'_span](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Varianta3a339a6edef6bb081bc33126a8417a01bfdb3e96a9039dab19324280dfbbfcd.lean/declarations/submodule-eq-top-of-islocalized-span--574357477ac20fe5555317e4.md) | 199 | `result-track:574357477ac20fe5555317e46a9f74ba80659eb4cda74b71b474a8b447712ac1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
