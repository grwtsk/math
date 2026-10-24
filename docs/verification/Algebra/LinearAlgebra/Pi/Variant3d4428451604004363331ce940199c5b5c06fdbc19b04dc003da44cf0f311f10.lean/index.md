# Verification target: GRWTSK.Algebra.LinearAlgebra.Pi.Variant3d4428451604004363331ce940199c5b5c06fdbc19b04dc003da44cf0f311f10

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9289ca1c15ece3d2ed9ad1a2a87a4e8107b1a844",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Pi/Variant3d4428451604004363331ce940199c5b5c06fdbc19b04dc003da44cf0f311f10.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variant3d4428451604004363331ce940199c5b5c06fdbc19b04dc003da44cf0f311f10.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variant3d4428451604004363331ce940199c5b5c06fdbc19b04dc003da44cf0f311f10.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9289ca1c15ece3d2ed9ad1a2a87a4e8107b1a844`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Pi/Variant3d4428451604004363331ce940199c5b5c06fdbc19b04dc003da44cf0f311f10.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Pi/Variant3d4428451604004363331ce940199c5b5c06fdbc19b04dc003da44cf0f311f10.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Eigenspace.Triangularizable` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [mem_iInf_maxGenEigenspace_iff](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variant3d4428451604004363331ce940199c5b5c06fdbc19b04dc003da44cf0f311f10.lean/declarations/mem-iinf-maxgeneigenspace-iff--b98492261d60cecf86eba243.md) | 42 | `result-track:b98492261d60cecf86eba24391578b13933ab32ac99441564d44db0bf833dca6` |
| 2 | `lemma` | [_root_.GRWTSK.Algebra.LinearAlgebra.MemIInfMaxGenEigenspaceIff.Variant4853c7bb55e67172652d61d6ccc768c7f9170568592c7c7fbfc1a8a17881aafc.Submodule.inf_iInf_maxGenEigenspace_of_forall_mapsTo](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variant3d4428451604004363331ce940199c5b5c06fdbc19b04dc003da44cf0f311f10.lean/declarations/root-grwtsk-algebra-linearalgebra-memiinfmaxgeneigenspaceiff-variant4853--15c2a5912a9ed464febd3b03.md) | 50 | `result-track:15c2a5912a9ed464febd3b03bd346ebe0439eb81f5e967f05c1f00200722fcb2` |
| 3 | `lemma` | [iInf_maxGenEigenspace_restrict_map_subtype_eq](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variant3d4428451604004363331ce940199c5b5c06fdbc19b04dc003da44cf0f311f10.lean/declarations/iinf-maxgeneigenspace-restrict-map-subtype-eq--da8d46864fbde1a5e4b02dee.md) | 62 | `result-track:da8d46864fbde1a5e4b02dee66089ebabaf63772df02e3b894fe7181d74c6474` |
| 4 | `lemma` | [disjoint_iInf_maxGenEigenspace](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variant3d4428451604004363331ce940199c5b5c06fdbc19b04dc003da44cf0f311f10.lean/declarations/disjoint-iinf-maxgeneigenspace--6967318892fdcaba1274f02f.md) | 81 | `result-track:6967318892fdcaba1274f02fee0ee65cad87cee92edb4264deebbd92127cb3d8` |
| 5 | `lemma` | [injOn_iInf_maxGenEigenspace](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variant3d4428451604004363331ce940199c5b5c06fdbc19b04dc003da44cf0f311f10.lean/declarations/injon-iinf-maxgeneigenspace--cc522bad9ecdf769b79aba52.md) | 86 | `result-track:cc522bad9ecdf769b79aba52c8159d03ae68b08cd40b7091204733aa731a8f88` |
| 6 | `lemma` | [independent_iInf_maxGenEigenspace_of_forall_mapsTo](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variant3d4428451604004363331ce940199c5b5c06fdbc19b04dc003da44cf0f311f10.lean/declarations/independent-iinf-maxgeneigenspace-of-forall-mapsto--e8960a62e39a991ca183557d.md) | 94 | `result-track:e8960a62e39a991ca183557dfa957af4c2dfdd489834fbd68f84ed04c9bc9025` |
| 7 | `lemma` | [iSup_iInf_maxGenEigenspace_eq_top_of_forall_mapsTo](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variant3d4428451604004363331ce940199c5b5c06fdbc19b04dc003da44cf0f311f10.lean/declarations/isup-iinf-maxgeneigenspace-eq-top-of-forall-mapsto--d3d514dc3a7370dd8ece2ba3.md) | 154 | `result-track:d3d514dc3a7370dd8ece2ba3a94a5253f13a851349a30d2425969c424045b4a6` |
| 8 | `theorem` | [iSup_iInf_maxGenEigenspace_eq_top_of_iSup_maxGenEigenspace_eq_top_of_commute](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variant3d4428451604004363331ce940199c5b5c06fdbc19b04dc003da44cf0f311f10.lean/declarations/isup-iinf-maxgeneigenspace-eq-top-of-isup-maxgeneigenspace-eq-top-of-com--7471e0ca23cd00abe1b9b751.md) | 200 | `result-track:7471e0ca23cd00abe1b9b7513a27aa2e763351074a51b4c87794d8870a69b86a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
