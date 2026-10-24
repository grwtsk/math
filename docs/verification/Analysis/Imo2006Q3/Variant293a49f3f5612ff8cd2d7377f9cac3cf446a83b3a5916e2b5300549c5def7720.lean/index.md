# Verification target: GRWTSK.Analysis.Imo2006Q3.Variant293a49f3f5612ff8cd2d7377f9cac3cf446a83b3a5916e2b5300549c5def7720

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0a0137e8771908edf92d3ab5a611b1430eacd35c",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Imo2006Q3/Variant293a49f3f5612ff8cd2d7377f9cac3cf446a83b3a5916e2b5300549c5def7720.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/Imo2006Q3/Variant293a49f3f5612ff8cd2d7377f9cac3cf446a83b3a5916e2b5300549c5def7720.lean/index.md) · [Full source](../../../../mathematics/Analysis/Imo2006Q3/Variant293a49f3f5612ff8cd2d7377f9cac3cf446a83b3a5916e2b5300549c5def7720.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0a0137e8771908edf92d3ab5a611b1430eacd35c`.

Source path: `GRWTSK/Analysis/Imo2006Q3/Variant293a49f3f5612ff8cd2d7377f9cac3cf446a83b3a5916e2b5300549c5def7720.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Imo2006Q3/Variant293a49f3f5612ff8cd2d7377f9cac3cf446a83b3a5916e2b5300549c5def7720.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Sqrt` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Polyrith` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [lhs_ineq](../../../../mathematics/Analysis/Imo2006Q3/Variant293a49f3f5612ff8cd2d7377f9cac3cf446a83b3a5916e2b5300549c5def7720.lean/declarations/lhs-ineq--88862b974216831ce32139c2.md) | 36 | `result-track:88862b974216831ce32139c22a04934b54b973c77f73e0f8c35148fdadb1ff07` |
| 2 | `theorem` | [four_pow_four_pos](../../../../mathematics/Analysis/Imo2006Q3/Variant293a49f3f5612ff8cd2d7377f9cac3cf446a83b3a5916e2b5300549c5def7720.lean/declarations/four-pow-four-pos--71396b3f625f58afd07e4c64.md) | 42 | `result-track:71396b3f625f58afd07e4c64691109dda49ca86ce28f6301a601537af24a97ef` |
| 3 | `theorem` | [mid_ineq](../../../../mathematics/Analysis/Imo2006Q3/Variant293a49f3f5612ff8cd2d7377f9cac3cf446a83b3a5916e2b5300549c5def7720.lean/declarations/mid-ineq--97b6730c82eef8592fc3c6fc.md) | 44 | `result-track:97b6730c82eef8592fc3c6fc0db0b0d207108cf0cc2e7972e17920f3256b4bc0` |
| 4 | `theorem` | [rhs_ineq](../../../../mathematics/Analysis/Imo2006Q3/Variant293a49f3f5612ff8cd2d7377f9cac3cf446a83b3a5916e2b5300549c5def7720.lean/declarations/rhs-ineq--cbc8b5413aa5582a26bd4b5f.md) | 50 | `result-track:cbc8b5413aa5582a26bd4b5f67545e8a743853b34457509af226c98608133522` |
| 5 | `theorem` | [zero_lt_32](../../../../mathematics/Analysis/Imo2006Q3/Variant293a49f3f5612ff8cd2d7377f9cac3cf446a83b3a5916e2b5300549c5def7720.lean/declarations/zero-lt-32--26aea31d5d4040354ab6e748.md) | 54 | `result-track:26aea31d5d4040354ab6e748fa0a4e3c3b66edd704929de116b36ab6102722a9` |
| 6 | `theorem` | [subst_wlog](../../../../mathematics/Analysis/Imo2006Q3/Variant293a49f3f5612ff8cd2d7377f9cac3cf446a83b3a5916e2b5300549c5def7720.lean/declarations/subst-wlog--0f379a6c2fcd2d20a298c5b9.md) | 56 | `result-track:0f379a6c2fcd2d20a298c5b92176618e4f00e7b69de5f07acb3d8304cc5eedee` |
| 7 | `theorem` | [subst_proof₁](../../../../mathematics/Analysis/Imo2006Q3/Variant293a49f3f5612ff8cd2d7377f9cac3cf446a83b3a5916e2b5300549c5def7720.lean/declarations/subst-proof--a4f9d9717385253a60f7b754.md) | 78 | `result-track:a4f9d9717385253a60f7b75432727c07c2c6390c4b485cf95b80c1c3d43cf36f` |
| 8 | `theorem` | [proof₁](../../../../mathematics/Analysis/Imo2006Q3/Variant293a49f3f5612ff8cd2d7377f9cac3cf446a83b3a5916e2b5300549c5def7720.lean/declarations/proof--625d08176c1077b5f92f0a24.md) | 87 | `result-track:625d08176c1077b5f92f0a2441d61af89f0ef436d5a17c7c627f4851ae50fb71` |
| 9 | `theorem` | [proof₂](../../../../mathematics/Analysis/Imo2006Q3/Variant293a49f3f5612ff8cd2d7377f9cac3cf446a83b3a5916e2b5300549c5def7720.lean/declarations/proof--8bf8f456492958a3f26a8867.md) | 95 | `result-track:8bf8f456492958a3f26a8867ad58987c476553996458d43afd2ef98490f6c099` |
| 10 | `theorem` | [imo2006_q3](../../../../mathematics/Analysis/Imo2006Q3/Variant293a49f3f5612ff8cd2d7377f9cac3cf446a83b3a5916e2b5300549c5def7720.lean/declarations/imo2006-q3--7155290c86206922a6c710b5.md) | 118 | `result-track:7155290c86206922a6c710b59d581a581f19f24124e26785ff8c808ee3b47eab` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
