# Verification target: GRWTSK.Algebra.Hairer.Variantd537f5d880d828d8a907efab93cec6b1822255a40ef0403437e1bf1d1db0f28c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b184bdb6945b98757755e4920e7c52841d4274e7",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Hairer/Variantd537f5d880d828d8a907efab93cec6b1822255a40ef0403437e1bf1d1db0f28c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Hairer/Variantd537f5d880d828d8a907efab93cec6b1822255a40ef0403437e1bf1d1db0f28c.lean/index.md) · [Full source](../../../../mathematics/Algebra/Hairer/Variantd537f5d880d828d8a907efab93cec6b1822255a40ef0403437e1bf1d1db0f28c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b184bdb6945b98757755e4920e7c52841d4274e7`.

Source path: `GRWTSK/Algebra/Hairer/Variantd537f5d880d828d8a907efab93cec6b1822255a40ef0403437e1bf1d1db0f28c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Hairer/Variantd537f5d880d828d8a907efab93cec6b1822255a40ef0403437e1bf1d1db0f28c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ContDiffSupportedOn](../../../../mathematics/Algebra/Hairer/Variantd537f5d880d828d8a907efab93cec6b1822255a40ef0403437e1bf1d1db0f28c.lean/declarations/contdiffsupportedon--b3adf75bc3da43e278556130.md) | 40 | `declaration-track:b3adf75bc3da43e27855613002b592485c5cf7a9c21706162a6a6fe74ae320a1` |
| 2 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Hairer/Variantd537f5d880d828d8a907efab93cec6b1822255a40ef0403437e1bf1d1db0f28c.lean/declarations/instance--79e5667480d635400aef92c4.md) | 52 | `declaration-track:79e5667480d635400aef92c4bb8c61cd6af2abd2a78b856fe5b6bf6b5d28c9ae` |
| 3 | `lemma` | [coe_mk](../../../../mathematics/Algebra/Hairer/Variantd537f5d880d828d8a907efab93cec6b1822255a40ef0403437e1bf1d1db0f28c.lean/declarations/coe-mk--04a84c8939cce125a8f22767.md) | 57 | `result-track:04a84c8939cce125a8f2276771280654cb55c674cffb2b3d45afdf789dd0821f` |
| 4 | `lemma` | [tsupport_subset](../../../../mathematics/Algebra/Hairer/Variantd537f5d880d828d8a907efab93cec6b1822255a40ef0403437e1bf1d1db0f28c.lean/declarations/tsupport-subset--4161d59d38514eed9c175fb5.md) | 59 | `result-track:4161d59d38514eed9c175fb5c9b0f603a4512abb3e5530b740e0b58d31aaa911` |
| 5 | `lemma` | [support_subset](../../../../mathematics/Algebra/Hairer/Variantd537f5d880d828d8a907efab93cec6b1822255a40ef0403437e1bf1d1db0f28c.lean/declarations/support-subset--ad271f70d4208a357e4673ba.md) | 61 | `result-track:ad271f70d4208a357e4673ba65a2eee06c6b7eab4f98ab4bb8ffa70feeae056a` |
| 6 | `lemma` | [contDiff](../../../../mathematics/Algebra/Hairer/Variantd537f5d880d828d8a907efab93cec6b1822255a40ef0403437e1bf1d1db0f28c.lean/declarations/contdiff--7bd275f24a23165d86c61549.md) | 64 | `result-track:7bd275f24a23165d86c61549443f4f1d321721decc270dc6b76d0ba5e211f9c5` |
| 7 | `theorem` | [continuous](../../../../mathematics/Algebra/Hairer/Variantd537f5d880d828d8a907efab93cec6b1822255a40ef0403437e1bf1d1db0f28c.lean/declarations/continuous--43eccebca203657ab4bcac0f.md) | 67 | `result-track:43eccebca203657ab4bcac0f03241609b63465b12bd19d05dec373654d283ac1` |
| 8 | `lemma` | [hasCompactSupport](../../../../mathematics/Algebra/Hairer/Variantd537f5d880d828d8a907efab93cec6b1822255a40ef0403437e1bf1d1db0f28c.lean/declarations/hascompactsupport--f82e04701122f80e8c23edbd.md) | 70 | `result-track:f82e04701122f80e8c23edbd8a5638001fd695257a7ccb318a604b727b5061ea` |
| 9 | `theorem` | [integrable_eval_mul](../../../../mathematics/Algebra/Hairer/Variantd537f5d880d828d8a907efab93cec6b1822255a40ef0403437e1bf1d1db0f28c.lean/declarations/integrable-eval-mul--11839e203950a50a6daef961.md) | 74 | `result-track:11839e203950a50a6daef961aef7cc62541cd514e8e42e7fc1f5d6be6ef1ab1f` |
| 10 | `def` | [L](../../../../mathematics/Algebra/Hairer/Variantd537f5d880d828d8a907efab93cec6b1822255a40ef0403437e1bf1d1db0f28c.lean/declarations/l--322d3b562f0a901f913693a5.md) | 89 | `declaration-track:322d3b562f0a901f913693a5d493f27e558defc6d43931362ce7a6150153f390` |
| 11 | `lemma` | [inj_L](../../../../mathematics/Algebra/Hairer/Variantd537f5d880d828d8a907efab93cec6b1822255a40ef0403437e1bf1d1db0f28c.lean/declarations/inj-l--980cef679a36514d520bba4a.md) | 99 | `result-track:980cef679a36514d520bba4a37cc031b64143fba213546665afea886dc311270` |
| 12 | `lemma` | [hairer](../../../../mathematics/Algebra/Hairer/Variantd537f5d880d828d8a907efab93cec6b1822255a40ef0403437e1bf1d1db0f28c.lean/declarations/hairer--1587ff0be33ecfa7bd347dcc.md) | 118 | `result-track:1587ff0be33ecfa7bd347dcc5ebcc47a79f470d808e80474a70796e055959c7d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
