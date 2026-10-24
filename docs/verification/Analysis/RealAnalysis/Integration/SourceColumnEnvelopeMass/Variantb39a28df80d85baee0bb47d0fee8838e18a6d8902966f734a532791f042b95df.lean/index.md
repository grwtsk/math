# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.SourceColumnEnvelopeMass.Variantb39a28df80d85baee0bb47d0fee8838e18a6d8902966f734a532791f042b95df

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ba3478518d126461048c5043e1289d5d11ed1638",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceColumnEnvelopeMass/Variantb39a28df80d85baee0bb47d0fee8838e18a6d8902966f734a532791f042b95df.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceColumnEnvelopeMass/Variantb39a28df80d85baee0bb47d0fee8838e18a6d8902966f734a532791f042b95df.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceColumnEnvelopeMass/Variantb39a28df80d85baee0bb47d0fee8838e18a6d8902966f734a532791f042b95df.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ba3478518d126461048c5043e1289d5d11ed1638`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/SourceColumnEnvelopeMass/Variantb39a28df80d85baee0bb47d0fee8838e18a6d8902966f734a532791f042b95df.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/SourceColumnEnvelopeMass/Variantb39a28df80d85baee0bb47d0fee8838e18a6d8902966f734a532791f042b95df.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SourceMangoldtQuotientEndpoint` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Sqrt` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [inverse_sqrt_antiderivative](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceColumnEnvelopeMass/Variantb39a28df80d85baee0bb47d0fee8838e18a6d8902966f734a532791f042b95df.lean/declarations/inverse-sqrt-antiderivative--7dc6e0294beadf75276695a5.md) | 21 | `result-track:7dc6e0294beadf75276695a555d4425e150d5c5564e41470917a1845a58d30f1` |
| 2 | `theorem` | [inverse_sqrt_cell_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceColumnEnvelopeMass/Variantb39a28df80d85baee0bb47d0fee8838e18a6d8902966f734a532791f042b95df.lean/declarations/inverse-sqrt-cell-integrable--ae3a28f20897ccd117a03acc.md) | 31 | `result-track:ae3a28f20897ccd117a03accaf461e12d206b00d7612eafbf80dfef754f3b7a4` |
| 3 | `theorem` | [inverse_sqrt_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceColumnEnvelopeMass/Variantb39a28df80d85baee0bb47d0fee8838e18a6d8902966f734a532791f042b95df.lean/declarations/inverse-sqrt-integral--395cf064cbb090750eb5e380.md) | 40 | `result-track:395cf064cbb090750eb5e380af503e4f5633716b7a6aecd293f42314b820f856` |
| 4 | `def` | [columnEnvelopeMass](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceColumnEnvelopeMass/Variantb39a28df80d85baee0bb47d0fee8838e18a6d8902966f734a532791f042b95df.lean/declarations/columnenvelopemass--85bc0a4df17e0aa0cde6c526.md) | 50 | `declaration-track:85bc0a4df17e0aa0cde6c526cbe2a7e03ef7b5338fe037606441929ba35c7fab` |
| 5 | `theorem` | [columnEnvelopeMass_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceColumnEnvelopeMass/Variantb39a28df80d85baee0bb47d0fee8838e18a6d8902966f734a532791f042b95df.lean/declarations/columnenvelopemass-le--c486c2977359501ee0eaa44f.md) | 57 | `result-track:c486c2977359501ee0eaa44f5c42135e1566eb7219568f23acb027151eae15e2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
