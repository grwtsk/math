# Verification target: GRWTSK.Algebra.GroupTheory.Basic.Variant9e9d6101619d9aef54c9168ad065136b074b4376c25932afd77c19d7d816f5dd

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ef8f3f1e113c2c77806a0f8c6fbf77a61426df91",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Basic/Variant9e9d6101619d9aef54c9168ad065136b074b4376c25932afd77c19d7d816f5dd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant9e9d6101619d9aef54c9168ad065136b074b4376c25932afd77c19d7d816f5dd.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant9e9d6101619d9aef54c9168ad065136b074b4376c25932afd77c19d7d816f5dd.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ef8f3f1e113c2c77806a0f8c6fbf77a61426df91`.

Source path: `GRWTSK/Algebra/GroupTheory/Basic/Variant9e9d6101619d9aef54c9168ad065136b074b4376c25932afd77c19d7d816f5dd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Basic/Variant9e9d6101619d9aef54c9168ad065136b074b4376c25932afd77c19d7d816f5dd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.GroupTheory.GroupExtension.Defs` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.SemidirectProduct` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.QuotientGroup.Basic` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Group` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [quotientKerRightHomEquivRight](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant9e9d6101619d9aef54c9168ad065136b074b4376c25932afd77c19d7d816f5dd.lean/declarations/quotientkerrighthomequivright--ecf00a24e025dacf01d3f77d.md) | 28 | `declaration-track:ecf00a24e025dacf01d3f77d33ec9674eed6c2cb0d77f5150197e6bce84cf4df` |
| 2 | `def` | [quotientRangeInlEquivRight](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant9e9d6101619d9aef54c9168ad065136b074b4376c25932afd77c19d7d816f5dd.lean/declarations/quotientrangeinlequivright--da0864e1c7f9fdf5cd076adc.md) | 33 | `declaration-track:da0864e1c7f9fdf5cd076adc960e2a3b455fc886035345b36704990b159ad98e` |
| 3 | `def` | [surjInvRightHom](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant9e9d6101619d9aef54c9168ad065136b074b4376c25932afd77c19d7d816f5dd.lean/declarations/surjinvrighthom--fa0dff71d85833f63d6a0609.md) | 39 | `declaration-track:fa0dff71d85833f63d6a0609e31290ef2c92515adf94b443960726d4844f6d9b` |
| 4 | `theorem` | [mul_inv_mem_range_inl](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant9e9d6101619d9aef54c9168ad065136b074b4376c25932afd77c19d7d816f5dd.lean/declarations/mul-inv-mem-range-inl--294d47dcc1dab8b4139c8580.md) | 50 | `result-track:294d47dcc1dab8b4139c8580f173712edadf07678f0fee01054b5904cdfc7af4` |
| 5 | `theorem` | [inv_mul_mem_range_inl](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant9e9d6101619d9aef54c9168ad065136b074b4376c25932afd77c19d7d816f5dd.lean/declarations/inv-mul-mem-range-inl--90d8575db4c811bb5d862c89.md) | 55 | `result-track:90d8575db4c811bb5d862c89787c488c00f6fd75abfc3f327b74f23712aad084` |
| 6 | `theorem` | [exists_eq_inl_mul](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant9e9d6101619d9aef54c9168ad065136b074b4376c25932afd77c19d7d816f5dd.lean/declarations/exists-eq-inl-mul--4e03ce86cc76c42046829964.md) | 60 | `result-track:4e03ce86cc76c42046829964df469787a7e95b4b1358ade1c75052c514533df8` |
| 7 | `theorem` | [exists_eq_mul_inl](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant9e9d6101619d9aef54c9168ad065136b074b4376c25932afd77c19d7d816f5dd.lean/declarations/exists-eq-mul-inl--017de8c2177622c91bea2ee2.md) | 65 | `result-track:017de8c2177622c91bea2ee2cbd366bff725fba2b1c1d0c49e89292505be134e` |
| 8 | `theorem` | [mul_mul_mul_inv_mem_range_inl](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant9e9d6101619d9aef54c9168ad065136b074b4376c25932afd77c19d7d816f5dd.lean/declarations/mul-mul-mul-inv-mem-range-inl--3c9f620077064c52301d21d6.md) | 70 | `result-track:3c9f620077064c52301d21d694323a6d402d4ca49e519557640e8aa028ca1130` |
| 9 | `theorem` | [mul_inv_mul_mul_mem_range_inl](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant9e9d6101619d9aef54c9168ad065136b074b4376c25932afd77c19d7d816f5dd.lean/declarations/mul-inv-mul-mul-mem-range-inl--b5e5b975d4cba7d586914ca8.md) | 75 | `result-track:b5e5b975d4cba7d586914ca879e26faf17206a228febe4a43cc261bb2cba3c31` |
| 10 | `theorem` | [exists_mul_eq_inl_mul_mul](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant9e9d6101619d9aef54c9168ad065136b074b4376c25932afd77c19d7d816f5dd.lean/declarations/exists-mul-eq-inl-mul-mul--0ea765b4d5045661b4bd4807.md) | 80 | `result-track:0ea765b4d5045661b4bd4807953473334ad3cfd4f0a3e3aef95404661cd2f24a` |
| 11 | `theorem` | [exists_mul_eq_mul_mul_inl](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant9e9d6101619d9aef54c9168ad065136b074b4376c25932afd77c19d7d816f5dd.lean/declarations/exists-mul-eq-mul-mul-inl--c3426429f2d7c223887f9361.md) | 86 | `result-track:c3426429f2d7c223887f9361037982dbc40884feba2aff592e3534303f2af58b` |
| 12 | `def` | [equivComp](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant9e9d6101619d9aef54c9168ad065136b074b4376c25932afd77c19d7d816f5dd.lean/declarations/equivcomp--6eea9ec71c46810f8234bb93.md) | 98 | `declaration-track:6eea9ec71c46810f8234bb931d2b87766695fb9b457ee4b8671dc4e0b76e185d` |
| 13 | `def` | [ofMonoidHom](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant9e9d6101619d9aef54c9168ad065136b074b4376c25932afd77c19d7d816f5dd.lean/declarations/ofmonoidhom--cf33934ff4777bc6397fda02.md) | 115 | `declaration-track:cf33934ff4777bc6397fda020d2aff30eaa975bb77ba8605b640da5b63b2d404` |
| 14 | `def` | [conjAct](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant9e9d6101619d9aef54c9168ad065136b074b4376c25932afd77c19d7d816f5dd.lean/declarations/conjact--b5a3a58d43eb8824ed673262.md) | 148 | `declaration-track:b5a3a58d43eb8824ed673262ebb97a3125388a279accf2d4e7bfee55d56e78b2` |
| 15 | `def` | [semidirectProductToGroupExtensionEquiv](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant9e9d6101619d9aef54c9168ad065136b074b4376c25932afd77c19d7d816f5dd.lean/declarations/semidirectproducttogroupextensionequiv--7347bf653fe534f063fdd4df.md) | 151 | `declaration-track:7347bf653fe534f063fdd4df133b5a1a1ac54a6c2f582c6c72d1d96ff825623f` |
| 16 | `def` | [semidirectProductMulEquiv](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant9e9d6101619d9aef54c9168ad065136b074b4376c25932afd77c19d7d816f5dd.lean/declarations/semidirectproductmulequiv--646e544c4923d5c325726e6d.md) | 177 | `declaration-track:646e544c4923d5c325726e6d659a2346bb4293b4a702c82d6b231352da2066af` |
| 17 | `theorem` | [refl](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant9e9d6101619d9aef54c9168ad065136b074b4376c25932afd77c19d7d816f5dd.lean/declarations/refl--ee2ab7e7eefa464bdb798d1b.md) | 186 | `result-track:ee2ab7e7eefa464bdb798d1b1ed82d619404e96b5e804a478662035ac1c75d25` |
| 18 | `theorem` | [symm](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant9e9d6101619d9aef54c9168ad065136b074b4376c25932afd77c19d7d816f5dd.lean/declarations/symm--e9df22687e45d5f52d5b252b.md) | 191 | `result-track:e9df22687e45d5f52d5b252b7f55cc6db3cf36e762cb1db312391fff5a89a960` |
| 19 | `theorem` | [trans](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant9e9d6101619d9aef54c9168ad065136b074b4376c25932afd77c19d7d816f5dd.lean/declarations/trans--7745b7edb9e7d23ebc740b89.md) | 197 | `result-track:7745b7edb9e7d23ebc740b89b7b303bd06b7dac234105f6e599ed72c0c60a431` |
| 20 | `def` | [setoid](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant9e9d6101619d9aef54c9168ad065136b074b4376c25932afd77c19d7d816f5dd.lean/declarations/setoid--03331c906cf1c04de88ddf93.md) | 205 | `declaration-track:03331c906cf1c04de88ddf93bbede04030bc47cb01a3efb715e424da76ca20ad` |
| 21 | `def` | [ConjClasses](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant9e9d6101619d9aef54c9168ad065136b074b4376c25932afd77c19d7d816f5dd.lean/declarations/conjclasses--c70010131f37272b262e4d7d.md) | 216 | `declaration-track:c70010131f37272b262e4d7dd95dd36723fd0cf13860569447a3ae9e2dd17a87` |
| 22 | `theorem` | [right_splitting](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant9e9d6101619d9aef54c9168ad065136b074b4376c25932afd77c19d7d816f5dd.lean/declarations/right-splitting--78e9bf04ef90d5cfa6d239ba.md) | 224 | `result-track:78e9bf04ef90d5cfa6d239ba18fb1bc07160eb8ae730b5c534077ac4ad0caea2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
