# Verification target: GRWTSK.Algebra.LinearAlgebra.Pi.Variant4853c7bb55e67172652d61d6ccc768c7f9170568592c7c7fbfc1a8a17881aafc

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bbd78465d2f209c3e1b69dbb565436d838941b95",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Pi/Variant4853c7bb55e67172652d61d6ccc768c7f9170568592c7c7fbfc1a8a17881aafc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variant4853c7bb55e67172652d61d6ccc768c7f9170568592c7c7fbfc1a8a17881aafc.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variant4853c7bb55e67172652d61d6ccc768c7f9170568592c7c7fbfc1a8a17881aafc.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bbd78465d2f209c3e1b69dbb565436d838941b95`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Pi/Variant4853c7bb55e67172652d61d6ccc768c7f9170568592c7c7fbfc1a8a17881aafc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Pi/Variant4853c7bb55e67172652d61d6ccc768c7f9170568592c7c7fbfc1a8a17881aafc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Eigenspace.Triangularizable` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [mem_iInf_maxGenEigenspace_iff](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variant4853c7bb55e67172652d61d6ccc768c7f9170568592c7c7fbfc1a8a17881aafc.lean/declarations/mem-iinf-maxgeneigenspace-iff--d430ea468587906651f1a7eb.md) | 34 | `result-track:d430ea468587906651f1a7eb346dfd228ec4d26082585deaaec5111f394287cd` |
| 2 | `lemma` | [_root_.Submodule.inf_iInf_maxGenEigenspace_of_forall_mapsTo](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variant4853c7bb55e67172652d61d6ccc768c7f9170568592c7c7fbfc1a8a17881aafc.lean/declarations/root-submodule-inf-iinf-maxgeneigenspace-of-forall-mapsto--2a480312040ee1acd4f2b376.md) | 42 | `result-track:2a480312040ee1acd4f2b37668e8280bca4a8d9b814963bb9873a0b4be23f1f6` |
| 3 | `lemma` | [iInf_maxGenEigenspace_restrict_map_subtype_eq](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variant4853c7bb55e67172652d61d6ccc768c7f9170568592c7c7fbfc1a8a17881aafc.lean/declarations/iinf-maxgeneigenspace-restrict-map-subtype-eq--b8dadd4a9ffc978967bd54a5.md) | 54 | `result-track:b8dadd4a9ffc978967bd54a5a3cf248ef9625889a6606aea2d3094ba20927934` |
| 4 | `lemma` | [disjoint_iInf_maxGenEigenspace](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variant4853c7bb55e67172652d61d6ccc768c7f9170568592c7c7fbfc1a8a17881aafc.lean/declarations/disjoint-iinf-maxgeneigenspace--fbbd8a6cc642348cf0c8e437.md) | 73 | `result-track:fbbd8a6cc642348cf0c8e437c675999614dac3a711bb26104dcfe352ddc3aab5` |
| 5 | `lemma` | [injOn_iInf_maxGenEigenspace](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variant4853c7bb55e67172652d61d6ccc768c7f9170568592c7c7fbfc1a8a17881aafc.lean/declarations/injon-iinf-maxgeneigenspace--f1b91861b129edb74e40528d.md) | 78 | `result-track:f1b91861b129edb74e40528d2ef449e2abb7ef0c9b646367e76c5f1bef3a60e5` |
| 6 | `lemma` | [independent_iInf_maxGenEigenspace_of_forall_mapsTo](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variant4853c7bb55e67172652d61d6ccc768c7f9170568592c7c7fbfc1a8a17881aafc.lean/declarations/independent-iinf-maxgeneigenspace-of-forall-mapsto--42280854c6253333b7a57290.md) | 86 | `result-track:42280854c6253333b7a57290d2c8c5a885653e65deeeef7552dba92de151adab` |
| 7 | `lemma` | [iSup_iInf_maxGenEigenspace_eq_top_of_forall_mapsTo](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variant4853c7bb55e67172652d61d6ccc768c7f9170568592c7c7fbfc1a8a17881aafc.lean/declarations/isup-iinf-maxgeneigenspace-eq-top-of-forall-mapsto--0f0e7813d61357445d17a2ca.md) | 146 | `result-track:0f0e7813d61357445d17a2ca7573a92264c5e79bb9c9ad92a0f2ee4c26a36d62` |
| 8 | `theorem` | [iSup_iInf_maxGenEigenspace_eq_top_of_iSup_maxGenEigenspace_eq_top_of_commute](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variant4853c7bb55e67172652d61d6ccc768c7f9170568592c7c7fbfc1a8a17881aafc.lean/declarations/isup-iinf-maxgeneigenspace-eq-top-of-isup-maxgeneigenspace-eq-top-of-com--8b0c749612836dcb33551722.md) | 192 | `result-track:8b0c749612836dcb33551722e26ac3728f19e590d87edc7d6e36f942d7e2a77f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
