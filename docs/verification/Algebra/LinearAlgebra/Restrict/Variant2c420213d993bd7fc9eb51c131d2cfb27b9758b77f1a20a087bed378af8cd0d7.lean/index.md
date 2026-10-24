# Verification target: GRWTSK.Algebra.LinearAlgebra.Restrict.Variant2c420213d993bd7fc9eb51c131d2cfb27b9758b77f1a20a087bed378af8cd0d7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1080f3a5309f94a202bfe038ff5e84358e8e61bb",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Restrict/Variant2c420213d993bd7fc9eb51c131d2cfb27b9758b77f1a20a087bed378af8cd0d7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Restrict/Variant2c420213d993bd7fc9eb51c131d2cfb27b9758b77f1a20a087bed378af8cd0d7.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Restrict/Variant2c420213d993bd7fc9eb51c131d2cfb27b9758b77f1a20a087bed378af8cd0d7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1080f3a5309f94a202bfe038ff5e84358e8e61bb`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Restrict/Variant2c420213d993bd7fc9eb51c131d2cfb27b9758b77f1a20a087bed378af8cd0d7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Restrict/Variant2c420213d993bd7fc9eb51c131d2cfb27b9758b77f1a20a087bed378af8cd0d7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.PerfectPairing.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.Basis` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.BaseChange` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [restrict_aux](../../../../../mathematics/Algebra/LinearAlgebra/Restrict/Variant2c420213d993bd7fc9eb51c131d2cfb27b9758b77f1a20a087bed378af8cd0d7.lean/declarations/restrict-aux--ee20ecb5a2e5c14f8a9ed022.md) | 52 | `result-track:ee20ecb5a2e5c14f8a9ed022175ad4da732425a6fb5da40d4fa1441fb45b14ac` |
| 2 | `def` | [restrict](../../../../../mathematics/Algebra/LinearAlgebra/Restrict/Variant2c420213d993bd7fc9eb51c131d2cfb27b9758b77f1a20a087bed378af8cd0d7.lean/declarations/restrict--9cdef5b76c0a99686eceeb3a.md) | 79 | `declaration-track:9cdef5b76c0a99686eceeb3a068e393fec866fbaa75e6b0f37768c49a4e38b57` |
| 3 | `lemma` | [restrict_apply_apply](../../../../../mathematics/Algebra/LinearAlgebra/Restrict/Variant2c420213d993bd7fc9eb51c131d2cfb27b9758b77f1a20a087bed378af8cd0d7.lean/declarations/restrict-apply-apply--21a31cb9f825425150849185.md) | 85 | `result-track:21a31cb9f8254251508491852d438ef4f3c9970de51a4b7b33361e52a4879517` |
| 4 | `def` | [restrictScalarsAux](../../../../../mathematics/Algebra/LinearAlgebra/Restrict/Variant2c420213d993bd7fc9eb51c131d2cfb27b9758b77f1a20a087bed378af8cd0d7.lean/declarations/restrictscalarsaux--10b0ef2ada471e055d01cccc.md) | 100 | `declaration-track:10b0ef2ada471e055d01cccc87def0332d5daeae1c5768207a10e50d1cbf78c3` |
| 5 | `lemma` | [restrictScalarsAux_injective](../../../../../mathematics/Algebra/LinearAlgebra/Restrict/Variant2c420213d993bd7fc9eb51c131d2cfb27b9758b77f1a20a087bed378af8cd0d7.lean/declarations/restrictscalarsaux-injective--6a6c5da7bd42b7e252cdee82.md) | 106 | `result-track:6a6c5da7bd42b7e252cdee8250a5f0f669b9c55672797af7b1067fec0f09a75a` |
| 6 | `lemma` | [restrictScalarsAux_surjective](../../../../../mathematics/Algebra/LinearAlgebra/Restrict/Variant2c420213d993bd7fc9eb51c131d2cfb27b9758b77f1a20a087bed378af8cd0d7.lean/declarations/restrictscalarsaux-surjective--fb5ba5c5523a6a53fff79658.md) | 128 | `result-track:fb5ba5c5523a6a53fff796583447abea359c8298ead00dcbdea17aed70e5770d` |
| 7 | `def` | [restrictScalars](../../../../../mathematics/Algebra/LinearAlgebra/Restrict/Variant2c420213d993bd7fc9eb51c131d2cfb27b9758b77f1a20a087bed378af8cd0d7.lean/declarations/restrictscalars--2afb01da2011a3b7fafd1830.md) | 143 | `declaration-track:2afb01da2011a3b7fafd1830b018d515198c1f75365e5bb1885dae1bd87dc7f8` |
| 8 | `lemma` | [exists_basis_basis_of_span_eq_top_of_mem_algebraMap](../../../../../mathematics/Algebra/LinearAlgebra/Restrict/Variant2c420213d993bd7fc9eb51c131d2cfb27b9758b77f1a20a087bed378af8cd0d7.lean/declarations/exists-basis-basis-of-span-eq-top-of-mem-algebramap--776e61d5b9a3a5c8504658fe.md) | 173 | `result-track:776e61d5b9a3a5c8504658fe184b0fb6cc64d87270a852499122bb1b997df0e7` |
| 9 | `def` | [restrictScalarsFieldAux](../../../../../mathematics/Algebra/LinearAlgebra/Restrict/Variant2c420213d993bd7fc9eb51c131d2cfb27b9758b77f1a20a087bed378af8cd0d7.lean/declarations/restrictscalarsfieldaux--8ec994883dfc583a7f81b162.md) | 228 | `declaration-track:8ec994883dfc583a7f81b1625b04c726a113287d67ae22488c32bf1cfbe9d970` |
| 10 | `def` | [restrictScalarsField](../../../../../mathematics/Algebra/LinearAlgebra/Restrict/Variant2c420213d993bd7fc9eb51c131d2cfb27b9758b77f1a20a087bed378af8cd0d7.lean/declarations/restrictscalarsfield--0ad4076b953aac691c936c9b.md) | 243 | `declaration-track:0ad4076b953aac691c936c9bb12ae0891cee792d9ae31bc2ce11845c64930ae0` |
| 11 | `lemma` | [restrictScalarsField_apply_apply](../../../../../mathematics/Algebra/LinearAlgebra/Restrict/Variant2c420213d993bd7fc9eb51c131d2cfb27b9758b77f1a20a087bed378af8cd0d7.lean/declarations/restrictscalarsfield-apply-apply--597c6460d047e0332cce7c66.md) | 263 | `result-track:597c6460d047e0332cce7c6677fd6944eeaf3dc04dc7d63a6650884dc3d31274` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
