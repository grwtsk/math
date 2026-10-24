# Verification target: GRWTSK.Algebra.Groebner.Variante8d4bab2cf5d3f4e9c5c7434bb8fc9b46b0d856436fa08e469fd99c407318215

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c277c6559603bf15f1e146c5a111c4c8b0ceb4b3",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Groebner/Variante8d4bab2cf5d3f4e9c5c7434bb8fc9b46b0d856436fa08e469fd99c407318215.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Groebner/Variante8d4bab2cf5d3f4e9c5c7434bb8fc9b46b0d856436fa08e469fd99c407318215.lean/index.md) · [Full source](../../../../mathematics/Algebra/Groebner/Variante8d4bab2cf5d3f4e9c5c7434bb8fc9b46b0d856436fa08e469fd99c407318215.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c277c6559603bf15f1e146c5a111c4c8b0ceb4b3`.

Source path: `GRWTSK/Algebra/Groebner/Variante8d4bab2cf5d3f4e9c5c7434bb8fc9b46b0d856436fa08e469fd99c407318215.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Groebner/Variante8d4bab2cf5d3f4e9c5c7434bb8fc9b46b0d856436fa08e469fd99c407318215.lean.json)

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
| 1 | `def` | [subLTerm](../../../../mathematics/Algebra/Groebner/Variante8d4bab2cf5d3f4e9c5c7434bb8fc9b46b0d856436fa08e469fd99c407318215.lean/declarations/sublterm--c119623c1b625a94f7951c0b.md) | 69 | `declaration-track:c119623c1b625a94f7951c0b2d356abac046cc5c9aa6e1ee66ef6f691a1ab9a2` |
| 2 | `theorem` | [degree_sub_LTerm_le](../../../../mathematics/Algebra/Groebner/Variante8d4bab2cf5d3f4e9c5c7434bb8fc9b46b0d856436fa08e469fd99c407318215.lean/declarations/degree-sub-lterm-le--eb27eebe0c4fe32f5c40d82d.md) | 72 | `result-track:eb27eebe0c4fe32f5c40d82d581821f85b2feb68c18bbe1a44b75b69a3e16dd9` |
| 3 | `theorem` | [degree_sub_LTerm_lt](../../../../mathematics/Algebra/Groebner/Variante8d4bab2cf5d3f4e9c5c7434bb8fc9b46b0d856436fa08e469fd99c407318215.lean/declarations/degree-sub-lterm-lt--76b63d4b5c7ef1dd8320376d.md) | 78 | `result-track:76b63d4b5c7ef1dd8320376d157e3d4645730e0e737280f24cd603eeb084a50b` |
| 4 | `def` | [reduce](../../../../mathematics/Algebra/Groebner/Variante8d4bab2cf5d3f4e9c5c7434bb8fc9b46b0d856436fa08e469fd99c407318215.lean/declarations/reduce--7cf0d275fa43e2703b441688.md) | 96 | `declaration-track:7cf0d275fa43e2703b4416882a1dd591e6ef467305de202513a93c26e751945d` |
| 5 | `theorem` | [degree_reduce_lt](../../../../mathematics/Algebra/Groebner/Variante8d4bab2cf5d3f4e9c5c7434bb8fc9b46b0d856436fa08e469fd99c407318215.lean/declarations/degree-reduce-lt--33bdd1a4c232cbe084cd97e5.md) | 100 | `result-track:33bdd1a4c232cbe084cd97e51ef830caf7d12d68292346ac702cb27e3a896a12` |
| 6 | `theorem` | [div](../../../../mathematics/Algebra/Groebner/Variante8d4bab2cf5d3f4e9c5c7434bb8fc9b46b0d856436fa08e469fd99c407318215.lean/declarations/div--cef646683268eb9c36cb5e23.md) | 136 | `result-track:cef646683268eb9c36cb5e23ad13448078419b3eae9c117e22e6f173f056dc09` |
| 7 | `theorem` | [div_set](../../../../mathematics/Algebra/Groebner/Variante8d4bab2cf5d3f4e9c5c7434bb8fc9b46b0d856436fa08e469fd99c407318215.lean/declarations/div-set--ec87ab6884e6feac3d137ac7.md) | 239 | `result-track:ec87ab6884e6feac3d137ac717876fb78aa10616e1cae3b0cc27f21c03a498a5` |
| 8 | `theorem` | [div_single](../../../../mathematics/Algebra/Groebner/Variante8d4bab2cf5d3f4e9c5c7434bb8fc9b46b0d856436fa08e469fd99c407318215.lean/declarations/div-single--16368b698fb502b18ae5031d.md) | 250 | `result-track:16368b698fb502b18ae5031dda3272b033b2843563f86c5b7f729c0141d383b4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
