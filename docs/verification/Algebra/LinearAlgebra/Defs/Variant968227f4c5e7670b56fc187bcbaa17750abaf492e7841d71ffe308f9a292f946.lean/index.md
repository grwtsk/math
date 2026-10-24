# Verification target: GRWTSK.Algebra.LinearAlgebra.Defs.Variant968227f4c5e7670b56fc187bcbaa17750abaf492e7841d71ffe308f9a292f946

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "04e1c760b2be5349b81525fb1dc81fcacee153dd",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Defs/Variant968227f4c5e7670b56fc187bcbaa17750abaf492e7841d71ffe308f9a292f946.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant968227f4c5e7670b56fc187bcbaa17750abaf492e7841d71ffe308f9a292f946.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant968227f4c5e7670b56fc187bcbaa17750abaf492e7841d71ffe308f9a292f946.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `04e1c760b2be5349b81525fb1dc81fcacee153dd`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Defs/Variant968227f4c5e7670b56fc187bcbaa17750abaf492e7841d71ffe308f9a292f946.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Defs/Variant968227f4c5e7670b56fc187bcbaa17750abaf492e7841d71ffe308f9a292f946.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Algebra.Hom` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Finite.Lemmas` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finsupp.Defs` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Finiteness` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.Span` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Algebraize` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [FG](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant968227f4c5e7670b56fc187bcbaa17750abaf492e7841d71ffe308f9a292f946.lean/declarations/fg--97df2259dc27b7c297965380.md) | 48 | `declaration-track:97df2259dc27b7c297965380bf15ccc099928c8c6b62cd12418aef2eef5320b9` |
| 2 | `theorem` | [fg_def](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant968227f4c5e7670b56fc187bcbaa17750abaf492e7841d71ffe308f9a292f946.lean/declarations/fg-def--372bd475332577209a7e090c.md) | 51 | `result-track:372bd475332577209a7e090cc17df99a6f0e761a63df955f6aebd48d861bbf7f` |
| 3 | `theorem` | [fg_iff_addSubmonoid_fg](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant968227f4c5e7670b56fc187bcbaa17750abaf492e7841d71ffe308f9a292f946.lean/declarations/fg-iff-addsubmonoid-fg--76a309aee85e31f4dac32d97.md) | 57 | `result-track:76a309aee85e31f4dac32d97844b911a6d34cbf0e6a7a99abbdc918e82aed3ea` |
| 4 | `theorem` | [fg_iff_add_subgroup_fg](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant968227f4c5e7670b56fc187bcbaa17750abaf492e7841d71ffe308f9a292f946.lean/declarations/fg-iff-add-subgroup-fg--fb384207f370b757dd5fc3ef.md) | 61 | `result-track:fb384207f370b757dd5fc3ef429ff59f6866584343f564769f9ee9b9c737f2be` |
| 5 | `theorem` | [fg_iff_exists_fin_generating_family](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant968227f4c5e7670b56fc187bcbaa17750abaf492e7841d71ffe308f9a292f946.lean/declarations/fg-iff-exists-fin-generating-family--7763b3fb86261e1dc265e9c1.md) | 66 | `result-track:7763b3fb86261e1dc265e9c1dc434d3a80a95c281f5e726f54d6795d005cacdf` |
| 6 | `lemma` | [fg_iff_exists_finite_generating_family](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant968227f4c5e7670b56fc187bcbaa17750abaf492e7841d71ffe308f9a292f946.lean/declarations/fg-iff-exists-finite-generating-family--9f5866b288187d1711c88bf1.md) | 77 | `result-track:9f5866b288187d1711c88bf18b1d4226241be27f0ac0f242c2e81f01e57bf3e8` |
| 7 | `def` | [FG](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant968227f4c5e7670b56fc187bcbaa17750abaf492e7841d71ffe308f9a292f946.lean/declarations/fg--998ff73467219e02f65819fc.md) | 100 | `declaration-track:998ff73467219e02f65819fcfcb0bdfd26a0b4534690cd490ff8ed59c762c77e` |
| 8 | `class` | [Module.Finite](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant968227f4c5e7670b56fc187bcbaa17750abaf492e7841d71ffe308f9a292f946.lean/declarations/module-finite--8b05cb21b645f175c053831b.md) | 110 | `declaration-track:8b05cb21b645f175c053831bbf8b6e04f466683e639c81ea5f8605cc65b649eb` |
| 9 | `theorem` | [finite_def](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant968227f4c5e7670b56fc187bcbaa17750abaf492e7841d71ffe308f9a292f946.lean/declarations/finite-def--b10d90c12fc306551a559458.md) | 119 | `result-track:b10d90c12fc306551a5594586fef4eea12b57e007a6431b8150200f7c43209e3` |
| 10 | `theorem` | [iff_addMonoid_fg](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant968227f4c5e7670b56fc187bcbaa17750abaf492e7841d71ffe308f9a292f946.lean/declarations/iff-addmonoid-fg--569c0307ab13ddfa906ac1d1.md) | 127 | `result-track:569c0307ab13ddfa906ac1d16152616a2e57a9f6b8b20e6799c921c02226c262` |
| 11 | `theorem` | [iff_addGroup_fg](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant968227f4c5e7670b56fc187bcbaa17750abaf492e7841d71ffe308f9a292f946.lean/declarations/iff-addgroup-fg--61ccd9ceee21604c8b7e2c44.md) | 131 | `result-track:61ccd9ceee21604c8b7e2c44af684a6bab48a89e5af5c48a9c160cd1e492463f` |
| 12 | `lemma` | [exists_fin](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant968227f4c5e7670b56fc187bcbaa17750abaf492e7841d71ffe308f9a292f946.lean/declarations/exists-fin--77330b240174659ebb1ddb1d.md) | 138 | `result-track:77330b240174659ebb1ddb1d3098077be424760e53d407e3409ac45916376c4a` |
| 13 | `instance` | [AddMonoid.FG.to_moduleFinite_nat](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant968227f4c5e7670b56fc187bcbaa17750abaf492e7841d71ffe308f9a292f946.lean/declarations/addmonoid-fg-to-modulefinite-nat--bd0e729dc6cc8182cfe85a57.md) | 145 | `declaration-track:bd0e729dc6cc8182cfe85a575c9447431c227decfb0cb3814e161bfb8a662aaf` |
| 14 | `instance` | [AddMonoid.FG.to_moduleFinite_int](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant968227f4c5e7670b56fc187bcbaa17750abaf492e7841d71ffe308f9a292f946.lean/declarations/addmonoid-fg-to-modulefinite-int--9bfb5a4233ca4a2501d38a23.md) | 149 | `declaration-track:9bfb5a4233ca4a2501d38a232854019b7f74880d95c4ce60ef38875eb90015cd` |
| 15 | `def` | [Finite](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant968227f4c5e7670b56fc187bcbaa17750abaf492e7841d71ffe308f9a292f946.lean/declarations/finite--6dc10559f67fd31464425a78.md) | 161 | `declaration-track:6dc10559f67fd31464425a78ed787e00b3940a0aaafa2fca652b28b6886f4488` |
| 16 | `def` | [Finite](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant968227f4c5e7670b56fc187bcbaa17750abaf492e7841d71ffe308f9a292f946.lean/declarations/finite--248499b58980e41f71216d92.md) | 175 | `declaration-track:248499b58980e41f71216d928adb7ac004c420e6b8793f902117c635cc70e1f8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
