# Verification target: GRWTSK.Analysis.MeasureTheory.HittingTime.Variant1329ca4f5dbe0a5a00224cded7618a682b9f3ed6664014067915f6318a84f09b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7d66eb7ac3040847f34d1fa38b020a970c913fcb",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/HittingTime/Variant1329ca4f5dbe0a5a00224cded7618a682b9f3ed6664014067915f6318a84f09b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/HittingTime/Variant1329ca4f5dbe0a5a00224cded7618a682b9f3ed6664014067915f6318a84f09b.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/HittingTime/Variant1329ca4f5dbe0a5a00224cded7618a682b9f3ed6664014067915f6318a84f09b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7d66eb7ac3040847f34d1fa38b020a970c913fcb`.

Source path: `GRWTSK/Analysis/MeasureTheory/HittingTime/Variant1329ca4f5dbe0a5a00224cded7618a682b9f3ed6664014067915f6318a84f09b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/HittingTime/Variant1329ca4f5dbe0a5a00224cded7618a682b9f3ed6664014067915f6318a84f09b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Probability.Process.Stopping` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [hitting](../../../../../mathematics/Analysis/MeasureTheory/HittingTime/Variant1329ca4f5dbe0a5a00224cded7618a682b9f3ed6664014067915f6318a84f09b.lean/declarations/hitting--1d9009d86c40c7d997f40f9e.md) | 59 | `declaration-track:1d9009d86c40c7d997f40f9e54f8b55f3bec179d1652ba2e98183492c1b923fa` |
| 2 | `theorem` | [hitting_of_lt](../../../../../mathematics/Analysis/MeasureTheory/HittingTime/Variant1329ca4f5dbe0a5a00224cded7618a682b9f3ed6664014067915f6318a84f09b.lean/declarations/hitting-of-lt--11e9e4b51808a5268dd54f2b.md) | 68 | `result-track:11e9e4b51808a5268dd54f2b3636ebdd81d645fc1b41681fb67fb161a9468dea` |
| 3 | `theorem` | [hitting_le](../../../../../mathematics/Analysis/MeasureTheory/HittingTime/Variant1329ca4f5dbe0a5a00224cded7618a682b9f3ed6664014067915f6318a84f09b.lean/declarations/hitting-le--be071915aa5177ba33e17939.md) | 79 | `result-track:be071915aa5177ba33e1793947ee8e0fedb2ccf2aab12f449c9de7209eae9409` |
| 4 | `theorem` | [not_mem_of_lt_hitting](../../../../../mathematics/Analysis/MeasureTheory/HittingTime/Variant1329ca4f5dbe0a5a00224cded7618a682b9f3ed6664014067915f6318a84f09b.lean/declarations/not-mem-of-lt-hitting--0b2c068162198821861d0a0b.md) | 90 | `result-track:0b2c068162198821861d0a0bfd3d9b6e02b8fe81eb894a4371a24ef9d482cb61` |
| 5 | `theorem` | [hitting_eq_end_iff](../../../../../mathematics/Analysis/MeasureTheory/HittingTime/Variant1329ca4f5dbe0a5a00224cded7618a682b9f3ed6664014067915f6318a84f09b.lean/declarations/hitting-eq-end-iff--d822d618d1707518e470b4b8.md) | 101 | `result-track:d822d618d1707518e470b4b8d57b5d15d2c5b4ec2bddbe1985ab02571fe0760f` |
| 6 | `theorem` | [hitting_of_le](../../../../../mathematics/Analysis/MeasureTheory/HittingTime/Variant1329ca4f5dbe0a5a00224cded7618a682b9f3ed6664014067915f6318a84f09b.lean/declarations/hitting-of-le--a378ee0681125f4b09e873de.md) | 106 | `result-track:a378ee0681125f4b09e873ded73fca840c6a504ce6e256e71abbe3306e10b70a` |
| 7 | `theorem` | [le_hitting](../../../../../mathematics/Analysis/MeasureTheory/HittingTime/Variant1329ca4f5dbe0a5a00224cded7618a682b9f3ed6664014067915f6318a84f09b.lean/declarations/le-hitting--15771ea792dd92fb0bb6972f.md) | 116 | `result-track:15771ea792dd92fb0bb6972ffed988554f2cd342da5bbbf295e729ca66939a0d` |
| 8 | `theorem` | [le_hitting_of_exists](../../../../../mathematics/Analysis/MeasureTheory/HittingTime/Variant1329ca4f5dbe0a5a00224cded7618a682b9f3ed6664014067915f6318a84f09b.lean/declarations/le-hitting-of-exists--8ba9ee412573d10a1a01a863.md) | 127 | `result-track:8ba9ee412573d10a1a01a86390ee9e1d837676efe0a08cae8884a6c3d24ceee1` |
| 9 | `theorem` | [hitting_mem_Icc](../../../../../mathematics/Analysis/MeasureTheory/HittingTime/Variant1329ca4f5dbe0a5a00224cded7618a682b9f3ed6664014067915f6318a84f09b.lean/declarations/hitting-mem-icc--f797a4017efe34ddb3e69c01.md) | 135 | `result-track:f797a4017efe34ddb3e69c013f6a3540176e6e1abd81eb350f219a798df4b754` |
| 10 | `theorem` | [hitting_mem_set](../../../../../mathematics/Analysis/MeasureTheory/HittingTime/Variant1329ca4f5dbe0a5a00224cded7618a682b9f3ed6664014067915f6318a84f09b.lean/declarations/hitting-mem-set--b00cc0c68958a01ae2fbbd4e.md) | 139 | `result-track:b00cc0c68958a01ae2fbbd4e9ef03f748959ce51c4f0baabe4189e026746c5de` |
| 11 | `theorem` | [hitting_mem_set_of_hitting_lt](../../../../../mathematics/Analysis/MeasureTheory/HittingTime/Variant1329ca4f5dbe0a5a00224cded7618a682b9f3ed6664014067915f6318a84f09b.lean/declarations/hitting-mem-set-of-hitting-lt--7ee2f74e4296adeab820a140.md) | 150 | `result-track:7ee2f74e4296adeab820a1406b76cb64a9a4da722c29fe99ef477b2488a668fb` |
| 12 | `theorem` | [hitting_le_of_mem](../../../../../mathematics/Analysis/MeasureTheory/HittingTime/Variant1329ca4f5dbe0a5a00224cded7618a682b9f3ed6664014067915f6318a84f09b.lean/declarations/hitting-le-of-mem--19892fe431cda2f6fae2d69c.md) | 158 | `result-track:19892fe431cda2f6fae2d69c1843978b1716aca92b70086423177ac0891bb5fb` |
| 13 | `theorem` | [hitting_le_iff_of_exists](../../../../../mathematics/Analysis/MeasureTheory/HittingTime/Variant1329ca4f5dbe0a5a00224cded7618a682b9f3ed6664014067915f6318a84f09b.lean/declarations/hitting-le-iff-of-exists--9a5a927f642812ed9b9946dd.md) | 165 | `result-track:9a5a927f642812ed9b9946ddb4cf4622c50ee335e42b485d38894807f5418747` |
| 14 | `theorem` | [hitting_le_iff_of_lt](../../../../../mathematics/Analysis/MeasureTheory/HittingTime/Variant1329ca4f5dbe0a5a00224cded7618a682b9f3ed6664014067915f6318a84f09b.lean/declarations/hitting-le-iff-of-lt--52c71b826ef1660c86508efa.md) | 180 | `result-track:52c71b826ef1660c86508efa8e16e5d19787dd6346b26489ef01746d146c71b7` |
| 15 | `theorem` | [hitting_lt_iff](../../../../../mathematics/Analysis/MeasureTheory/HittingTime/Variant1329ca4f5dbe0a5a00224cded7618a682b9f3ed6664014067915f6318a84f09b.lean/declarations/hitting-lt-iff--6b81b2af5cd723f607d5211b.md) | 190 | `result-track:6b81b2af5cd723f607d5211be24b44467959ac0c05aba87c9536c29a0a225309` |
| 16 | `theorem` | [hitting_eq_hitting_of_exists](../../../../../mathematics/Analysis/MeasureTheory/HittingTime/Variant1329ca4f5dbe0a5a00224cded7618a682b9f3ed6664014067915f6318a84f09b.lean/declarations/hitting-eq-hitting-of-exists--f6568ea42770a605ff0852c9.md) | 203 | `result-track:f6568ea42770a605ff0852c9943823b7fcb8590d166fcc6a47f8d984b5f85512` |
| 17 | `theorem` | [hitting_mono](../../../../../mathematics/Analysis/MeasureTheory/HittingTime/Variant1329ca4f5dbe0a5a00224cded7618a682b9f3ed6664014067915f6318a84f09b.lean/declarations/hitting-mono--958931f6b9e03afe0a31ed6f.md) | 219 | `result-track:958931f6b9e03afe0a31ed6f4d190b94ccb972908103574e9fe303fe5d77b438` |
| 18 | `theorem` | [hitting_isStoppingTime](../../../../../mathematics/Analysis/MeasureTheory/HittingTime/Variant1329ca4f5dbe0a5a00224cded7618a682b9f3ed6664014067915f6318a84f09b.lean/declarations/hitting-isstoppingtime--b02c13e17db023a6e8dd6c14.md) | 235 | `result-track:b02c13e17db023a6e8dd6c14d3c3ba1a2837e49e42111391802eaf4129c7ba17` |
| 19 | `theorem` | [stoppedValue_hitting_mem](../../../../../mathematics/Analysis/MeasureTheory/HittingTime/Variant1329ca4f5dbe0a5a00224cded7618a682b9f3ed6664014067915f6318a84f09b.lean/declarations/stoppedvalue-hitting-mem--c7160108c0c83532cec3c8a7.md) | 252 | `result-track:c7160108c0c83532cec3c8a709c56a61a2f957e42cb150fde05117f2b0bba812` |
| 20 | `theorem` | [isStoppingTime_hitting_isStoppingTime](../../../../../mathematics/Analysis/MeasureTheory/HittingTime/Variant1329ca4f5dbe0a5a00224cded7618a682b9f3ed6664014067915f6318a84f09b.lean/declarations/isstoppingtime-hitting-isstoppingtime--486c0fc3bf825044f1c17f51.md) | 264 | `result-track:486c0fc3bf825044f1c17f51c1a235eeb97ce8d1e7bb0dc9413577d011a0e936` |
| 21 | `theorem` | [hitting_eq_sInf](../../../../../mathematics/Analysis/MeasureTheory/HittingTime/Variant1329ca4f5dbe0a5a00224cded7618a682b9f3ed6664014067915f6318a84f09b.lean/declarations/hitting-eq-sinf--eb4099fdd21f841a22273a8e.md) | 291 | `result-track:eb4099fdd21f841a22273a8ee7828bcf53f84a9349c99d714d3af26c2008b27a` |
| 22 | `theorem` | [hitting_bot_le_iff](../../../../../mathematics/Analysis/MeasureTheory/HittingTime/Variant1329ca4f5dbe0a5a00224cded7618a682b9f3ed6664014067915f6318a84f09b.lean/declarations/hitting-bot-le-iff--b6a0572e55a26cd7e4743399.md) | 309 | `result-track:b6a0572e55a26cd7e4743399922d855c8f44980afef498d431edcd49ead29e0c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
