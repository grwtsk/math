# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.Checks.Positive.RationalFiniteEvaluation

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fca4160de3987108929f5b20fe85e2ac40baa844",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/Checks/Positive/RationalFiniteEvaluation.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/Positive/RationalFiniteEvaluation.lean/index.md) · [Full source](../../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/Positive/RationalFiniteEvaluation.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fca4160de3987108929f5b20fe85e2ac40baa844`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/Checks/Positive/RationalFiniteEvaluation.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/Checks/Positive/RationalFiniteEvaluation.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripRationalEvaluatedPair`](../../../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripRationalEvaluatedPair.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [baseOne](../../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/Positive/RationalFiniteEvaluation.lean/declarations/baseone--8302a293c5e4b49c2aa9be24.md) | 24 | `declaration-track:8302a293c5e4b49c2aa9be24d747ecb6456dfa0c81134ad35781f621936c499c` |
| 2 | `def` | [plusTwo](../../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/Positive/RationalFiniteEvaluation.lean/declarations/plustwo--9186457f7005bd1b60c48daf.md) | 25 | `declaration-track:9186457f7005bd1b60c48daf828ea185ab2e114eec547ff1666eeb8616bd72d7` |
| 3 | `def` | [minusTwo](../../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/Positive/RationalFiniteEvaluation.lean/declarations/minustwo--f957b70e6547de6e40d6af68.md) | 26 | `declaration-track:f957b70e6547de6e40d6af6862389b3bed27799c752507fdb5cea6211eb3dfc2` |
| 4 | `def` | [actual](../../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/Positive/RationalFiniteEvaluation.lean/declarations/actual--27fefc67c0cb6be84cb79cd2.md) | 28 | `declaration-track:27fefc67c0cb6be84cb79cd299dba18af2d3eb62afe18b6fe41fba4a447de12a` |
| 5 | `theorem` | [actual_accepts](../../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/Positive/RationalFiniteEvaluation.lean/declarations/actual-accepts--d955f9331c59bf5eeea1ad68.md) | 32 | `result-track:d955f9331c59bf5eeea1ad6839743700f3b3e88764faffdd2550355b7923d803` |
| 6 | `theorem` | [actual_not_target](../../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/Positive/RationalFiniteEvaluation.lean/declarations/actual-not-target--ebe0ba03b6f24531ffd49958.md) | 35 | `result-track:ebe0ba03b6f24531ffd4995858d75dc07ee02d883bebc6389ce05b31727807e9` |
| 7 | `example` | [(anonymous)](../../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/Positive/RationalFiniteEvaluation.lean/declarations/example--cb9f1b4ba27f7951f7e695b8.md) | 39 | `declaration-track:cb9f1b4ba27f7951f7e695b829ca6fa183bd5df18c9748879ba33a00e1fd30c1` |
| 8 | `example` | [(anonymous)](../../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/Positive/RationalFiniteEvaluation.lean/declarations/example--ec1a32976778a33fcd851cca.md) | 40 | `declaration-track:ec1a32976778a33fcd851cca950a72bca55eb73b19385c299f0042c6bcdd0006` |
| 9 | `example` | [(anonymous)](../../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/Positive/RationalFiniteEvaluation.lean/declarations/example--640ef366d07a7c3ae5a9c09b.md) | 41 | `declaration-track:640ef366d07a7c3ae5a9c09be189799df4a73177c8f294c165b02fd9d9878279` |
| 10 | `example` | [(anonymous)](../../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/Positive/RationalFiniteEvaluation.lean/declarations/example--18d7ae168d40f3c4faec5088.md) | 43 | `declaration-track:18d7ae168d40f3c4faec508888727aa3e035dbcdf4a977aae275c39dd3740b56` |
| 11 | `example` | [(anonymous)](../../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/Positive/RationalFiniteEvaluation.lean/declarations/example--1eb921f9c36025520a358b37.md) | 47 | `declaration-track:1eb921f9c36025520a358b37c5b67097a4acaa84870fc7281673e369c254546e` |
| 12 | `example` | [(anonymous)](../../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/Positive/RationalFiniteEvaluation.lean/declarations/example--efde26a9e37e5b40fbad42f9.md) | 51 | `declaration-track:efde26a9e37e5b40fbad42f9e852d0ce68a1e4db746b2ec2d5f3b469b593bf49` |
| 13 | `example` | [(anonymous)](../../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/Positive/RationalFiniteEvaluation.lean/declarations/example--99a644b3b205f74d2bd8ae71.md) | 52 | `declaration-track:99a644b3b205f74d2bd8ae71be6f033749821734ef63306b09ad67333b104019` |
| 14 | `example` | [(anonymous)](../../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/Positive/RationalFiniteEvaluation.lean/declarations/example--6a6cddc4775ed0f735b8f67c.md) | 53 | `declaration-track:6a6cddc4775ed0f735b8f67c1e460855f1cb17232dcdfef0823d3dcb7274bb3f` |
| 15 | `example` | [(anonymous)](../../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/Positive/RationalFiniteEvaluation.lean/declarations/example--ad75941a1e974ef10fed8879.md) | 54 | `declaration-track:ad75941a1e974ef10fed88797463a45b3bc98d06713d919c2a7e9f8dd921251f` |
| 16 | `example` | [(anonymous)](../../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/Positive/RationalFiniteEvaluation.lean/declarations/example--34107eac61f5869f76ad4d29.md) | 55 | `declaration-track:34107eac61f5869f76ad4d2967c2a973b46940616d1a6e4495ae580179314ea8` |
| 17 | `example` | [(anonymous)](../../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/Positive/RationalFiniteEvaluation.lean/declarations/example--a55a54ffd1756e1fc0ec9a83.md) | 56 | `declaration-track:a55a54ffd1756e1fc0ec9a83f182362f17e98bf77538c20f97f0936ca7397291` |
| 18 | `example` | [(anonymous)](../../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/Positive/RationalFiniteEvaluation.lean/declarations/example--ae7866fd6f16705c727f2290.md) | 57 | `declaration-track:ae7866fd6f16705c727f2290373144017a38088f407285ee23a4b23c7b374a97` |
| 19 | `example` | [(anonymous)](../../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/Positive/RationalFiniteEvaluation.lean/declarations/example--924c208f0ef132665ef59b79.md) | 58 | `declaration-track:924c208f0ef132665ef59b791b7b398fdd6a59077106227497f070ceefe19eb2` |
| 20 | `example` | [(anonymous)](../../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/Positive/RationalFiniteEvaluation.lean/declarations/example--a5ca79dc8589b02b544eed0f.md) | 59 | `declaration-track:a5ca79dc8589b02b544eed0fb7f3b34da91ece6351f294f6d0568c50740c1c86` |
| 21 | `example` | [(anonymous)](../../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/Positive/RationalFiniteEvaluation.lean/declarations/example--7f76030d0b13723d38709d4d.md) | 60 | `declaration-track:7f76030d0b13723d38709d4d555e64b43cb95e3fcad78ce6ffef8cdaf12af012` |
| 22 | `example` | [(anonymous)](../../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/Positive/RationalFiniteEvaluation.lean/declarations/example--db7be24b742accca6f721cf5.md) | 61 | `declaration-track:db7be24b742accca6f721cf58d8c6c75e6e9129eea11773223105ca54b49f00a` |
| 23 | `example` | [(anonymous)](../../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/Positive/RationalFiniteEvaluation.lean/declarations/example--638c606dcaabdb2a75f412b0.md) | 62 | `declaration-track:638c606dcaabdb2a75f412b011b48df09ea19922d8b1256f6bf83449fb441084` |
| 24 | `example` | [(anonymous)](../../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/Positive/RationalFiniteEvaluation.lean/declarations/example--0781b6496bb9a5c6fafec590.md) | 63 | `declaration-track:0781b6496bb9a5c6fafec59040108ea028014190fc6768554344a0e14dec604b` |
| 25 | `example` | [(anonymous)](../../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/Positive/RationalFiniteEvaluation.lean/declarations/example--f44a5b7f1e6469b203934606.md) | 66 | `declaration-track:f44a5b7f1e6469b203934606edcaf18159d619627ce780e22f5544bff11a3de8` |
| 26 | `example` | [(anonymous)](../../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/Positive/RationalFiniteEvaluation.lean/declarations/example--8ef38099a81e03c78f4fe083.md) | 67 | `declaration-track:8ef38099a81e03c78f4fe0832ff80bf633c02bfbf38fd49abfa3b4f4b03e08a8` |
| 27 | `example` | [(anonymous)](../../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/Positive/RationalFiniteEvaluation.lean/declarations/example--100a046289c99f05c4510a99.md) | 69 | `declaration-track:100a046289c99f05c4510a9929aa1339929c2e439d359e69c2e1a06ae291a452` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
