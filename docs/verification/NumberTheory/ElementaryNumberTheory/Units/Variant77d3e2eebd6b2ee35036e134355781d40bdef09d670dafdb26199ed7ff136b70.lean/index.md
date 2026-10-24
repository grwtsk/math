# Verification target: GRWTSK.NumberTheory.ElementaryNumberTheory.Units.Variant77d3e2eebd6b2ee35036e134355781d40bdef09d670dafdb26199ed7ff136b70

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "71f72ce42329d9b9a7050430c536b1dc6cf4eec4",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Units/Variant77d3e2eebd6b2ee35036e134355781d40bdef09d670dafdb26199ed7ff136b70.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Units/Variant77d3e2eebd6b2ee35036e134355781d40bdef09d670dafdb26199ed7ff136b70.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Units/Variant77d3e2eebd6b2ee35036e134355781d40bdef09d670dafdb26199ed7ff136b70.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `71f72ce42329d9b9a7050430c536b1dc6cf4eec4`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/Units/Variant77d3e2eebd6b2ee35036e134355781d40bdef09d670dafdb26199ed7ff136b70.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/Units/Variant77d3e2eebd6b2ee35036e134355781d40bdef09d670dafdb26199ed7ff136b70.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Associated` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.ZMod.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Coprime.Lemmas` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [unitsMap](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Units/Variant77d3e2eebd6b2ee35036e134355781d40bdef09d670dafdb26199ed7ff136b70.lean/declarations/unitsmap--52ec8d86b1c67db336facf55.md) | 21 | `declaration-track:52ec8d86b1c67db336facf554d7e0c1452b76742bf0d2b3ec6facf39b48e3692` |
| 2 | `lemma` | [unitsMap_def](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Units/Variant77d3e2eebd6b2ee35036e134355781d40bdef09d670dafdb26199ed7ff136b70.lean/declarations/unitsmap-def--31b77a144ba5396445efabbe.md) | 23 | `result-track:31b77a144ba5396445efabbe5b6032bbbe5454e2b684bf099646b02fbf742817` |
| 3 | `lemma` | [unitsMap_comp](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Units/Variant77d3e2eebd6b2ee35036e134355781d40bdef09d670dafdb26199ed7ff136b70.lean/declarations/unitsmap-comp--0504db172657c30b7ae86a0a.md) | 25 | `result-track:0504db172657c30b7ae86a0a8ed1987b4824d057cda6b7934715d7ebea28f00a` |
| 4 | `lemma` | [unitsMap_self](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Units/Variant77d3e2eebd6b2ee35036e134355781d40bdef09d670dafdb26199ed7ff136b70.lean/declarations/unitsmap-self--9d9be95e6a6b99e3935d7c6f.md) | 32 | `result-track:9d9be95e6a6b99e3935d7c6f303247191c7698df17cdf9f1454d4ca2336608f5` |
| 5 | `lemma` | [unitsMap_val](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Units/Variant77d3e2eebd6b2ee35036e134355781d40bdef09d670dafdb26199ed7ff136b70.lean/declarations/unitsmap-val--eb57662cbcd7b49a10315e85.md) | 37 | `result-track:eb57662cbcd7b49a10315e85fb7daf874f281eefce2f57acc3e6c7826a1abcc5` |
| 6 | `lemma` | [isUnit_cast_of_dvd](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Units/Variant77d3e2eebd6b2ee35036e134355781d40bdef09d670dafdb26199ed7ff136b70.lean/declarations/isunit-cast-of-dvd--10ae967878af7dee3ec16013.md) | 40 | `result-track:10ae967878af7dee3ec16013d5f8336adc9c40bb8816c7cf9358c74f38d3385f` |
| 7 | `theorem` | [unitsMap_surjective](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Units/Variant77d3e2eebd6b2ee35036e134355781d40bdef09d670dafdb26199ed7ff136b70.lean/declarations/unitsmap-surjective--5018a8d1f58428a096ba808b.md) | 44 | `result-track:5018a8d1f58428a096ba808bdda2ed519ea5f260726fc4ee21e9f3eeee87f03b` |
| 8 | `lemma` | [not_isUnit_of_mem_primeFactors](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Units/Variant77d3e2eebd6b2ee35036e134355781d40bdef09d670dafdb26199ed7ff136b70.lean/declarations/not-isunit-of-mem-primefactors--687dcd6f22b5ce9ed0a0fce9.md) | 73 | `result-track:687dcd6f22b5ce9ed0a0fce9d10facee176f291d5f5d7f6216a1c2d00cd76593` |
| 9 | `lemma` | [eq_unit_mul_divisor](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Units/Variant77d3e2eebd6b2ee35036e134355781d40bdef09d670dafdb26199ed7ff136b70.lean/declarations/eq-unit-mul-divisor--0a52f74780d8ea185829fabd.md) | 79 | `result-track:0a52f74780d8ea185829fabd8035a8b399de508ba0467faa814b8641dc9c6176` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
