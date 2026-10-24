# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Four.Variant28c38280e1e1139a5bb4a2a0508bfbaa9c4bd1adf4d64fc4a2f7f347787e1aa3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "137da5d7cc72b45967a2c92089f0cc9d946f430c",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Four/Variant28c38280e1e1139a5bb4a2a0508bfbaa9c4bd1adf4d64fc4a2f7f347787e1aa3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Four/Variant28c38280e1e1139a5bb4a2a0508bfbaa9c4bd1adf4d64fc4a2f7f347787e1aa3.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Four/Variant28c38280e1e1139a5bb4a2a0508bfbaa9c4bd1adf4d64fc4a2f7f347787e1aa3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `137da5d7cc72b45967a2c92089f0cc9d946f430c`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Four/Variant28c38280e1e1139a5bb4a2a0508bfbaa9c4bd1adf4d64fc4a2f7f347787e1aa3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Four/Variant28c38280e1e1139a5bb4a2a0508bfbaa9c4bd1adf4d64fc4a2f7f347787e1aa3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Homology.ExactSequence` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Abelian.Refinements` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [mono_of_epi_of_mono_of_mono'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Four/Variant28c38280e1e1139a5bb4a2a0508bfbaa9c4bd1adf4d64fc4a2f7f347787e1aa3.lean/declarations/mono-of-epi-of-mono-of-mono--725c26b828ea0908fbdf7c1e.md) | 68 | `result-track:725c26b828ea0908fbdf7c1eb2df3a54a6cb755dd15945e71ab9569b92213738` |
| 2 | `theorem` | [mono_of_epi_of_mono_of_mono](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Four/Variant28c38280e1e1139a5bb4a2a0508bfbaa9c4bd1adf4d64fc4a2f7f347787e1aa3.lean/declarations/mono-of-epi-of-mono-of-mono--c5d462db9100ca42b7842dfb.md) | 91 | `result-track:c5d462db9100ca42b7842dfb76e2dc2b582db20ebde8224d5c430c3677c9cce2` |
| 3 | `theorem` | [epi_of_epi_of_epi_of_mono'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Four/Variant28c38280e1e1139a5bb4a2a0508bfbaa9c4bd1adf4d64fc4a2f7f347787e1aa3.lean/declarations/epi-of-epi-of-epi-of-mono--aef0bae34bd0304f4b9f27ca.md) | 98 | `result-track:aef0bae34bd0304f4b9f27caff1286b05d36e28a85aee4dbbf69b0039060505c` |
| 4 | `theorem` | [epi_of_epi_of_epi_of_mono](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Four/Variant28c38280e1e1139a5bb4a2a0508bfbaa9c4bd1adf4d64fc4a2f7f347787e1aa3.lean/declarations/epi-of-epi-of-epi-of-mono--a6ed8515abcf759fdd266613.md) | 125 | `result-track:a6ed8515abcf759fdd2666137bd025490a86883ac4aeb2f5ca0bc408cdf5009b` |
| 5 | `theorem` | [isIso_of_epi_of_isIso_of_isIso_of_mono](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Four/Variant28c38280e1e1139a5bb4a2a0508bfbaa9c4bd1adf4d64fc4a2f7f347787e1aa3.lean/declarations/isiso-of-epi-of-isiso-of-isiso-of-mono--492ab55e1aa7d0fd9a9a3a24.md) | 140 | `result-track:492ab55e1aa7d0fd9a9a3a24910197275d4e9260ff94ef461cb5fbc841071559` |
| 6 | `theorem` | [mono_of_epi_of_epi_mono'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Four/Variant28c38280e1e1139a5bb4a2a0508bfbaa9c4bd1adf4d64fc4a2f7f347787e1aa3.lean/declarations/mono-of-epi-of-epi-mono--fdeea65cee51d64b52bef02a.md) | 163 | `result-track:fdeea65cee51d64b52bef02a1a7f282154d5554d70a086628869ae8295551ae9` |
| 7 | `theorem` | [mono_of_epi_of_epi_of_mono](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Four/Variant28c38280e1e1139a5bb4a2a0508bfbaa9c4bd1adf4d64fc4a2f7f347787e1aa3.lean/declarations/mono-of-epi-of-epi-of-mono--172934c8052304508b4b2217.md) | 177 | `result-track:172934c8052304508b4b2217fb07ecbbb7e00bed50681180201d593527a96563` |
| 8 | `theorem` | [epi_of_mono_of_epi_of_mono'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Four/Variant28c38280e1e1139a5bb4a2a0508bfbaa9c4bd1adf4d64fc4a2f7f347787e1aa3.lean/declarations/epi-of-mono-of-epi-of-mono--e033a4c995a55c25341a019d.md) | 183 | `result-track:e033a4c995a55c25341a019d2fc9a2fdb17022a90659685a2b32d3f48335084d` |
| 9 | `theorem` | [epi_of_mono_of_epi_of_mono](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Four/Variant28c38280e1e1139a5bb4a2a0508bfbaa9c4bd1adf4d64fc4a2f7f347787e1aa3.lean/declarations/epi-of-mono-of-epi-of-mono--3654f9d1103c6ab95758f16a.md) | 197 | `result-track:3654f9d1103c6ab95758f16a199b19019b28c8bd2ca6a365e3c47e23352ddc32` |
| 10 | `theorem` | [mono_of_mono_of_mono_of_mono](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Four/Variant28c38280e1e1139a5bb4a2a0508bfbaa9c4bd1adf4d64fc4a2f7f347787e1aa3.lean/declarations/mono-of-mono-of-mono-of-mono--ecd6f4ab355aa96d185868ca.md) | 203 | `result-track:ecd6f4ab355aa96d185868cad666c73bb01a1425eb2d7501e2f1d4e0c1e26c34` |
| 11 | `theorem` | [epi_of_epi_of_epi_of_epi](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Four/Variant28c38280e1e1139a5bb4a2a0508bfbaa9c4bd1adf4d64fc4a2f7f347787e1aa3.lean/declarations/epi-of-epi-of-epi-of-epi--2aede9f7898d2d85b28d1bd9.md) | 217 | `result-track:2aede9f7898d2d85b28d1bd9dcf06c65f682e37f8453b47dad706b58d1520805` |
| 12 | `theorem` | [mono_of_epi_of_epi_of_mono](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Four/Variant28c38280e1e1139a5bb4a2a0508bfbaa9c4bd1adf4d64fc4a2f7f347787e1aa3.lean/declarations/mono-of-epi-of-epi-of-mono--85efc0ddc9a9a02629f03f5e.md) | 240 | `result-track:85efc0ddc9a9a02629f03f5eca07a6236cfa74b9d70b35f0200b50aa8f595b0a` |
| 13 | `theorem` | [epi_of_mono_of_epi_of_mono](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Four/Variant28c38280e1e1139a5bb4a2a0508bfbaa9c4bd1adf4d64fc4a2f7f347787e1aa3.lean/declarations/epi-of-mono-of-epi-of-mono--93a2e994fd0420e4c6d480b0.md) | 245 | `result-track:93a2e994fd0420e4c6d480b075bbe570fc5861e26e48452df7fe3d765282f6a7` |
| 14 | `theorem` | [mono_of_mono_of_mono_of_mono](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Four/Variant28c38280e1e1139a5bb4a2a0508bfbaa9c4bd1adf4d64fc4a2f7f347787e1aa3.lean/declarations/mono-of-mono-of-mono-of-mono--1bc24cae050ef756952ba130.md) | 250 | `result-track:1bc24cae050ef756952ba1305671167891c14c11e2f533cad44a07130760d12f` |
| 15 | `theorem` | [epi_of_epi_of_epi_of_epi](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Four/Variant28c38280e1e1139a5bb4a2a0508bfbaa9c4bd1adf4d64fc4a2f7f347787e1aa3.lean/declarations/epi-of-epi-of-epi-of-epi--440231c1777b8df9e1fad228.md) | 255 | `result-track:440231c1777b8df9e1fad2280a549dd399c552eb32376d2b4ba92b6a978fd763` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
