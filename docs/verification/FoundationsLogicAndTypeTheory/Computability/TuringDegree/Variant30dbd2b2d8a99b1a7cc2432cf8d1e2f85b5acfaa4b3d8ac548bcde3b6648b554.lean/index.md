# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.Computability.TuringDegree.Variant30dbd2b2d8a99b1a7cc2432cf8d1e2f85b5acfaa4b3d8ac548bcde3b6648b554

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d2349dbdea9bbaff5eff43c2f1902c975a7b9fad",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/Computability/TuringDegree/Variant30dbd2b2d8a99b1a7cc2432cf8d1e2f85b5acfaa4b3d8ac548bcde3b6648b554.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TuringDegree/Variant30dbd2b2d8a99b1a7cc2432cf8d1e2f85b5acfaa4b3d8ac548bcde3b6648b554.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TuringDegree/Variant30dbd2b2d8a99b1a7cc2432cf8d1e2f85b5acfaa4b3d8ac548bcde3b6648b554.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d2349dbdea9bbaff5eff43c2f1902c975a7b9fad`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/Computability/TuringDegree/Variant30dbd2b2d8a99b1a7cc2432cf8d1e2f85b5acfaa4b3d8ac548bcde3b6648b554.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/Computability/TuringDegree/Variant30dbd2b2d8a99b1a7cc2432cf8d1e2f85b5acfaa4b3d8ac548bcde3b6648b554.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Computability.Partrec` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Antisymmetrization` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [RecursiveIn](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TuringDegree/Variant30dbd2b2d8a99b1a7cc2432cf8d1e2f85b5acfaa4b3d8ac548bcde3b6648b554.lean/declarations/recursivein--f246f3e794282c39ffed5b67.md) | 65 | `declaration-track:f246f3e794282c39ffed5b67c79cf505af7caa0eaf5f2fb27847665f89d4729f` |
| 2 | `abbrev` | [TuringReducible](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TuringDegree/Variant30dbd2b2d8a99b1a7cc2432cf8d1e2f85b5acfaa4b3d8ac548bcde3b6648b554.lean/declarations/turingreducible--c2bc02e3c81086c10a5d55be.md) | 87 | `declaration-track:c2bc02e3c81086c10a5d55beb30258ab6ef750a979ca3ddb832784857dca78f0` |
| 3 | `abbrev` | [TuringEquivalent](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TuringDegree/Variant30dbd2b2d8a99b1a7cc2432cf8d1e2f85b5acfaa4b3d8ac548bcde3b6648b554.lean/declarations/turingequivalent--588779c636d384268a96bd10.md) | 93 | `declaration-track:588779c636d384268a96bd10528a9ee37e645b92d25e5dddbc65bebfeb4ade8c` |
| 4 | `lemma` | [Nat.Partrec.turingReducible](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TuringDegree/Variant30dbd2b2d8a99b1a7cc2432cf8d1e2f85b5acfaa4b3d8ac548bcde3b6648b554.lean/declarations/nat-partrec-turingreducible--8afdbce58d1b3f6f4efe224d.md) | 104 | `result-track:8afdbce58d1b3f6f4efe224d7f14ceadabfbbf1fd94c2c80b4e5e8dc19bb1264` |
| 5 | `lemma` | [TuringReducible.partrec_of_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TuringDegree/Variant30dbd2b2d8a99b1a7cc2432cf8d1e2f85b5acfaa4b3d8ac548bcde3b6648b554.lean/declarations/turingreducible-partrec-of-zero--4c4e0395374edb7889a6200a.md) | 115 | `result-track:4c4e0395374edb7889a6200a1301bbab72a5fb54df0718dafdd5d25b2fb6f1a4` |
| 6 | `theorem` | [partrec_iff_forall_turingReducible](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TuringDegree/Variant30dbd2b2d8a99b1a7cc2432cf8d1e2f85b5acfaa4b3d8ac548bcde3b6648b554.lean/declarations/partrec-iff-forall-turingreducible--dacef2a9ea021c113bcd1705.md) | 124 | `result-track:dacef2a9ea021c113bcd1705d44556df52128e2562953361075cf56c2043eeb7` |
| 7 | `theorem` | [TuringReducible.refl](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TuringDegree/Variant30dbd2b2d8a99b1a7cc2432cf8d1e2f85b5acfaa4b3d8ac548bcde3b6648b554.lean/declarations/turingreducible-refl--2fbf64f51da3200b0e5d9da7.md) | 127 | `result-track:2fbf64f51da3200b0e5d9da7191b1bef922544c74e79eb16d4283f47ad0bc1e5` |
| 8 | `theorem` | [TuringReducible.rfl](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TuringDegree/Variant30dbd2b2d8a99b1a7cc2432cf8d1e2f85b5acfaa4b3d8ac548bcde3b6648b554.lean/declarations/turingreducible-rfl--e052ddd5bae5308379a028bd.md) | 128 | `result-track:e052ddd5bae5308379a028bdc0ce3060a05c9e7269ef6a086d206b77cdeed1f1` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TuringDegree/Variant30dbd2b2d8a99b1a7cc2432cf8d1e2f85b5acfaa4b3d8ac548bcde3b6648b554.lean/declarations/instance--609a890e3e804f867e77b4f4.md) | 130 | `declaration-track:609a890e3e804f867e77b4f4588e5518a313e866294f7f478cee232d7e0a4e3b` |
| 10 | `theorem` | [TuringReducible.trans](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TuringDegree/Variant30dbd2b2d8a99b1a7cc2432cf8d1e2f85b5acfaa4b3d8ac548bcde3b6648b554.lean/declarations/turingreducible-trans--bcf40770df106ae81f0864a3.md) | 132 | `result-track:bcf40770df106ae81f0864a3fd61bc9f913834cff7b5c138e563c78d8b4949ea` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TuringDegree/Variant30dbd2b2d8a99b1a7cc2432cf8d1e2f85b5acfaa4b3d8ac548bcde3b6648b554.lean/declarations/instance--37ff60b212581114a1827ed9.md) | 140 | `declaration-track:37ff60b212581114a1827ed964ba7a94ecb985a9831acd52646f49eb9f949046` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TuringDegree/Variant30dbd2b2d8a99b1a7cc2432cf8d1e2f85b5acfaa4b3d8ac548bcde3b6648b554.lean/declarations/instance--0ae9bac783e3c86c5121bb45.md) | 143 | `declaration-track:0ae9bac783e3c86c5121bb451717d527a1f1875494b18198c3623045bf4f9528` |
| 13 | `theorem` | [TuringEquivalent.equivalence](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TuringDegree/Variant30dbd2b2d8a99b1a7cc2432cf8d1e2f85b5acfaa4b3d8ac548bcde3b6648b554.lean/declarations/turingequivalent-equivalence--3310148439f8b63f9f361012.md) | 146 | `result-track:3310148439f8b63f9f3610124fb9b805495a1fb8b39a178909f24f1a0d527fd2` |
| 14 | `theorem` | [TuringEquivalent.refl](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TuringDegree/Variant30dbd2b2d8a99b1a7cc2432cf8d1e2f85b5acfaa4b3d8ac548bcde3b6648b554.lean/declarations/turingequivalent-refl--2c35757708fd57fb50ca17f1.md) | 150 | `result-track:2c35757708fd57fb50ca17f126f7a0118a0492d8a842e5e7a6d6dd6741eeb383` |
| 15 | `theorem` | [TuringEquivalent.symm](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TuringDegree/Variant30dbd2b2d8a99b1a7cc2432cf8d1e2f85b5acfaa4b3d8ac548bcde3b6648b554.lean/declarations/turingequivalent-symm--37984dec55b7eb3e3137e386.md) | 154 | `result-track:37984dec55b7eb3e3137e38663dd1af01eb0da1014dc5e322ced77b52f2e9413` |
| 16 | `theorem` | [TuringEquivalent.trans](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TuringDegree/Variant30dbd2b2d8a99b1a7cc2432cf8d1e2f85b5acfaa4b3d8ac548bcde3b6648b554.lean/declarations/turingequivalent-trans--3cd0a261a22521ece0e0d3b0.md) | 158 | `result-track:3cd0a261a22521ece0e0d3b0e455551751898bd6d1e6aa2b28d5301e237c0bbf` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TuringDegree/Variant30dbd2b2d8a99b1a7cc2432cf8d1e2f85b5acfaa4b3d8ac548bcde3b6648b554.lean/declarations/instance--d8e4fbcd5061a72b329deb23.md) | 164 | `declaration-track:d8e4fbcd5061a72b329deb23b08dff229aede8a168b61a7e85eba396cf56ee79` |
| 18 | `abbrev` | [TuringDegree](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TuringDegree/Variant30dbd2b2d8a99b1a7cc2432cf8d1e2f85b5acfaa4b3d8ac548bcde3b6648b554.lean/declarations/turingdegree--dcf4270a80172ad5c3695f13.md) | 171 | `declaration-track:dcf4270a80172ad5c3695f1382a53921dbea3a0d8fd8fea436e4c5ff35550a63` |
| 19 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TuringDegree/Variant30dbd2b2d8a99b1a7cc2432cf8d1e2f85b5acfaa4b3d8ac548bcde3b6648b554.lean/declarations/instance--58e4219b68392de08f47bb40.md) | 174 | `declaration-track:58e4219b68392de08f47bb40e0d70e9184fbd6b00906cea1f405953358f8f142` |
| 20 | `instance` | [TuringDegree.instPartialOrder](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TuringDegree/Variant30dbd2b2d8a99b1a7cc2432cf8d1e2f85b5acfaa4b3d8ac548bcde3b6648b554.lean/declarations/turingdegree-instpartialorder--c915c68f466dec7c9d0521a0.md) | 179 | `declaration-track:c915c68f466dec7c9d0521a03bdc3f7e4bbae864beac34b38d35c53043a60878` |
| 21 | `lemma` | [recursiveIn_empty_iff_partrec](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TuringDegree/Variant30dbd2b2d8a99b1a7cc2432cf8d1e2f85b5acfaa4b3d8ac548bcde3b6648b554.lean/declarations/recursivein-empty-iff-partrec--f41ebf7e1e8344845892aa72.md) | 182 | `result-track:f41ebf7e1e8344845892aa72f081a341ad66bfdc3c58609cb3a5b6c2e3535797` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
