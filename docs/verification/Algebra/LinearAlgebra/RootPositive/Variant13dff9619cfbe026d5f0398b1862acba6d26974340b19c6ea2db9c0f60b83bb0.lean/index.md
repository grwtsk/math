# Verification target: GRWTSK.Algebra.LinearAlgebra.RootPositive.Variant13dff9619cfbe026d5f0398b1862acba6d26974340b19c6ea2db9c0f60b83bb0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "748a63ae02d53070be37838da1c5b48f1329e4be",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/RootPositive/Variant13dff9619cfbe026d5f0398b1862acba6d26974340b19c6ea2db9c0f60b83bb0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/RootPositive/Variant13dff9619cfbe026d5f0398b1862acba6d26974340b19c6ea2db9c0f60b83bb0.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/RootPositive/Variant13dff9619cfbe026d5f0398b1862acba6d26974340b19c6ea2db9c0f60b83bb0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `748a63ae02d53070be37838da1c5b48f1329e4be`.

Source path: `GRWTSK/Algebra/LinearAlgebra/RootPositive/Variant13dff9619cfbe026d5f0398b1862acba6d26974340b19c6ea2db9c0f60b83bb0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/RootPositive/Variant13dff9619cfbe026d5f0398b1862acba6d26974340b19c6ea2db9c0f60b83bb0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.RootSystem.IsValuedIn` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.RootSystem.WeylGroup` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [InvariantForm](../../../../../mathematics/Algebra/LinearAlgebra/RootPositive/Variant13dff9619cfbe026d5f0398b1862acba6d26974340b19c6ea2db9c0f60b83bb0.lean/declarations/invariantform--bc575f9636461d0d7f7e9ef7.md) | 55 | `declaration-track:bc575f9636461d0d7f7e9ef7a05e4286d680bd9b0cdfdb99eeb1e8ed70600596` |
| 2 | `lemma` | [apply_root_ne_zero](../../../../../mathematics/Algebra/LinearAlgebra/RootPositive/Variant13dff9619cfbe026d5f0398b1862acba6d26974340b19c6ea2db9c0f60b83bb0.lean/declarations/apply-root-ne-zero--b1c29e10a6f5f605c519b9e3.md) | 66 | `result-track:b1c29e10a6f5f605c519b9e380dbc66c33cc03643c108852dc8226b463f3ab27` |
| 3 | `lemma` | [two_mul_apply_root_root](../../../../../mathematics/Algebra/LinearAlgebra/RootPositive/Variant13dff9619cfbe026d5f0398b1862acba6d26974340b19c6ea2db9c0f60b83bb0.lean/declarations/two-mul-apply-root-root--dac9e07a14f16c4ff50db4e3.md) | 69 | `result-track:dac9e07a14f16c4ff50db4e3e59c7b7162701d0b5e02b433217ba706a7da5c25` |
| 4 | `lemma` | [pairing_mul_eq_pairing_mul_swap](../../../../../mathematics/Algebra/LinearAlgebra/RootPositive/Variant13dff9619cfbe026d5f0398b1862acba6d26974340b19c6ea2db9c0f60b83bb0.lean/declarations/pairing-mul-eq-pairing-mul-swap--62e473513956b0aa570c421e.md) | 76 | `result-track:62e473513956b0aa570c421eafe66540de1ce6687ab86fa60a4001198ea72858` |
| 5 | `lemma` | [apply_reflection_reflection](../../../../../mathematics/Algebra/LinearAlgebra/RootPositive/Variant13dff9619cfbe026d5f0398b1862acba6d26974340b19c6ea2db9c0f60b83bb0.lean/declarations/apply-reflection-reflection--830d78eb45d38c3d33bc2952.md) | 83 | `result-track:830d78eb45d38c3d33bc2952f86084f42de201b58c380c2647bedd41d36da42e` |
| 6 | `lemma` | [apply_weylGroup_smul](../../../../../mathematics/Algebra/LinearAlgebra/RootPositive/Variant13dff9619cfbe026d5f0398b1862acba6d26974340b19c6ea2db9c0f60b83bb0.lean/declarations/apply-weylgroup-smul--b4746e8ba9c10e41dc8af290.md) | 88 | `result-track:b4746e8ba9c10e41dc8af29097c00f996e6d496c8b59db2de4f212bf0db4a900` |
| 7 | `lemma` | [apply_root_root_zero_iff](../../../../../mathematics/Algebra/LinearAlgebra/RootPositive/Variant13dff9619cfbe026d5f0398b1862acba6d26974340b19c6ea2db9c0f60b83bb0.lean/declarations/apply-root-root-zero-iff--056e05526a9f533e97e5212e.md) | 100 | `result-track:056e05526a9f533e97e5212e09f5ebf4db6e1a976ab5bba3b7132dcf6321ef41` |
| 8 | `structure` | [RootPositiveForm](../../../../../mathematics/Algebra/LinearAlgebra/RootPositive/Variant13dff9619cfbe026d5f0398b1862acba6d26974340b19c6ea2db9c0f60b83bb0.lean/declarations/rootpositiveform--dc2b90b0157f9a9754a45f63.md) | 112 | `declaration-track:dc2b90b0157f9a9754a45f6343655f107f8f47c7322838c61d9d0097a73b03a0` |
| 9 | `lemma` | [form_apply_root_ne_zero](../../../../../mathematics/Algebra/LinearAlgebra/RootPositive/Variant13dff9619cfbe026d5f0398b1862acba6d26974340b19c6ea2db9c0f60b83bb0.lean/declarations/form-apply-root-ne-zero--e02ff06d67c2b236f6b5f7bf.md) | 126 | `result-track:e02ff06d67c2b236f6b5f7bf756f7e39b14689e3545d507890c406b00e52d96a` |
| 10 | `def` | [toInvariantForm](../../../../../mathematics/Algebra/LinearAlgebra/RootPositive/Variant13dff9619cfbe026d5f0398b1862acba6d26974340b19c6ea2db9c0f60b83bb0.lean/declarations/toinvariantform--781fc44f8f88e782a08977af.md) | 133 | `declaration-track:781fc44f8f88e782a08977afded245418cbe28b83cac8e3ab6829515232f116b` |
| 11 | `lemma` | [two_mul_apply_root_root](../../../../../mathematics/Algebra/LinearAlgebra/RootPositive/Variant13dff9619cfbe026d5f0398b1862acba6d26974340b19c6ea2db9c0f60b83bb0.lean/declarations/two-mul-apply-root-root--67c474f803e7f000fda49072.md) | 140 | `result-track:67c474f803e7f000fda49072ecc34c548056f32f984c3d35dd02fd9ed49df94e` |
| 12 | `def` | [posForm](../../../../../mathematics/Algebra/LinearAlgebra/RootPositive/Variant13dff9619cfbe026d5f0398b1862acba6d26974340b19c6ea2db9c0f60b83bb0.lean/declarations/posform--9ed5776e016a6b9aa3100358.md) | 146 | `declaration-track:9ed5776e016a6b9aa310035809782537512471f50eefbd003b933fbdd40294ec` |
| 13 | `lemma` | [algebraMap_posForm](../../../../../mathematics/Algebra/LinearAlgebra/RootPositive/Variant13dff9619cfbe026d5f0398b1862acba6d26974340b19c6ea2db9c0f60b83bb0.lean/declarations/algebramap-posform--adb3661ce4ee04ac708ee00c.md) | 159 | `result-track:adb3661ce4ee04ac708ee00cd53df025c45220c1e1394eb48c87d1044452563c` |
| 14 | `lemma` | [algebraMap_apply_eq_form_iff](../../../../../mathematics/Algebra/LinearAlgebra/RootPositive/Variant13dff9619cfbe026d5f0398b1862acba6d26974340b19c6ea2db9c0f60b83bb0.lean/declarations/algebramap-apply-eq-form-iff--67670639249bdb0634172cff.md) | 164 | `result-track:67670639249bdb0634172cff730ae1b68712787ba42b0df085ff86a709204148` |
| 15 | `lemma` | [zero_lt_posForm_iff](../../../../../mathematics/Algebra/LinearAlgebra/RootPositive/Variant13dff9619cfbe026d5f0398b1862acba6d26974340b19c6ea2db9c0f60b83bb0.lean/declarations/zero-lt-posform-iff--5dfa238216c43e309a29d4f3.md) | 168 | `result-track:5dfa238216c43e309a29d4f3bace6a3a6d8a0df0efc6d6b968d0c91f90c7c7a1` |
| 16 | `lemma` | [zero_lt_posForm_apply_root](../../../../../mathematics/Algebra/LinearAlgebra/RootPositive/Variant13dff9619cfbe026d5f0398b1862acba6d26974340b19c6ea2db9c0f60b83bb0.lean/declarations/zero-lt-posform-apply-root--a139b5d054bf5eb6d71b5b2e.md) | 174 | `result-track:a139b5d054bf5eb6d71b5b2ecae4ba9aab220da748ce5c19d3390bdf9bfdfa5b` |
| 17 | `lemma` | [isSymm_posForm](../../../../../mathematics/Algebra/LinearAlgebra/RootPositive/Variant13dff9619cfbe026d5f0398b1862acba6d26974340b19c6ea2db9c0f60b83bb0.lean/declarations/issymm-posform--529a8834cac390125a337a34.md) | 179 | `result-track:529a8834cac390125a337a34a6ede12cc9b07ea32d32a3087358dd86873ecb31` |
| 18 | `def` | [rootLength](../../../../../mathematics/Algebra/LinearAlgebra/RootPositive/Variant13dff9619cfbe026d5f0398b1862acba6d26974340b19c6ea2db9c0f60b83bb0.lean/declarations/rootlength--115d4c0f1a7d578b843e3ae2.md) | 186 | `declaration-track:115d4c0f1a7d578b843e3ae2422a3a2af2b40824d0b53a0ab195fc7a52abf264` |
| 19 | `lemma` | [rootLength_pos](../../../../../mathematics/Algebra/LinearAlgebra/RootPositive/Variant13dff9619cfbe026d5f0398b1862acba6d26974340b19c6ea2db9c0f60b83bb0.lean/declarations/rootlength-pos--54a1d2f314e8c7d70157e3fd.md) | 189 | `result-track:54a1d2f314e8c7d70157e3fd08ffb4ea9f039109c3fcdafed0b0d6e9a861595d` |
| 20 | `lemma` | [rootLength_reflection_perm_self](../../../../../mathematics/Algebra/LinearAlgebra/RootPositive/Variant13dff9619cfbe026d5f0398b1862acba6d26974340b19c6ea2db9c0f60b83bb0.lean/declarations/rootlength-reflection-perm-self--1d1ee5ed0bb203dc1bbe0541.md) | 193 | `result-track:1d1ee5ed0bb203dc1bbe05419f6f83a7748b1c16838b94bc8cfb73a8ec193936` |
| 21 | `lemma` | [algebraMap_rootLength](../../../../../mathematics/Algebra/LinearAlgebra/RootPositive/Variant13dff9619cfbe026d5f0398b1862acba6d26974340b19c6ea2db9c0f60b83bb0.lean/declarations/algebramap-rootlength--660bb6216f3d5d15879ac2e7.md) | 197 | `result-track:660bb6216f3d5d15879ac2e719d794cc39cf812fea572407a40bf655a8fd1e89` |
| 22 | `lemma` | [pairingIn_mul_eq_pairingIn_mul_swap](../../../../../mathematics/Algebra/LinearAlgebra/RootPositive/Variant13dff9619cfbe026d5f0398b1862acba6d26974340b19c6ea2db9c0f60b83bb0.lean/declarations/pairingin-mul-eq-pairingin-mul-swap--4291f40798e3f41937dcb6c6.md) | 201 | `result-track:4291f40798e3f41937dcb6c660527dfb423777570d1a15d3e2627926bdae7bb9` |
| 23 | `lemma` | [zero_lt_apply_root_root_iff](../../../../../mathematics/Algebra/LinearAlgebra/RootPositive/Variant13dff9619cfbe026d5f0398b1862acba6d26974340b19c6ea2db9c0f60b83bb0.lean/declarations/zero-lt-apply-root-root-iff--1317987114f3661982f75db5.md) | 207 | `result-track:1317987114f3661982f75db55002ae8a534e5a59ff423dacb09e3dffb8a3c7f1` |
| 24 | `lemma` | [zero_lt_pairingIn_iff](../../../../../mathematics/Algebra/LinearAlgebra/RootPositive/Variant13dff9619cfbe026d5f0398b1862acba6d26974340b19c6ea2db9c0f60b83bb0.lean/declarations/zero-lt-pairingin-iff--e2cb4f7a1522bc79ec549818.md) | 225 | `result-track:e2cb4f7a1522bc79ec5498187c0c47e19ba54628b66ea6fc42491b1939ccbc57` |
| 25 | `lemma` | [coxeterWeight_nonneg](../../../../../mathematics/Algebra/LinearAlgebra/RootPositive/Variant13dff9619cfbe026d5f0398b1862acba6d26974340b19c6ea2db9c0f60b83bb0.lean/declarations/coxeterweight-nonneg--8fdc7f41280fb146f1ba6901.md) | 230 | `result-track:8fdc7f41280fb146f1ba6901eda189f1e2d64000a846d3e170e8477c77e00cab` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
