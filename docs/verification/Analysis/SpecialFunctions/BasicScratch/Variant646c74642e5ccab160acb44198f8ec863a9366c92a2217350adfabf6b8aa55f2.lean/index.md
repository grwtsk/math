# Verification target: GRWTSK.Analysis.SpecialFunctions.BasicScratch.Variant646c74642e5ccab160acb44198f8ec863a9366c92a2217350adfabf6b8aa55f2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "86ab147b7896067ba72a1eda362614f0db4a8598",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/SpecialFunctions/BasicScratch/Variant646c74642e5ccab160acb44198f8ec863a9366c92a2217350adfabf6b8aa55f2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/SpecialFunctions/BasicScratch/Variant646c74642e5ccab160acb44198f8ec863a9366c92a2217350adfabf6b8aa55f2.lean/index.md) · [Full source](../../../../../mathematics/Analysis/SpecialFunctions/BasicScratch/Variant646c74642e5ccab160acb44198f8ec863a9366c92a2217350adfabf6b8aa55f2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `86ab147b7896067ba72a1eda362614f0db4a8598`.

Source path: `GRWTSK/Analysis/SpecialFunctions/BasicScratch/Variant646c74642e5ccab160acb44198f8ec863a9366c92a2217350adfabf6b8aa55f2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/SpecialFunctions/BasicScratch/Variant646c74642e5ccab160acb44198f8ec863a9366c92a2217350adfabf6b8aa55f2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Bernstein` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fin.Rev` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [UnitInterval](../../../../../mathematics/Analysis/SpecialFunctions/BasicScratch/Variant646c74642e5ccab160acb44198f8ec863a9366c92a2217350adfabf6b8aa55f2.lean/declarations/unitinterval--cc10d63c0b6a2b5c09e589c5.md) | 16 | `declaration-track:cc10d63c0b6a2b5c09e589c5cde7065c32a8b36f8747053074916d76350b980a` |
| 2 | `def` | [bernstein](../../../../../mathematics/Analysis/SpecialFunctions/BasicScratch/Variant646c74642e5ccab160acb44198f8ec863a9366c92a2217350adfabf6b8aa55f2.lean/declarations/bernstein--9b46cee1b838d1ed88dd7456.md) | 18 | `declaration-track:9b46cee1b838d1ed88dd74569367f8f43a8f8e22aedd74ec4b63c67f071bd42b` |
| 3 | `theorem` | [bernstein_coe](../../../../../mathematics/Analysis/SpecialFunctions/BasicScratch/Variant646c74642e5ccab160acb44198f8ec863a9366c92a2217350adfabf6b8aa55f2.lean/declarations/bernstein-coe--57694d97a1fc92ed5e884caf.md) | 21 | `result-track:57694d97a1fc92ed5e884cafcb49f8b085a5234b02ddd7b0560eec1eb6318e7d` |
| 4 | `theorem` | [bernstein_nonneg](../../../../../mathematics/Analysis/SpecialFunctions/BasicScratch/Variant646c74642e5ccab160acb44198f8ec863a9366c92a2217350adfabf6b8aa55f2.lean/declarations/bernstein-nonneg--6fe88d218d4a62a9e54cfc98.md) | 26 | `result-track:6fe88d218d4a62a9e54cfc987e3bc3d3cd13950cc74330a142173eade31a9348` |
| 5 | `theorem` | [sum_bernstein](../../../../../mathematics/Analysis/SpecialFunctions/BasicScratch/Variant646c74642e5ccab160acb44198f8ec863a9366c92a2217350adfabf6b8aa55f2.lean/declarations/sum-bernstein--97d01a2229d6a065fa537a82.md) | 31 | `result-track:97d01a2229d6a065fa537a821a3d710f8801db8425228f8301abb1484289b75d` |
| 6 | `theorem` | [bernstein_zero](../../../../../mathematics/Analysis/SpecialFunctions/BasicScratch/Variant646c74642e5ccab160acb44198f8ec863a9366c92a2217350adfabf6b8aa55f2.lean/declarations/bernstein-zero--acf564557bf3a1d0d6587af0.md) | 35 | `result-track:acf564557bf3a1d0d6587af0f88804a5ade22f79ddffaab5ab57ef15839243d4` |
| 7 | `theorem` | [bernstein_one](../../../../../mathematics/Analysis/SpecialFunctions/BasicScratch/Variant646c74642e5ccab160acb44198f8ec863a9366c92a2217350adfabf6b8aa55f2.lean/declarations/bernstein-one--f1fae4694d87cb518901fbbd.md) | 43 | `result-track:f1fae4694d87cb518901fbbd783c3730c1a47739b9fcd7032c534dd13d097e19` |
| 8 | `theorem` | [bernstein_rev](../../../../../mathematics/Analysis/SpecialFunctions/BasicScratch/Variant646c74642e5ccab160acb44198f8ec863a9366c92a2217350adfabf6b8aa55f2.lean/declarations/bernstein-rev--88f559baf5791d1c952a43d8.md) | 53 | `result-track:88f559baf5791d1c952a43d84fd914d67768c88aa8799ae9df5cf1f0b20abcaa` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
