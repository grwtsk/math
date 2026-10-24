# Verification target: GRWTSK.Analysis.FunctionalAnalysis.Extension.Variantedfaa2707c607575d6758898a6ba84b1393f0f5976dd5a06a57d6d919755f350

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a3d4979779b2a9d910338af31f91bef8913be95b",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/Extension/Variantedfaa2707c607575d6758898a6ba84b1393f0f5976dd5a06a57d6d919755f350.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/FunctionalAnalysis/Extension/Variantedfaa2707c607575d6758898a6ba84b1393f0f5976dd5a06a57d6d919755f350.lean/index.md) · [Full source](../../../../../mathematics/Analysis/FunctionalAnalysis/Extension/Variantedfaa2707c607575d6758898a6ba84b1393f0f5976dd5a06a57d6d919755f350.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a3d4979779b2a9d910338af31f91bef8913be95b`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/Extension/Variantedfaa2707c607575d6758898a6ba84b1393f0f5976dd5a06a57d6d919755f350.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/Extension/Variantedfaa2707c607575d6758898a6ba84b1393f0f5976dd5a06a57d6d919755f350.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Convex.Cone.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.NormedSpace.IsROrC` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.NormedSpace.Extend` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Data.IsROrC.Lemmas` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [exists_extension_norm_eq](../../../../../mathematics/Analysis/FunctionalAnalysis/Extension/Variantedfaa2707c607575d6758898a6ba84b1393f0f5976dd5a06a57d6d919755f350.lean/declarations/exists-extension-norm-eq--6ea63ce370637457f3faace7.md) | 50 | `result-track:6ea63ce370637457f3faace73de8b51a275465d17c85fdb2260f52ec745ada88` |
| 2 | `theorem` | [exists_extension_norm_eq](../../../../../mathematics/Analysis/FunctionalAnalysis/Extension/Variantedfaa2707c607575d6758898a6ba84b1393f0f5976dd5a06a57d6d919755f350.lean/declarations/exists-extension-norm-eq--dbc8cdba5702f279d2879068.md) | 77 | `result-track:dbc8cdba5702f279d2879068ad5e89847c2ae9899e413b79a7c5ad387547848b` |
| 3 | `theorem` | [coord_norm'](../../../../../mathematics/Analysis/FunctionalAnalysis/Extension/Variantedfaa2707c607575d6758898a6ba84b1393f0f5976dd5a06a57d6d919755f350.lean/declarations/coord-norm--155b42534c00125ab077e618.md) | 125 | `result-track:155b42534c00125ab077e618aaf993859618e6a5ba5b781ae5e7c87741dce605` |
| 4 | `theorem` | [exists_dual_vector](../../../../../mathematics/Analysis/FunctionalAnalysis/Extension/Variantedfaa2707c607575d6758898a6ba84b1393f0f5976dd5a06a57d6d919755f350.lean/declarations/exists-dual-vector--2bda1db5c24a2329b6134310.md) | 132 | `result-track:2bda1db5c24a2329b61343106e2d6e345c05c0e8324d7b42153d656e19ebf688` |
| 5 | `theorem` | [exists_dual_vector'](../../../../../mathematics/Analysis/FunctionalAnalysis/Extension/Variantedfaa2707c607575d6758898a6ba84b1393f0f5976dd5a06a57d6d919755f350.lean/declarations/exists-dual-vector--85340baa6cc1b0091c6ff71b.md) | 146 | `result-track:85340baa6cc1b0091c6ff71b8675057890b8943e9f02081e43ef5d0069ed162f` |
| 6 | `theorem` | [exists_dual_vector''](../../../../../mathematics/Analysis/FunctionalAnalysis/Extension/Variantedfaa2707c607575d6758898a6ba84b1393f0f5976dd5a06a57d6d919755f350.lean/declarations/exists-dual-vector--f62ee6f056d8ac293968c751.md) | 158 | `result-track:f62ee6f056d8ac293968c751c065dd181a4f0bc770190bfe48e995333749b9d7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
