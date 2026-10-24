# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.IntMu.Variant535b984080f6af110e5459a82ad1868a82599e89982853aad05ceb68d924c95b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "45a2c5160e9cf8b6b0e5e6ce4ab2189871d8305d",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/IntMu/Variant535b984080f6af110e5459a82ad1868a82599e89982853aad05ceb68d924c95b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IntMu/Variant535b984080f6af110e5459a82ad1868a82599e89982853aad05ceb68d924c95b.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IntMu/Variant535b984080f6af110e5459a82ad1868a82599e89982853aad05ceb68d924c95b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `45a2c5160e9cf8b6b0e5e6ce4ab2189871d8305d`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/IntMu/Variant535b984080f6af110e5459a82ad1868a82599e89982853aad05ceb68d924c95b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/IntMu/Variant535b984080f6af110e5459a82ad1868a82599e89982853aad05ceb68d924c95b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.GammaFacts.Mu` — import line 18; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [StirlingHyp](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IntMu/Variant535b984080f6af110e5459a82ad1868a82599e89982853aad05ceb68d924c95b.lean/declarations/stirlinghyp--b27bd7689631b978ae92eebe.md) | 32 | `declaration-track:b27bd7689631b978ae92eebe5396cf68c332f40a3c4b04e01575af3099e2f4a6` |
| 2 | `lemma` | [integral_main_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IntMu/Variant535b984080f6af110e5459a82ad1868a82599e89982853aad05ceb68d924c95b.lean/declarations/integral-main-eq--7d1849b3a49f588bfcceb7ba.md) | 36 | `result-track:7d1849b3a49f588bfcceb7ba6d9b7725ede3f21b0024ba993e9ac9bad7f57534` |
| 3 | `theorem` | [int_mu_of_stirling](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IntMu/Variant535b984080f6af110e5459a82ad1868a82599e89982853aad05ceb68d924c95b.lean/declarations/int-mu-of-stirling--83901771c5befecd47d56a71.md) | 93 | `result-track:83901771c5befecd47d56a71b981467f0180b9515bc4914c97c4446adb58cd06` |
| 4 | `lemma` | [integral_main_sq_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IntMu/Variant535b984080f6af110e5459a82ad1868a82599e89982853aad05ceb68d924c95b.lean/declarations/integral-main-sq-eq--d2c3e7075bcb4190421876cf.md) | 177 | `result-track:d2c3e7075bcb4190421876cfd143bd8c40dbf4148ce28b6a0b4dba8b3dfd9813` |
| 5 | `theorem` | [int_mu_sq_of_stirling](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IntMu/Variant535b984080f6af110e5459a82ad1868a82599e89982853aad05ceb68d924c95b.lean/declarations/int-mu-sq-of-stirling--5ac580b76f0aa755c7f180ed.md) | 235 | `result-track:5ac580b76f0aa755c7f180ed632e570cab06420fbb2f416369b8f02835ec9c78` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
