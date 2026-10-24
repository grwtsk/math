# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceCesaroSignedPairingConsumer.Variant4c690447d845d5f715e90cde7e3d01587fb1e0138353dd600cc59d837d7dfb3f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a1fa2407df9a4c53ca9386533a79e3706997534e",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCesaroSignedPairingConsumer/Variant4c690447d845d5f715e90cde7e3d01587fb1e0138353dd600cc59d837d7dfb3f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCesaroSignedPairingConsumer/Variant4c690447d845d5f715e90cde7e3d01587fb1e0138353dd600cc59d837d7dfb3f.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCesaroSignedPairingConsumer/Variant4c690447d845d5f715e90cde7e3d01587fb1e0138353dd600cc59d837d7dfb3f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a1fa2407df9a4c53ca9386533a79e3706997534e`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCesaroSignedPairingConsumer/Variant4c690447d845d5f715e90cde7e3d01587fb1e0138353dd600cc59d837d7dfb3f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCesaroSignedPairingConsumer/Variant4c690447d845d5f715e90cde7e3d01587fb1e0138353dd600cc59d837d7dfb3f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SourceCesaroPrimitiveConsumer` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [signedCesaroPairing](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCesaroSignedPairingConsumer/Variant4c690447d845d5f715e90cde7e3d01587fb1e0138353dd600cc59d837d7dfb3f.lean/declarations/signedcesaropairing--28b797770edb9145dcd080aa.md) | 26 | `declaration-track:28b797770edb9145dcd080aa444348a79decb71865b17500dbb14d06bf0893d6` |
| 2 | `theorem` | [signedCesaroPairing_le_remainingAtomWork](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCesaroSignedPairingConsumer/Variant4c690447d845d5f715e90cde7e3d01587fb1e0138353dd600cc59d837d7dfb3f.lean/declarations/signedcesaropairing-le-remainingatomwork--b77ebf81e45e0b7661446869.md) | 31 | `result-track:b77ebf81e45e0b7661446869182a6024414b1560c79d3a1b5550c288d7c8d183` |
| 3 | `theorem` | [remainingAtomWork_lower_of_signed_pairing](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCesaroSignedPairingConsumer/Variant4c690447d845d5f715e90cde7e3d01587fb1e0138353dd600cc59d837d7dfb3f.lean/declarations/remainingatomwork-lower-of-signed-pairing--8fb3bee8046d9123921a58e9.md) | 43 | `result-track:8fb3bee8046d9123921a58e95520cc492bc9a5cc7a22618a71a4b5d6e59076dc` |
| 4 | `theorem` | [all_real_source_lower_of_signed_pairing](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCesaroSignedPairingConsumer/Variant4c690447d845d5f715e90cde7e3d01587fb1e0138353dd600cc59d837d7dfb3f.lean/declarations/all-real-source-lower-of-signed-pairing--9763d72aafbb59abef76fbf0.md) | 49 | `result-track:9763d72aafbb59abef76fbf06d5f0ccab3297c1b5825407bed48fb209603dcdf` |
| 5 | `theorem` | [estimate_of_signed_pairing](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCesaroSignedPairingConsumer/Variant4c690447d845d5f715e90cde7e3d01587fb1e0138353dd600cc59d837d7dfb3f.lean/declarations/estimate-of-signed-pairing--6973e42271d58d559adc0bdf.md) | 61 | `result-track:6973e42271d58d559adc0bdfb357abf398352566f584adc7a66802d4e817131f` |
| 6 | `theorem` | [estimate_of_signed_pairing_exists](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCesaroSignedPairingConsumer/Variant4c690447d845d5f715e90cde7e3d01587fb1e0138353dd600cc59d837d7dfb3f.lean/declarations/estimate-of-signed-pairing-exists--fef8485773d3f5febb115c7a.md) | 69 | `result-track:fef8485773d3f5febb115c7a32f031e37674a86989a7cae0d27c534ac8205f83` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
