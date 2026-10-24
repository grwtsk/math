# Verification target: GRWTSK.Algebra.LinearAlgebra.OfBilinear.Variant8e5c49c0a5b60f47dffbd59533474a4112c83c0e43496f5427aef779e28a8b57

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "738a420d1578e7066352aa0fc9ad449ef69f171e",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/OfBilinear/Variant8e5c49c0a5b60f47dffbd59533474a4112c83c0e43496f5427aef779e28a8b57.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/OfBilinear/Variant8e5c49c0a5b60f47dffbd59533474a4112c83c0e43496f5427aef779e28a8b57.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/OfBilinear/Variant8e5c49c0a5b60f47dffbd59533474a4112c83c0e43496f5427aef779e28a8b57.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `738a420d1578e7066352aa0fc9ad449ef69f171e`.

Source path: `GRWTSK/Algebra/LinearAlgebra/OfBilinear/Variant8e5c49c0a5b60f47dffbd59533474a4112c83c0e43496f5427aef779e28a8b57.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/OfBilinear/Variant8e5c49c0a5b60f47dffbd59533474a4112c83c0e43496f5427aef779e28a8b57.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.RootSystem.Defs` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [IsReflective](../../../../../mathematics/Algebra/LinearAlgebra/OfBilinear/Variant8e5c49c0a5b60f47dffbd59533474a4112c83c0e43496f5427aef779e28a8b57.lean/declarations/isreflective--82a7bd5df69831966a1555f7.md) | 44 | `declaration-track:82a7bd5df69831966a1555f718c943b752aaf33be963f2761a77d1756ac1daba` |
| 2 | `lemma` | [of_dvd_two](../../../../../mathematics/Algebra/LinearAlgebra/OfBilinear/Variant8e5c49c0a5b60f47dffbd59533474a4112c83c0e43496f5427aef779e28a8b57.lean/declarations/of-dvd-two--ef2f39367164905caabd8690.md) | 52 | `result-track:ef2f39367164905caabd86906b4b0ff687cc23b1996acde482feceaa2874a96e` |
| 3 | `def` | [coroot](../../../../../mathematics/Algebra/LinearAlgebra/OfBilinear/Variant8e5c49c0a5b60f47dffbd59533474a4112c83c0e43496f5427aef779e28a8b57.lean/declarations/coroot--730392ad381edaecb4087dc4.md) | 60 | `declaration-track:730392ad381edaecb4087dc4db5f443270829f5be71960e3d2881e9ae6f8ebe6` |
| 4 | `lemma` | [apply_self_mul_coroot_apply](../../../../../mathematics/Algebra/LinearAlgebra/OfBilinear/Variant8e5c49c0a5b60f47dffbd59533474a4112c83c0e43496f5427aef779e28a8b57.lean/declarations/apply-self-mul-coroot-apply--87cbffd2642869b6505c6ccc.md) | 74 | `result-track:87cbffd2642869b6505c6cccc8da4680d8a530eef7c28ff976b14caf81b4ebe3` |
| 5 | `lemma` | [smul_coroot](../../../../../mathematics/Algebra/LinearAlgebra/OfBilinear/Variant8e5c49c0a5b60f47dffbd59533474a4112c83c0e43496f5427aef779e28a8b57.lean/declarations/smul-coroot--4a829465114ff8b1ba16868f.md) | 78 | `result-track:4a829465114ff8b1ba16868fb63af1f869c67a2d9feb8f51a7fd600b27d9410b` |
| 6 | `lemma` | [coroot_apply_self](../../../../../mathematics/Algebra/LinearAlgebra/OfBilinear/Variant8e5c49c0a5b60f47dffbd59533474a4112c83c0e43496f5427aef779e28a8b57.lean/declarations/coroot-apply-self--92bad0d2aac3527d9490647b.md) | 83 | `result-track:92bad0d2aac3527d9490647b8a9bfb8d64fed2b996a427d47ab8c0b1f44baffe` |
| 7 | `lemma` | [isOrthogonal_reflection](../../../../../mathematics/Algebra/LinearAlgebra/OfBilinear/Variant8e5c49c0a5b60f47dffbd59533474a4112c83c0e43496f5427aef779e28a8b57.lean/declarations/isorthogonal-reflection--6beb725908a73ba3925dfa54.md) | 86 | `result-track:6beb725908a73ba3925dfa54dba01deaac262b10594adc6f69f5316fbb671337` |
| 8 | `lemma` | [reflective_reflection](../../../../../mathematics/Algebra/LinearAlgebra/OfBilinear/Variant8e5c49c0a5b60f47dffbd59533474a4112c83c0e43496f5427aef779e28a8b57.lean/declarations/reflective-reflection--35c62f4c63d17460763f086b.md) | 97 | `result-track:35c62f4c63d17460763f086bd4e914a732ea5398f46c1a621619690564b71766` |
| 9 | `def` | [ofBilinear](../../../../../mathematics/Algebra/LinearAlgebra/OfBilinear/Variant8e5c49c0a5b60f47dffbd59533474a4112c83c0e43496f5427aef779e28a8b57.lean/declarations/ofbilinear--0dd36f25b425910d496205b3.md) | 120 | `declaration-track:0dd36f25b425910d496205b3a3ed1ca6c5260c3e07a46d27e86bdd770ae7ad35` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
