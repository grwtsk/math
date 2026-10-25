# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.Sqrt.Variant6b93f881522aa7209b3820d14a83a7a09a4f51a82f7887a4aeb8e5aed3deae9f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c0b22ccb3bb293061a55e98ef20b07ed2728a5b5",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/Sqrt/Variant6b93f881522aa7209b3820d14a83a7a09a4f51a82f7887a4aeb8e5aed3deae9f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/FoundationsLogicAndTypeTheory/Sqrt/Variant6b93f881522aa7209b3820d14a83a7a09a4f51a82f7887a4aeb8e5aed3deae9f.lean/index.md) · [Full source](../../../../mathematics/FoundationsLogicAndTypeTheory/Sqrt/Variant6b93f881522aa7209b3820d14a83a7a09a4f51a82f7887a4aeb8e5aed3deae9f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c0b22ccb3bb293061a55e98ef20b07ed2728a5b5`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/Sqrt/Variant6b93f881522aa7209b3820d14a83a7a09a4f51a82f7887a4aeb8e5aed3deae9f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/Sqrt/Variant6b93f881522aa7209b3820d14a83a7a09a4f51a82f7887a4aeb8e5aed3deae9f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Int.Order.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Size` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.ForSqrt` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsSqrt](../../../../mathematics/FoundationsLogicAndTypeTheory/Sqrt/Variant6b93f881522aa7209b3820d14a83a7a09a4f51a82f7887a4aeb8e5aed3deae9f.lean/declarations/issqrt--9cb8d428189b7c4ac9223eeb.md) | 42 | `declaration-track:9cb8d428189b7c4ac9223eebda7ce937caa7492d0170295dcc8ee110419ae252` |
| 2 | `theorem` | [sqrt_isSqrt](../../../../mathematics/FoundationsLogicAndTypeTheory/Sqrt/Variant6b93f881522aa7209b3820d14a83a7a09a4f51a82f7887a4aeb8e5aed3deae9f.lean/declarations/sqrt-issqrt--d6703dd217e3c1b8aabad98f.md) | 55 | `result-track:d6703dd217e3c1b8aabad98fe2170a4efe06577c927440fa844573052e677c81` |
| 3 | `theorem` | [sqrt_le](../../../../mathematics/FoundationsLogicAndTypeTheory/Sqrt/Variant6b93f881522aa7209b3820d14a83a7a09a4f51a82f7887a4aeb8e5aed3deae9f.lean/declarations/sqrt-le--aafd8c3da4771d7df0918990.md) | 72 | `result-track:aafd8c3da4771d7df0918990084db5e347279fd037fa7ce39226142522b6c840` |
| 4 | `theorem` | [sqrt_le'](../../../../mathematics/FoundationsLogicAndTypeTheory/Sqrt/Variant6b93f881522aa7209b3820d14a83a7a09a4f51a82f7887a4aeb8e5aed3deae9f.lean/declarations/sqrt-le--ff0e5e53c3dd2b0da8d5feab.md) | 76 | `result-track:ff0e5e53c3dd2b0da8d5feabeb5ecb5bc877b3ef94af138dea35859abc061793` |
| 5 | `theorem` | [lt_succ_sqrt](../../../../mathematics/FoundationsLogicAndTypeTheory/Sqrt/Variant6b93f881522aa7209b3820d14a83a7a09a4f51a82f7887a4aeb8e5aed3deae9f.lean/declarations/lt-succ-sqrt--7f43bad4fadfc1ec99ce63f5.md) | 80 | `result-track:7f43bad4fadfc1ec99ce63f5259af62f2473808d76bd7de3e846fd760ead47fd` |
| 6 | `theorem` | [lt_succ_sqrt'](../../../../mathematics/FoundationsLogicAndTypeTheory/Sqrt/Variant6b93f881522aa7209b3820d14a83a7a09a4f51a82f7887a4aeb8e5aed3deae9f.lean/declarations/lt-succ-sqrt--6a003aa4fc3b295246c43ff4.md) | 84 | `result-track:6a003aa4fc3b295246c43ff41fd22d21f9f23666629cd32d0419df431540b3d7` |
| 7 | `theorem` | [sqrt_le_add](../../../../mathematics/FoundationsLogicAndTypeTheory/Sqrt/Variant6b93f881522aa7209b3820d14a83a7a09a4f51a82f7887a4aeb8e5aed3deae9f.lean/declarations/sqrt-le-add--d987267f34d25337d3235727.md) | 88 | `result-track:d987267f34d25337d3235727c33112d281ac6f9f2bdff1717981a03a5b1bbcfe` |
| 8 | `theorem` | [le_sqrt](../../../../mathematics/FoundationsLogicAndTypeTheory/Sqrt/Variant6b93f881522aa7209b3820d14a83a7a09a4f51a82f7887a4aeb8e5aed3deae9f.lean/declarations/le-sqrt--04a03dfe948b79b1921ed590.md) | 92 | `result-track:04a03dfe948b79b1921ed5906e9adae817c11d35f2768f28a4676ba2e74c5699` |
| 9 | `theorem` | [le_sqrt'](../../../../mathematics/FoundationsLogicAndTypeTheory/Sqrt/Variant6b93f881522aa7209b3820d14a83a7a09a4f51a82f7887a4aeb8e5aed3deae9f.lean/declarations/le-sqrt--c9a12ea9be0f3ddc2e32ce65.md) | 97 | `result-track:c9a12ea9be0f3ddc2e32ce65e08096b41cb224b21a80a61e6292a505d4761f57` |
| 10 | `theorem` | [sqrt_lt](../../../../mathematics/FoundationsLogicAndTypeTheory/Sqrt/Variant6b93f881522aa7209b3820d14a83a7a09a4f51a82f7887a4aeb8e5aed3deae9f.lean/declarations/sqrt-lt--88af46549cf810f54da93994.md) | 100 | `result-track:88af46549cf810f54da93994186bc262ce0328db2e80047f29c4226c8b39866c` |
| 11 | `theorem` | [sqrt_lt'](../../../../mathematics/FoundationsLogicAndTypeTheory/Sqrt/Variant6b93f881522aa7209b3820d14a83a7a09a4f51a82f7887a4aeb8e5aed3deae9f.lean/declarations/sqrt-lt--61fc26673b8952111212b803.md) | 104 | `result-track:61fc26673b8952111212b803c549f9dff6502027cc160994976012417e8f0782` |
| 12 | `theorem` | [sqrt_le_self](../../../../mathematics/FoundationsLogicAndTypeTheory/Sqrt/Variant6b93f881522aa7209b3820d14a83a7a09a4f51a82f7887a4aeb8e5aed3deae9f.lean/declarations/sqrt-le-self--fc887a492a69d6831653529b.md) | 108 | `result-track:fc887a492a69d6831653529b13bfe9b7d9a73985b763de9bd0be93705870965b` |
| 13 | `theorem` | [sqrt_le_sqrt](../../../../mathematics/FoundationsLogicAndTypeTheory/Sqrt/Variant6b93f881522aa7209b3820d14a83a7a09a4f51a82f7887a4aeb8e5aed3deae9f.lean/declarations/sqrt-le-sqrt--2d76207f967af98d2ae02bc8.md) | 112 | `result-track:2d76207f967af98d2ae02bc848fff7243650c1c2e1ea36b70852c7db42af2fe3` |
| 14 | `theorem` | [sqrt_zero](../../../../mathematics/FoundationsLogicAndTypeTheory/Sqrt/Variant6b93f881522aa7209b3820d14a83a7a09a4f51a82f7887a4aeb8e5aed3deae9f.lean/declarations/sqrt-zero--47a76d82b6d2e1b32e70a24d.md) | 117 | `result-track:47a76d82b6d2e1b32e70a24d5a4da03475297ee20ec0219040b3c0e6241d1149` |
| 15 | `theorem` | [sqrt_eq_zero](../../../../mathematics/FoundationsLogicAndTypeTheory/Sqrt/Variant6b93f881522aa7209b3820d14a83a7a09a4f51a82f7887a4aeb8e5aed3deae9f.lean/declarations/sqrt-eq-zero--00e45b34d5b6c8b3c5c0c28b.md) | 120 | `result-track:00e45b34d5b6c8b3c5c0c28b919106497965de444557ef944b866dc955ab2cb9` |
| 16 | `theorem` | [eq_sqrt](../../../../mathematics/FoundationsLogicAndTypeTheory/Sqrt/Variant6b93f881522aa7209b3820d14a83a7a09a4f51a82f7887a4aeb8e5aed3deae9f.lean/declarations/eq-sqrt--603086b4932d795fae58c44a.md) | 126 | `result-track:603086b4932d795fae58c44a8b794d1b5045be1564a57b7d5979bd40e31d680a` |
| 17 | `theorem` | [eq_sqrt'](../../../../mathematics/FoundationsLogicAndTypeTheory/Sqrt/Variant6b93f881522aa7209b3820d14a83a7a09a4f51a82f7887a4aeb8e5aed3deae9f.lean/declarations/eq-sqrt--3b9b948cb2a4f709fcdda9e7.md) | 131 | `result-track:3b9b948cb2a4f709fcdda9e7c5f789832ea234b0392e9b1bddeb35b8db68f96d` |
| 18 | `theorem` | [le_three_of_sqrt_eq_one](../../../../mathematics/FoundationsLogicAndTypeTheory/Sqrt/Variant6b93f881522aa7209b3820d14a83a7a09a4f51a82f7887a4aeb8e5aed3deae9f.lean/declarations/le-three-of-sqrt-eq-one--d79e8af6919b36b1f106b1b1.md) | 135 | `result-track:d79e8af6919b36b1f106b1b19b3fd26b6387c13d21ae9f725e4efaad6b4cbcfd` |
| 19 | `theorem` | [sqrt_lt_self](../../../../mathematics/FoundationsLogicAndTypeTheory/Sqrt/Variant6b93f881522aa7209b3820d14a83a7a09a4f51a82f7887a4aeb8e5aed3deae9f.lean/declarations/sqrt-lt-self--3f7f71fb54891bcfa50c448a.md) | 139 | `result-track:3f7f71fb54891bcfa50c448a5170c1b62502b55677ced929644973bc39f3ab27` |
| 20 | `theorem` | [sqrt_pos](../../../../mathematics/FoundationsLogicAndTypeTheory/Sqrt/Variant6b93f881522aa7209b3820d14a83a7a09a4f51a82f7887a4aeb8e5aed3deae9f.lean/declarations/sqrt-pos--d7002576d1e7ffdf8d78a563.md) | 143 | `result-track:d7002576d1e7ffdf8d78a563789642d9cc51c5e1536929873e531ef6f1579e8d` |
| 21 | `theorem` | [sqrt_add_eq](../../../../mathematics/FoundationsLogicAndTypeTheory/Sqrt/Variant6b93f881522aa7209b3820d14a83a7a09a4f51a82f7887a4aeb8e5aed3deae9f.lean/declarations/sqrt-add-eq--312be6e8c2dd8a8299b27641.md) | 147 | `result-track:312be6e8c2dd8a8299b27641cdfa3e14c894ac5afacb10b3278b2cdfd3911ea4` |
| 22 | `theorem` | [sqrt_add_eq'](../../../../mathematics/FoundationsLogicAndTypeTheory/Sqrt/Variant6b93f881522aa7209b3820d14a83a7a09a4f51a82f7887a4aeb8e5aed3deae9f.lean/declarations/sqrt-add-eq--ffdf3c75863f755c709b66aa.md) | 156 | `result-track:ffdf3c75863f755c709b66aadd66f523857499c38677d38b0536a9dab325ed9e` |
| 23 | `theorem` | [sqrt_eq](../../../../mathematics/FoundationsLogicAndTypeTheory/Sqrt/Variant6b93f881522aa7209b3820d14a83a7a09a4f51a82f7887a4aeb8e5aed3deae9f.lean/declarations/sqrt-eq--815bccb894a9ab30fff9fd18.md) | 160 | `result-track:815bccb894a9ab30fff9fd180a3dbc7ae34ca47879aef46891259a58bc7e7a8f` |
| 24 | `theorem` | [sqrt_eq'](../../../../mathematics/FoundationsLogicAndTypeTheory/Sqrt/Variant6b93f881522aa7209b3820d14a83a7a09a4f51a82f7887a4aeb8e5aed3deae9f.lean/declarations/sqrt-eq--71b6d6209067ad398088a5e5.md) | 164 | `result-track:71b6d6209067ad398088a5e5701842d3bc94826bdeb41df5e85e4fb84f76d1b0` |
| 25 | `theorem` | [sqrt_one](../../../../mathematics/FoundationsLogicAndTypeTheory/Sqrt/Variant6b93f881522aa7209b3820d14a83a7a09a4f51a82f7887a4aeb8e5aed3deae9f.lean/declarations/sqrt-one--057028dd59e1fdf4da941a8b.md) | 169 | `result-track:057028dd59e1fdf4da941a8b33e0e1363fc452235839ee07495363d5dfbdc7ea` |
| 26 | `theorem` | [sqrt_succ_le_succ_sqrt](../../../../mathematics/FoundationsLogicAndTypeTheory/Sqrt/Variant6b93f881522aa7209b3820d14a83a7a09a4f51a82f7887a4aeb8e5aed3deae9f.lean/declarations/sqrt-succ-le-succ-sqrt--1923b8013bfc51ab36ac1aa3.md) | 173 | `result-track:1923b8013bfc51ab36ac1aa367429576753f52c7653583a78382f745a8e446ec` |
| 27 | `theorem` | [exists_mul_self](../../../../mathematics/FoundationsLogicAndTypeTheory/Sqrt/Variant6b93f881522aa7209b3820d14a83a7a09a4f51a82f7887a4aeb8e5aed3deae9f.lean/declarations/exists-mul-self--90ff3e5ae3b81a3c94509ecf.md) | 179 | `result-track:90ff3e5ae3b81a3c94509ecf74026e34a167b8d6ad5ff97191034d1e4eebbfd0` |
| 28 | `theorem` | [exists_mul_self'](../../../../mathematics/FoundationsLogicAndTypeTheory/Sqrt/Variant6b93f881522aa7209b3820d14a83a7a09a4f51a82f7887a4aeb8e5aed3deae9f.lean/declarations/exists-mul-self--e96bd210074f11818352a942.md) | 183 | `result-track:e96bd210074f11818352a94221b125e382c1ccddc947b0b8aa6e84a95ba33e87` |
| 29 | `theorem` | [sqrt_mul_sqrt_lt_succ](../../../../mathematics/FoundationsLogicAndTypeTheory/Sqrt/Variant6b93f881522aa7209b3820d14a83a7a09a4f51a82f7887a4aeb8e5aed3deae9f.lean/declarations/sqrt-mul-sqrt-lt-succ--9bcfd0f98fdcdeec8f8a7010.md) | 187 | `result-track:9bcfd0f98fdcdeec8f8a701093d9d4212f0fa017bf358f87c6564cf076933635` |
| 30 | `theorem` | [sqrt_mul_sqrt_lt_succ'](../../../../mathematics/FoundationsLogicAndTypeTheory/Sqrt/Variant6b93f881522aa7209b3820d14a83a7a09a4f51a82f7887a4aeb8e5aed3deae9f.lean/declarations/sqrt-mul-sqrt-lt-succ--9e1ad78810b02d98bb0eb222.md) | 191 | `result-track:9e1ad78810b02d98bb0eb222c42647bb99ee9f755d5c470980aaa938c31c2815` |
| 31 | `theorem` | [succ_le_succ_sqrt](../../../../mathematics/FoundationsLogicAndTypeTheory/Sqrt/Variant6b93f881522aa7209b3820d14a83a7a09a4f51a82f7887a4aeb8e5aed3deae9f.lean/declarations/succ-le-succ-sqrt--0c6d6342b504de82b17d49fd.md) | 195 | `result-track:0c6d6342b504de82b17d49fdb74a3170fc5db8edd9bd438b753800b3ff664c80` |
| 32 | `theorem` | [succ_le_succ_sqrt'](../../../../mathematics/FoundationsLogicAndTypeTheory/Sqrt/Variant6b93f881522aa7209b3820d14a83a7a09a4f51a82f7887a4aeb8e5aed3deae9f.lean/declarations/succ-le-succ-sqrt--c646b5d5d7848d979c4f0118.md) | 199 | `result-track:c646b5d5d7848d979c4f0118f763a99ce25ff26ac4e3ffc66dec7d93824f3918` |
| 33 | `theorem` | [not_exists_sq](../../../../mathematics/FoundationsLogicAndTypeTheory/Sqrt/Variant6b93f881522aa7209b3820d14a83a7a09a4f51a82f7887a4aeb8e5aed3deae9f.lean/declarations/not-exists-sq--941817cb9b63d903cae571df.md) | 204 | `result-track:941817cb9b63d903cae571dff85b9ff35f0bc97e83c2c760a4ab68ee685de631` |
| 34 | `theorem` | [not_exists_sq'](../../../../mathematics/FoundationsLogicAndTypeTheory/Sqrt/Variant6b93f881522aa7209b3820d14a83a7a09a4f51a82f7887a4aeb8e5aed3deae9f.lean/declarations/not-exists-sq--1869f5ab9d5495e1fe85ef1e.md) | 212 | `result-track:1869f5ab9d5495e1fe85ef1e42c49a7e7a113afe1109b108ab39873487aafe4b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
