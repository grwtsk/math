# Verification target: GRWTSK.Algebra.Congr.Variant74556b87843b03336e1d4d5584c5c946ece823983408273ccce9fddb72189dd1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e6d5be578c9763c68961d7bd42d742caba3369a4",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Congr/Variant74556b87843b03336e1d4d5584c5c946ece823983408273ccce9fddb72189dd1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Congr/Variant74556b87843b03336e1d4d5584c5c946ece823983408273ccce9fddb72189dd1.lean/index.md) · [Full source](../../../../mathematics/Algebra/Congr/Variant74556b87843b03336e1d4d5584c5c946ece823983408273ccce9fddb72189dd1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e6d5be578c9763c68961d7bd42d742caba3369a4`.

Source path: `GRWTSK/Algebra/Congr/Variant74556b87843b03336e1d4d5584c5c946ece823983408273ccce9fddb72189dd1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Congr/Variant74556b87843b03336e1d4d5584c5c946ece823983408273ccce9fddb72189dd1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.SimpleRing.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.TwoSidedIdeal.Operations` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [of_surjective](../../../../mathematics/Algebra/Congr/Variant74556b87843b03336e1d4d5584c5c946ece823983408273ccce9fddb72189dd1.lean/declarations/of-surjective--4b1c2856fc0d22def8c3d235.md) | 20 | `result-track:4b1c2856fc0d22def8c3d23556f9dd9553a99376f5e32af118a194afb206f042` |
| 2 | `lemma` | [of_ringEquiv](../../../../mathematics/Algebra/Congr/Variant74556b87843b03336e1d4d5584c5c946ece823983408273ccce9fddb72189dd1.lean/declarations/of-ringequiv--aea2a572059a0a6675f95440.md) | 25 | `result-track:aea2a572059a0a6675f95440e75276672a2520d305571b1e4fcebd7df4e9bf53` |
| 3 | `theorem` | [isSimpleRing_iff_isTwoSided_imp](../../../../mathematics/Algebra/Congr/Variant74556b87843b03336e1d4d5584c5c946ece823983408273ccce9fddb72189dd1.lean/declarations/issimplering-iff-istwosided-imp--a8e7ec8fb878aef549e90c79.md) | 32 | `result-track:a8e7ec8fb878aef549e90c79fd15de685bb732caff9083e6ff462146d1acdb8a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
