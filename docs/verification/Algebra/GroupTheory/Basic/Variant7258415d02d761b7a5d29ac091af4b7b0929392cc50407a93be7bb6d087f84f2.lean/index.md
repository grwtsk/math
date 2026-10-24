# Verification target: GRWTSK.Algebra.GroupTheory.Basic.Variant7258415d02d761b7a5d29ac091af4b7b0929392cc50407a93be7bb6d087f84f2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9b0397ab98926694eb77bce4c5905664b316a0db",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Basic/Variant7258415d02d761b7a5d29ac091af4b7b0929392cc50407a93be7bb6d087f84f2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant7258415d02d761b7a5d29ac091af4b7b0929392cc50407a93be7bb6d087f84f2.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant7258415d02d761b7a5d29ac091af4b7b0929392cc50407a93be7bb6d087f84f2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9b0397ab98926694eb77bce4c5905664b316a0db`.

Source path: `GRWTSK/Algebra/GroupTheory/Basic/Variant7258415d02d761b7a5d29ac091af4b7b0929392cc50407a93be7bb6d087f84f2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Basic/Variant7258415d02d761b7a5d29ac091af4b7b0929392cc50407a93be7bb6d087f84f2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Lie.OfAssociative` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [IsJordan](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant7258415d02d761b7a5d29ac091af4b7b0929392cc50407a93be7bb6d087f84f2.lean/declarations/isjordan--ca2a461c5708042e4f358729.md) | 88 | `declaration-track:ca2a461c5708042e4f358729b403f7690ff325d504a884a6f992be5b13f4153b` |
| 2 | `class` | [IsCommJordan](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant7258415d02d761b7a5d29ac091af4b7b0929392cc50407a93be7bb6d087f84f2.lean/declarations/iscommjordan--de2714bcddabf95c904ff4bd.md) | 97 | `declaration-track:de2714bcddabf95c904ff4bdc4e7c31a2fd233dff6253779b6b6ac8cc992dd5b` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant7258415d02d761b7a5d29ac091af4b7b0929392cc50407a93be7bb6d087f84f2.lean/declarations/instance--6d40429d3ef3df05384d7d34.md) | 104 | `declaration-track:6d40429d3ef3df05384d7d349912e9350fa414407f10b8cb5cec7ac11d5afaca` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant7258415d02d761b7a5d29ac091af4b7b0929392cc50407a93be7bb6d087f84f2.lean/declarations/instance--a00c16d1cf54698eba50b44e.md) | 119 | `declaration-track:a00c16d1cf54698eba50b44e7604de2a6b6f403247d852b45f9826183edc5446` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant7258415d02d761b7a5d29ac091af4b7b0929392cc50407a93be7bb6d087f84f2.lean/declarations/instance--91891fb08c1bbe5643a7f434.md) | 128 | `declaration-track:91891fb08c1bbe5643a7f434a750da2e97cd4be565ca3d099047e30903f0b44f` |
| 6 | `theorem` | [commute_lmul_rmul](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant7258415d02d761b7a5d29ac091af4b7b0929392cc50407a93be7bb6d087f84f2.lean/declarations/commute-lmul-rmul--3792f967abb56d3413007b3d.md) | 147 | `result-track:3792f967abb56d3413007b3d169098b1cdaaef910ad545fa2d0999af652f1f0f` |
| 7 | `theorem` | [commute_lmul_lmul_sq](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant7258415d02d761b7a5d29ac091af4b7b0929392cc50407a93be7bb6d087f84f2.lean/declarations/commute-lmul-lmul-sq--6ef605f2a98ce59c7983aa9f.md) | 152 | `result-track:6ef605f2a98ce59c7983aa9f904396d13ce17cc820f24fcf62c7bbe416d7bdcc` |
| 8 | `theorem` | [commute_lmul_rmul_sq](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant7258415d02d761b7a5d29ac091af4b7b0929392cc50407a93be7bb6d087f84f2.lean/declarations/commute-lmul-rmul-sq--3bcf5588fd02d37afb968408.md) | 157 | `result-track:3bcf5588fd02d37afb96840847b2bc6df101ea22c4f7add53c11d695d3dfa27a` |
| 9 | `theorem` | [commute_lmul_sq_rmul](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant7258415d02d761b7a5d29ac091af4b7b0929392cc50407a93be7bb6d087f84f2.lean/declarations/commute-lmul-sq-rmul--8453a9219d2e0a31ff2bd453.md) | 162 | `result-track:8453a9219d2e0a31ff2bd453a7ad4e115b07721ea26aa760046338c45ab106b0` |
| 10 | `theorem` | [commute_rmul_rmul_sq](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant7258415d02d761b7a5d29ac091af4b7b0929392cc50407a93be7bb6d087f84f2.lean/declarations/commute-rmul-rmul-sq--c68e8740083b1fad983fd5b6.md) | 167 | `result-track:c68e8740083b1fad983fd5b679f75fed2f1e878c976523b8c9e3ee249d6adc11` |
| 11 | `theorem` | [two_nsmul_lie_lmul_lmul_add_eq_lie_lmul_lmul_add](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant7258415d02d761b7a5d29ac091af4b7b0929392cc50407a93be7bb6d087f84f2.lean/declarations/two-nsmul-lie-lmul-lmul-add-eq-lie-lmul-lmul-add--2ec0694947b0aea4f06bacf3.md) | 181 | `result-track:2ec0694947b0aea4f06bacf32b522989623a0ca1b815545e0a9301a7c011c289` |
| 12 | `theorem` | [aux0](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant7258415d02d761b7a5d29ac091af4b7b0929392cc50407a93be7bb6d087f84f2.lean/declarations/aux0--b019c58833c23eb509587431.md) | 194 | `result-track:b019c58833c23eb509587431c1091140a0525d9ee4402067bef7aa06ecd10cb9` |
| 13 | `theorem` | [aux1](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant7258415d02d761b7a5d29ac091af4b7b0929392cc50407a93be7bb6d087f84f2.lean/declarations/aux1--33ad6a1080393375480b6712.md) | 206 | `result-track:33ad6a1080393375480b67121cce94e37f9fc3b2624bdfcbfb20b11aa744bd50` |
| 14 | `theorem` | [aux2](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant7258415d02d761b7a5d29ac091af4b7b0929392cc50407a93be7bb6d087f84f2.lean/declarations/aux2--9100f76cec5bb62410e8e792.md) | 220 | `result-track:9100f76cec5bb62410e8e7923aca4047db977e07d87751bced4c9645c3ebd1a2` |
| 15 | `theorem` | [aux3](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant7258415d02d761b7a5d29ac091af4b7b0929392cc50407a93be7bb6d087f84f2.lean/declarations/aux3--4ed38bf6c6e3c45c49fdd366.md) | 237 | `result-track:4ed38bf6c6e3c45c49fdd3662555002f4427a2164ae228b704adfc30d1851179` |
| 16 | `theorem` | [two_nsmul_lie_lmul_lmul_add_add_eq_zero](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant7258415d02d761b7a5d29ac091af4b7b0929392cc50407a93be7bb6d087f84f2.lean/declarations/two-nsmul-lie-lmul-lmul-add-add-eq-zero--4b0e0f691d9aa929332f7a2e.md) | 253 | `result-track:4b0e0f691d9aa929332f7a2e021c3ea8829491ee759a9138d7eaa7d66712fa9a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
