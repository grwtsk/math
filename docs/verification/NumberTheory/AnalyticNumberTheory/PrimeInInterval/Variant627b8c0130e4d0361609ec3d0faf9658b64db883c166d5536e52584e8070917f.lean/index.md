# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.PrimeInInterval.Variant627b8c0130e4d0361609ec3d0faf9658b64db883c166d5536e52584e8070917f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a1ada9e00a678717a9145096ba2dcf2319a6af71",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/PrimeInInterval/Variant627b8c0130e4d0361609ec3d0faf9658b64db883c166d5536e52584e8070917f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/PrimeInInterval/Variant627b8c0130e4d0361609ec3d0faf9658b64db883c166d5536e52584e8070917f.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/PrimeInInterval/Variant627b8c0130e4d0361609ec3d0faf9658b64db883c166d5536e52584e8070917f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a1ada9e00a678717a9145096ba2dcf2319a6af71`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/PrimeInInterval/Variant627b8c0130e4d0361609ec3d0faf9658b64db883c166d5536e52584e8070917f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/PrimeInInterval/Variant627b8c0130e4d0361609ec3d0faf9658b64db883c166d5536e52584e8070917f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `PrimeNumberTheoremAnd.IEANTN.SecondaryDefinitions` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [HasPrimeInInterval.iff_pi_ge](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/PrimeInInterval/Variant627b8c0130e4d0361609ec3d0faf9658b64db883c166d5536e52584e8070917f.lean/declarations/hasprimeininterval-iff-pi-ge--7d5548b4205ef7102eac3266.md) | 30 | `result-track:7d5548b4205ef7102eac326659d8d7a544f15a26c303bc016d9ab5d0e91c3174` |
| 2 | `theorem` | [theta_pos_implies_prime_in_interval](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/PrimeInInterval/Variant627b8c0130e4d0361609ec3d0faf9658b64db883c166d5536e52584e8070917f.lean/declarations/theta-pos-implies-prime-in-interval--19662002c3e0c5dbcc98f984.md) | 66 | `result-track:19662002c3e0c5dbcc98f984845954eb1223dad957c522f9f647d0571c44997a` |
| 3 | `lemma` | [HasPrimeInInterval.iff_theta_ge](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/PrimeInInterval/Variant627b8c0130e4d0361609ec3d0faf9658b64db883c166d5536e52584e8070917f.lean/declarations/hasprimeininterval-iff-theta-ge--ae650d7fd19d8e678ada581e.md) | 89 | `result-track:ae650d7fd19d8e678ada581e51dbabc7be86f77adc9eaa9968e3defcf15528c4` |
| 4 | `lemma` | [Eθ.hasPrimeInInterval](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/PrimeInInterval/Variant627b8c0130e4d0361609ec3d0faf9658b64db883c166d5536e52584e8070917f.lean/declarations/e-hasprimeininterval--cc35de07397c643e715a506e.md) | 146 | `result-track:cc35de07397c643e715a506e366883e573133e08c87999c58fa971fd3154b39b` |
| 5 | `lemma` | [Eθ.numericalBound.hasPrimeInInterval](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/PrimeInInterval/Variant627b8c0130e4d0361609ec3d0faf9658b64db883c166d5536e52584e8070917f.lean/declarations/e-numericalbound-hasprimeininterval--12049df52945240826e5b2ad.md) | 178 | `result-track:12049df52945240826e5b2ad5c5e6fe504e953e210a62be2ac9ce788a4290a29` |
| 6 | `lemma` | [Eθ.classicalBound.hasPrimeInInterval](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/PrimeInInterval/Variant627b8c0130e4d0361609ec3d0faf9658b64db883c166d5536e52584e8070917f.lean/declarations/e-classicalbound-hasprimeininterval--bd1b8aa9d392869c9f147f29.md) | 203 | `result-track:bd1b8aa9d392869c9f147f29d451c256f2a0283b23f6dc73486df0d934c27821` |
| 7 | `lemma` | [prime_gap_record.hasPrimeInInterval](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/PrimeInInterval/Variant627b8c0130e4d0361609ec3d0faf9658b64db883c166d5536e52584e8070917f.lean/declarations/prime-gap-record-hasprimeininterval--245516204b1ad732b2bb16da.md) | 223 | `result-track:245516204b1ad732b2bb16da570e6004da38a956d138b3641f5f9cb3412d6550` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
