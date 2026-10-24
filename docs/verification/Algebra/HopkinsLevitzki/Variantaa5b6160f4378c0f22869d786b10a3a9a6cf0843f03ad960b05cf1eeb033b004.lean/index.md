# Verification target: GRWTSK.Algebra.HopkinsLevitzki.Variantaa5b6160f4378c0f22869d786b10a3a9a6cf0843f03ad960b05cf1eeb033b004

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "adb55c158a43500dcfd8e59099e60caf61b406de",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/HopkinsLevitzki/Variantaa5b6160f4378c0f22869d786b10a3a9a6cf0843f03ad960b05cf1eeb033b004.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/HopkinsLevitzki/Variantaa5b6160f4378c0f22869d786b10a3a9a6cf0843f03ad960b05cf1eeb033b004.lean/index.md) · [Full source](../../../../mathematics/Algebra/HopkinsLevitzki/Variantaa5b6160f4378c0f22869d786b10a3a9a6cf0843f03ad960b05cf1eeb033b004.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `adb55c158a43500dcfd8e59099e60caf61b406de`.

Source path: `GRWTSK/Algebra/HopkinsLevitzki/Variantaa5b6160f4378c0f22869d786b10a3a9a6cf0843f03ad960b05cf1eeb033b004.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/HopkinsLevitzki/Variantaa5b6160f4378c0f22869d786b10a3a9a6cf0843f03ad960b05cf1eeb033b004.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Module.Torsion` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.FiniteLength` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Noetherian.Nilpotent` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Spectrum.Prime.Noetherian` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.KrullDimension.Zero` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [induction](../../../../mathematics/Algebra/HopkinsLevitzki/Variantaa5b6160f4378c0f22869d786b10a3a9a6cf0843f03ad960b05cf1eeb033b004.lean/declarations/induction--e7a7bc01a2620aceb104939a.md) | 42 | `result-track:e7a7bc01a2620aceb104939a047a057291386c151f72d621c703d8953e0b4241` |
| 2 | `theorem` | [finite_of_isNoetherian_or_isArtinian](../../../../mathematics/Algebra/HopkinsLevitzki/Variantaa5b6160f4378c0f22869d786b10a3a9a6cf0843f03ad960b05cf1eeb033b004.lean/declarations/finite-of-isnoetherian-or-isartinian--cbd2b403b99348e801ea2249.md) | 75 | `result-track:cbd2b403b99348e801ea2249eebbaf1680cd736d1ed1b7f3c8ad77c24cbe4945` |
| 3 | `theorem` | [finite_of_isNoetherian](../../../../mathematics/Algebra/HopkinsLevitzki/Variantaa5b6160f4378c0f22869d786b10a3a9a6cf0843f03ad960b05cf1eeb033b004.lean/declarations/finite-of-isnoetherian--9b62dc7ef0edb9bde4421bc0.md) | 89 | `result-track:9b62dc7ef0edb9bde4421bc06ed5daadd53705e559239d9e9ba82ba56479dbf8` |
| 4 | `theorem` | [finite_of_isArtinian](../../../../mathematics/Algebra/HopkinsLevitzki/Variantaa5b6160f4378c0f22869d786b10a3a9a6cf0843f03ad960b05cf1eeb033b004.lean/declarations/finite-of-isartinian--5e02709b7686f74760a7b8fe.md) | 92 | `result-track:5e02709b7686f74760a7b8fe3d14ebb335c0d24fa43972c4ea6fb33bb017914c` |
| 5 | `theorem` | [isNoetherian_iff_isArtinian](../../../../mathematics/Algebra/HopkinsLevitzki/Variantaa5b6160f4378c0f22869d786b10a3a9a6cf0843f03ad960b05cf1eeb033b004.lean/declarations/isnoetherian-iff-isartinian--f26b8aeee59ef1ad8de92b1d.md) | 99 | `result-track:f26b8aeee59ef1ad8de92b1dd217bd7862d7d4101ac307291b0b74120074f27e` |
| 6 | `theorem` | [IsArtinianRing.tfae](../../../../mathematics/Algebra/HopkinsLevitzki/Variantaa5b6160f4378c0f22869d786b10a3a9a6cf0843f03ad960b05cf1eeb033b004.lean/declarations/isartinianring-tfae--ac5e856533df01e47e2ceda7.md) | 107 | `result-track:ac5e856533df01e47e2ceda70659a70e124a0b9607dcfd40cec75ba9a74326f9` |
| 7 | `theorem` | [isArtinianRing_iff_isFiniteLength](../../../../mathematics/Algebra/HopkinsLevitzki/Variantaa5b6160f4378c0f22869d786b10a3a9a6cf0843f03ad960b05cf1eeb033b004.lean/declarations/isartinianring-iff-isfinitelength--0f9e05a53f4463f8c745c887.md) | 118 | `result-track:0f9e05a53f4463f8c745c88763be1a42dd443dee6e6a91444d6a6deb16f2a076` |
| 8 | `instance` | [(anonymous)](../../../../mathematics/Algebra/HopkinsLevitzki/Variantaa5b6160f4378c0f22869d786b10a3a9a6cf0843f03ad960b05cf1eeb033b004.lean/declarations/instance--28ef50d4de717f1ddfd002ae.md) | 124 | `declaration-track:28ef50d4de717f1ddfd002ae9b0d9b1754fb9534284e1e919f963a167d4873e8` |
| 9 | `theorem` | [isNoetherian_of_finite_isArtinian](../../../../mathematics/Algebra/HopkinsLevitzki/Variantaa5b6160f4378c0f22869d786b10a3a9a6cf0843f03ad960b05cf1eeb033b004.lean/declarations/isnoetherian-of-finite-isartinian--7949863479abcbe991e174c2.md) | 128 | `result-track:7949863479abcbe991e174c2bf9ff6b78f56727b10250d3871ac11549d4f924b` |
| 10 | `theorem` | [IsNoetherianRing.isArtinianRing_of_krullDimLE_zero](../../../../mathematics/Algebra/HopkinsLevitzki/Variantaa5b6160f4378c0f22869d786b10a3a9a6cf0843f03ad960b05cf1eeb033b004.lean/declarations/isnoetherianring-isartinianring-of-krulldimle-zero--9764e7931062959879e2e1ae.md) | 144 | `result-track:9764e7931062959879e2e1ae63f33fadf1e0d6ff921c204cd79367f346ad832f` |
| 11 | `theorem` | [isArtinianRing_iff_isNoetherianRing_krullDimLE_zero](../../../../mathematics/Algebra/HopkinsLevitzki/Variantaa5b6160f4378c0f22869d786b10a3a9a6cf0843f03ad960b05cf1eeb033b004.lean/declarations/isartinianring-iff-isnoetherianring-krulldimle-zero--94dee0093f37ff00c91e5de2.md) | 159 | `result-track:94dee0093f37ff00c91e5de223fc03a6dda926ac97aa9bc08cf103c1958f7481` |
| 12 | `theorem` | [isArtinianRing_iff_krullDimLE_zero](../../../../mathematics/Algebra/HopkinsLevitzki/Variantaa5b6160f4378c0f22869d786b10a3a9a6cf0843f03ad960b05cf1eeb033b004.lean/declarations/isartinianring-iff-krulldimle-zero--ec7296bdeb743a3f06b38ef2.md) | 163 | `result-track:ec7296bdeb743a3f06b38ef275cc8fb26df9f234befe0c82e6985d3a8f3f493d` |
| 13 | `lemma` | [isArtinianRing_iff_isNilpotent_maximalIdeal](../../../../mathematics/Algebra/HopkinsLevitzki/Variantaa5b6160f4378c0f22869d786b10a3a9a6cf0843f03ad960b05cf1eeb033b004.lean/declarations/isartinianring-iff-isnilpotent-maximalideal--70ed4a38952c0286e068b606.md) | 167 | `result-track:70ed4a38952c0286e068b60645fb84146a6246631c5062229565d62840becacf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
