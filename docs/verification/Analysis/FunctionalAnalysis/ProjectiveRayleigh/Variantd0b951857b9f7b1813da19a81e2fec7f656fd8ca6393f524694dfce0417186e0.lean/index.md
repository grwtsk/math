# Verification target: GRWTSK.Analysis.FunctionalAnalysis.ProjectiveRayleigh.Variantd0b951857b9f7b1813da19a81e2fec7f656fd8ca6393f524694dfce0417186e0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fc7d155cbff28a8fbcac7bb89c7958c792bb0e6f",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/ProjectiveRayleigh/Variantd0b951857b9f7b1813da19a81e2fec7f656fd8ca6393f524694dfce0417186e0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/FunctionalAnalysis/ProjectiveRayleigh/Variantd0b951857b9f7b1813da19a81e2fec7f656fd8ca6393f524694dfce0417186e0.lean/index.md) · [Full source](../../../../../mathematics/Analysis/FunctionalAnalysis/ProjectiveRayleigh/Variantd0b951857b9f7b1813da19a81e2fec7f656fd8ca6393f524694dfce0417186e0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fc7d155cbff28a8fbcac7bb89c7958c792bb0e6f`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/ProjectiveRayleigh/Variantd0b951857b9f7b1813da19a81e2fec7f656fd8ca6393f524694dfce0417186e0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/ProjectiveRayleigh/Variantd0b951857b9f7b1813da19a81e2fec7f656fd8ca6393f524694dfce0417186e0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [rayleighQuotientBase](../../../../../mathematics/Analysis/FunctionalAnalysis/ProjectiveRayleigh/Variantd0b951857b9f7b1813da19a81e2fec7f656fd8ca6393f524694dfce0417186e0.lean/declarations/rayleighquotientbase--d7311c9472e67dd061815fae.md) | 50 | `declaration-track:d7311c9472e67dd061815faea81318e51f5a4c1dace5733c09affb800106b931` |
| 2 | `theorem` | [rayleighQuotientBase_eq](../../../../../mathematics/Analysis/FunctionalAnalysis/ProjectiveRayleigh/Variantd0b951857b9f7b1813da19a81e2fec7f656fd8ca6393f524694dfce0417186e0.lean/declarations/rayleighquotientbase-eq--91c49d2ce088b381e80ab9f8.md) | 57 | `result-track:91c49d2ce088b381e80ab9f8acf2ad55b1eba65e12f182c603cd8ecbe3652a55` |
| 3 | `theorem` | [rayleighQuotientBase_eq_mathlib](../../../../../mathematics/Analysis/FunctionalAnalysis/ProjectiveRayleigh/Variantd0b951857b9f7b1813da19a81e2fec7f656fd8ca6393f524694dfce0417186e0.lean/declarations/rayleighquotientbase-eq-mathlib--640389763a4b50a77789130e.md) | 63 | `result-track:640389763a4b50a77789130eb64119a4de8a57f94d1247ccc811277389254e68` |
| 4 | `theorem` | [rayleighQuotientBase_smul](../../../../../mathematics/Analysis/FunctionalAnalysis/ProjectiveRayleigh/Variantd0b951857b9f7b1813da19a81e2fec7f656fd8ca6393f524694dfce0417186e0.lean/declarations/rayleighquotientbase-smul--d7c34f8dd4cef97ab7320daa.md) | 70 | `result-track:d7c34f8dd4cef97ab7320daa5f6b41e1db4c850d5b0744ef93dc1943462ff1e0` |
| 5 | `def` | [projectiveRayleighQuotient](../../../../../mathematics/Analysis/FunctionalAnalysis/ProjectiveRayleigh/Variantd0b951857b9f7b1813da19a81e2fec7f656fd8ca6393f524694dfce0417186e0.lean/declarations/projectiverayleighquotient--0d9d4f9afb40bdc74dbf01ff.md) | 82 | `declaration-track:0d9d4f9afb40bdc74dbf01ffd988acdd3ed1b8fd04e29f57d260ef1a038330e4` |
| 6 | `theorem` | [projectiveRayleighQuotient_mk](../../../../../mathematics/Analysis/FunctionalAnalysis/ProjectiveRayleigh/Variantd0b951857b9f7b1813da19a81e2fec7f656fd8ca6393f524694dfce0417186e0.lean/declarations/projectiverayleighquotient-mk--07f49d83fc00892c410bc907.md) | 97 | `result-track:07f49d83fc00892c410bc9074a22cce0d74ccd2a10880dd7e2b827036c86dfe3` |
| 7 | `theorem` | [projectiveRayleighQuotient_eq_of_mk_eq_mk](../../../../../mathematics/Analysis/FunctionalAnalysis/ProjectiveRayleigh/Variantd0b951857b9f7b1813da19a81e2fec7f656fd8ca6393f524694dfce0417186e0.lean/declarations/projectiverayleighquotient-eq-of-mk-eq-mk--fb850aad9e654f4fb76c8c6a.md) | 104 | `result-track:fb850aad9e654f4fb76c8c6a033b2ae7765a4c92efd1dd2ab4da44bfc64cad7f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
