# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.EstimateMertensAbel.Variant3ed186e897d5eaffc9ad84135669e0580b7eeb0b266aa496915d48d160cdc969

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "216b10f4a9f3be4e5f78497c555f9aad1b1f8280",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/EstimateMertensAbel/Variant3ed186e897d5eaffc9ad84135669e0580b7eeb0b266aa496915d48d160cdc969.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/EstimateMertensAbel/Variant3ed186e897d5eaffc9ad84135669e0580b7eeb0b266aa496915d48d160cdc969.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/EstimateMertensAbel/Variant3ed186e897d5eaffc9ad84135669e0580b7eeb0b266aa496915d48d160cdc969.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `216b10f4a9f3be4e5f78497c555f9aad1b1f8280`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/EstimateMertensAbel/Variant3ed186e897d5eaffc9ad84135669e0580b7eeb0b266aa496915d48d160cdc969.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/EstimateMertensAbel/Variant3ed186e897d5eaffc9ad84135669e0580b7eeb0b266aa496915d48d160cdc969.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateMobiusSplit` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.AbelSummation` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [realMoebius](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/EstimateMertensAbel/Variant3ed186e897d5eaffc9ad84135669e0580b7eeb0b266aa496915d48d160cdc969.lean/declarations/realmoebius--aecb8d186907fdc99bb6bfb6.md) | 44 | `declaration-track:aecb8d186907fdc99bb6bfb69ce0987b4c95fa048cd72f5ed203cd314657acf8` |
| 2 | `theorem` | [realMoebius_zero](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/EstimateMertensAbel/Variant3ed186e897d5eaffc9ad84135669e0580b7eeb0b266aa496915d48d160cdc969.lean/declarations/realmoebius-zero--f7d63cf92e8c8d837709222d.md) | 48 | `result-track:f7d63cf92e8c8d837709222d14b9f6a2094157992b962e65fae3021de5276d97` |
| 3 | `def` | [mertens](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/EstimateMertensAbel/Variant3ed186e897d5eaffc9ad84135669e0580b7eeb0b266aa496915d48d160cdc969.lean/declarations/mertens--aecd02e285f46b5de658a1a9.md) | 53 | `declaration-track:aecd02e285f46b5de658a1a9b9aef09ac51f1fc4805eadd3d6c08bc0c95f297a` |
| 4 | `def` | [mertensNat](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/EstimateMertensAbel/Variant3ed186e897d5eaffc9ad84135669e0580b7eeb0b266aa496915d48d160cdc969.lean/declarations/mertensnat--2e8327a07734d335da8e77e6.md) | 57 | `declaration-track:2e8327a07734d335da8e77e679483bec00a18db6a5dcdfc17a0f72b2109e94f2` |
| 5 | `theorem` | [mertens_natCast](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/EstimateMertensAbel/Variant3ed186e897d5eaffc9ad84135669e0580b7eeb0b266aa496915d48d160cdc969.lean/declarations/mertens-natcast--2ed83a092d44e38be1cee762.md) | 61 | `result-track:2ed83a092d44e38be1cee762e24bb640905986255d3d304d460db2044e745f3f` |
| 6 | `theorem` | [mobius_abel](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/EstimateMertensAbel/Variant3ed186e897d5eaffc9ad84135669e0580b7eeb0b266aa496915d48d160cdc969.lean/declarations/mobius-abel--c629602376306113f8be23b7.md) | 66 | `result-track:c629602376306113f8be23b7502caba8b880f9bf6fdba7e4629b6a3160374be8` |
| 7 | `theorem` | [mobius_abel_commuted](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/EstimateMertensAbel/Variant3ed186e897d5eaffc9ad84135669e0580b7eeb0b266aa496915d48d160cdc969.lean/declarations/mobius-abel-commuted--223ad2e1b37264b054feec99.md) | 84 | `result-track:223ad2e1b37264b054feec99984853f8776f28c9cd4ab997a6628d4efe760947` |
| 8 | `def` | [sourceLower](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/EstimateMertensAbel/Variant3ed186e897d5eaffc9ad84135669e0580b7eeb0b266aa496915d48d160cdc969.lean/declarations/sourcelower--991b3072071f0cb3addd787d.md) | 115 | `declaration-track:991b3072071f0cb3addd787dd5bf5509e4e2f24fd897f748ac87bd1bce639b99` |
| 9 | `def` | [sourceUpper](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/EstimateMertensAbel/Variant3ed186e897d5eaffc9ad84135669e0580b7eeb0b266aa496915d48d160cdc969.lean/declarations/sourceupper--4d3c586d76d17df11795736a.md) | 117 | `declaration-track:4d3c586d76d17df11795736af7979b63959ad6430f875751b0f9a3fd5582d0a2` |
| 10 | `def` | [mertensKernelIntegral](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/EstimateMertensAbel/Variant3ed186e897d5eaffc9ad84135669e0580b7eeb0b266aa496915d48d160cdc969.lean/declarations/mertenskernelintegral--ed870df9fc8e16ac710a0909.md) | 120 | `declaration-track:ed870df9fc8e16ac710a09098bc776dc518a1378f066da7a84f7e45f529b347c` |
| 11 | `theorem` | [source_window_abel](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/EstimateMertensAbel/Variant3ed186e897d5eaffc9ad84135669e0580b7eeb0b266aa496915d48d160cdc969.lean/declarations/source-window-abel--64d1c99c19d9e929b3304984.md) | 125 | `result-track:64d1c99c19d9e929b330498414c2719b8a8f1b975a29952cd1072cef61b3d83f` |
| 12 | `theorem` | [source_window_abel_of_upper_zero](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/EstimateMertensAbel/Variant3ed186e897d5eaffc9ad84135669e0580b7eeb0b266aa496915d48d160cdc969.lean/declarations/source-window-abel-of-upper-zero--ab66699e140383d6e83ddf09.md) | 166 | `result-track:ab66699e140383d6e83ddf09b0a3ff007dfa63538b3c5b43c5f75bc96ed7ab76` |
| 13 | `def` | [SourceMobiusKernelContract](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/EstimateMertensAbel/Variant3ed186e897d5eaffc9ad84135669e0580b7eeb0b266aa496915d48d160cdc969.lean/declarations/sourcemobiuskernelcontract--38731d273f50790c4ed77cdb.md) | 188 | `declaration-track:38731d273f50790c4ed77cdb0cbb2dab388173c5ae7133712ebd57f08da8e4a2` |
| 14 | `theorem` | [abel_identity_of_source_kernel_contract](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/EstimateMertensAbel/Variant3ed186e897d5eaffc9ad84135669e0580b7eeb0b266aa496915d48d160cdc969.lean/declarations/abel-identity-of-source-kernel-contract--84f1962e8a0614cac9651aed.md) | 205 | `result-track:84f1962e8a0614cac9651aedfe457575ee8a740a76fb3716437484b1a42658e5` |
| 15 | `def` | [MertensAbelCheckpoint](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/EstimateMertensAbel/Variant3ed186e897d5eaffc9ad84135669e0580b7eeb0b266aa496915d48d160cdc969.lean/declarations/mertensabelcheckpoint--596677a36f95817e5c3a4ca6.md) | 219 | `declaration-track:596677a36f95817e5c3a4ca66301a8c848cc9d082dcae458471b04e7231fa3eb` |
| 16 | `theorem` | [mertens_abel_checkpoint](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/EstimateMertensAbel/Variant3ed186e897d5eaffc9ad84135669e0580b7eeb0b266aa496915d48d160cdc969.lean/declarations/mertens-abel-checkpoint--86b8c20ba905493a418a5ec7.md) | 229 | `result-track:86b8c20ba905493a418a5ec7fd0a7f7b39b2fae56e75a92874f4c248db3e9283` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
