# Verification target: GRWTSK.Algebra.LinearAlgebra.Finite.Varianta05274fa2865cfb31f57d0a8d04c50ba957f0cee21e48b586bb11c276d68fb3d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fa50407683fcbea00f1528afc035360641b32fec",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Finite/Varianta05274fa2865cfb31f57d0a8d04c50ba957f0cee21e48b586bb11c276d68fb3d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Finite/Varianta05274fa2865cfb31f57d0a8d04c50ba957f0cee21e48b586bb11c276d68fb3d.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Finite/Varianta05274fa2865cfb31f57d0a8d04c50ba957f0cee21e48b586bb11c276d68fb3d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fa50407683fcbea00f1528afc035360641b32fec`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Finite/Varianta05274fa2865cfb31f57d0a8d04c50ba957f0cee21e48b586bb11c276d68fb3d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Finite/Varianta05274fa2865cfb31f57d0a8d04c50ba957f0cee21e48b586bb11c276d68fb3d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Module.Presentation.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.FinitePresentation` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [finite](../../../../../mathematics/Algebra/LinearAlgebra/Finite/Varianta05274fa2865cfb31f57d0a8d04c50ba957f0cee21e48b586bb11c276d68fb3d.lean/declarations/finite--16070fd58592d8e1fa2ce60d.md) | 27 | `result-track:16070fd58592d8e1fa2ce60de517e818ff75d43f5023ec99a629fb37756f22e6` |
| 2 | `lemma` | [finitePresentation](../../../../../mathematics/Algebra/LinearAlgebra/Finite/Varianta05274fa2865cfb31f57d0a8d04c50ba957f0cee21e48b586bb11c276d68fb3d.lean/declarations/finitepresentation--31d3d96dd78e1cabad004748.md) | 31 | `result-track:31d3d96dd78e1cabad0047486f9ee72439191fc1c7a606f09ea6403248ac0b99` |
| 3 | `lemma` | [finitePresentation_iff_exists_presentation](../../../../../mathematics/Algebra/LinearAlgebra/Finite/Varianta05274fa2865cfb31f57d0a8d04c50ba957f0cee21e48b586bb11c276d68fb3d.lean/declarations/finitepresentation-iff-exists-presentation--e3bde3d5da4569d6d5e01717.md) | 39 | `result-track:e3bde3d5da4569d6d5e01717539084bbdd7d82aa1c007c467df5381b94586b1e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
