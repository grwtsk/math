# Verification target: GRWTSK.Algebra.UniversalAlgebra.ConjAct.Variantf765c9a3a766c4cbf98038c0c546b971fac69c5d7afa4ceb82c5b4becd6777e8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ac678e96aa373aa5f750c82fb93cc5ecd12529cb",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/ConjAct/Variantf765c9a3a766c4cbf98038c0c546b971fac69c5d7afa4ceb82c5b4becd6777e8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/ConjAct/Variantf765c9a3a766c4cbf98038c0c546b971fac69c5d7afa4ceb82c5b4becd6777e8.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/ConjAct/Variantf765c9a3a766c4cbf98038c0c546b971fac69c5d7afa4ceb82c5b4becd6777e8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ac678e96aa373aa5f750c82fb93cc5ecd12529cb`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/ConjAct/Variantf765c9a3a766c4cbf98038c0c546b971fac69c5d7afa4ceb82c5b4becd6777e8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/ConjAct/Variantf765c9a3a766c4cbf98038c0c546b971fac69c5d7afa4ceb82c5b4becd6777e8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.GroupWithZero.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.GroupAction.ConjAct` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/ConjAct/Variantf765c9a3a766c4cbf98038c0c546b971fac69c5d7afa4ceb82c5b4becd6777e8.lean/declarations/instance--16158e36d7fabfbe1e571ce1.md) | 28 | `declaration-track:16158e36d7fabfbe1e571ce17321f73794e0d6adf3e685a9693bd3fcfc83f4a2` |
| 2 | `lemma` | [ofConjAct_zero](../../../../../mathematics/Algebra/UniversalAlgebra/ConjAct/Variantf765c9a3a766c4cbf98038c0c546b971fac69c5d7afa4ceb82c5b4becd6777e8.lean/declarations/ofconjact-zero--55e804defb76899d22e0ee50.md) | 30 | `result-track:55e804defb76899d22e0ee50e833d79fd0d8c684556fc147c39bce2959fd58ec` |
| 3 | `lemma` | [toConjAct_zero](../../../../../mathematics/Algebra/UniversalAlgebra/ConjAct/Variantf765c9a3a766c4cbf98038c0c546b971fac69c5d7afa4ceb82c5b4becd6777e8.lean/declarations/toconjact-zero--4aa02838a052c1b965e484e2.md) | 31 | `result-track:4aa02838a052c1b965e484e238541188a3c7f027c9338f462444fe13976504c0` |
| 4 | `instance` | [mulAction₀](../../../../../mathematics/Algebra/UniversalAlgebra/ConjAct/Variantf765c9a3a766c4cbf98038c0c546b971fac69c5d7afa4ceb82c5b4becd6777e8.lean/declarations/mulaction--ec2503416bcfd70c5a99d2b1.md) | 33 | `declaration-track:ec2503416bcfd70c5a99d2b1ef2656c23b49da97377fd86546dbe8b2fd46a2d3` |
| 5 | `instance` | [smulCommClass₀](../../../../../mathematics/Algebra/UniversalAlgebra/ConjAct/Variantf765c9a3a766c4cbf98038c0c546b971fac69c5d7afa4ceb82c5b4becd6777e8.lean/declarations/smulcommclass--2cd2ae63de3c9f99edc1c6ea.md) | 37 | `declaration-track:2cd2ae63de3c9f99edc1c6ea6aba05c9a4b5629ab5547a992dff430905e19f04` |
| 6 | `instance` | [smulCommClass₀'](../../../../../mathematics/Algebra/UniversalAlgebra/ConjAct/Variantf765c9a3a766c4cbf98038c0c546b971fac69c5d7afa4ceb82c5b4becd6777e8.lean/declarations/smulcommclass--782b197e2a1f9f2e292752d2.md) | 41 | `declaration-track:782b197e2a1f9f2e292752d2f3edb0d48306c3b0cf3e260da5fe8188c755eb6a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
