# Verification target: GRWTSK.Algebra.LinearAlgebra.Basic.Variantb500df692073651e58c01849750205507655074e071a728198a19db5ba4b00ce

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5db080d44568aba8ce9bb41b2abca26779b39f28",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variantb500df692073651e58c01849750205507655074e071a728198a19db5ba4b00ce.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantb500df692073651e58c01849750205507655074e071a728198a19db5ba4b00ce.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantb500df692073651e58c01849750205507655074e071a728198a19db5ba4b00ce.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5db080d44568aba8ce9bb41b2abca26779b39f28`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Basic/Variantb500df692073651e58c01849750205507655074e071a728198a19db5ba4b00ce.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Basic/Variantb500df692073651e58c01849750205507655074e071a728198a19db5ba4b00ce.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Algebra.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.ULift` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finsupp.Fintype` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Basis.Basic` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Small.Basic` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [Free](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantb500df692073651e58c01849750205507655074e071a728198a19db5ba4b00ce.lean/declarations/free--1dab3643339c9dfda065e87e.md) | 38 | `declaration-track:1dab3643339c9dfda065e87e1dbbef3be9f3e745d23faa152f6d0566fb29cdc2` |
| 2 | `lemma` | [Free.exists_set](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantb500df692073651e58c01849750205507655074e071a728198a19db5ba4b00ce.lean/declarations/free-exists-set--8c2f243993a954934f4b8bfd.md) | 41 | `result-track:8c2f243993a954934f4b8bfd376d2a9d99a9d3fc563c8bf2845f28030d75bee5` |
| 3 | `theorem` | [free_iff_set](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantb500df692073651e58c01849750205507655074e071a728198a19db5ba4b00ce.lean/declarations/free-iff-set--3f216727eb7c71f1de6b4dcc.md) | 44 | `result-track:3f216727eb7c71f1de6b4dccaeba50c72f214c90728ed470ac128ea124581869` |
| 4 | `theorem` | [free_def](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantb500df692073651e58c01849750205507655074e071a728198a19db5ba4b00ce.lean/declarations/free-def--b4183f888ba349ff55982580.md) | 52 | `result-track:b4183f888ba349ff55982580f079348f55e33a9baeaf230a741ed07e2cbc3d25` |
| 5 | `theorem` | [Free.of_basis](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantb500df692073651e58c01849750205507655074e071a728198a19db5ba4b00ce.lean/declarations/free-of-basis--5b692dfa0c05738cc02e136b.md) | 60 | `result-track:5b692dfa0c05738cc02e136ba3c24640ed231229bd9c62d11f6505992dbf9a9b` |
| 6 | `def` | [ChooseBasisIndex](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantb500df692073651e58c01849750205507655074e071a728198a19db5ba4b00ce.lean/declarations/choosebasisindex--5eb0c295dc985a2cfff1f626.md) | 74 | `declaration-track:5eb0c295dc985a2cfff1f626eebf570e5ad0c84d6d9e9a2205c092e50ee284e0` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantb500df692073651e58c01849750205507655074e071a728198a19db5ba4b00ce.lean/declarations/instance--c279e217056c96e9f040b3ab.md) | 79 | `declaration-track:c279e217056c96e9f040b3abd0a27161819826d1e33458f7d2d9a42e7724606b` |
| 8 | `def` | [chooseBasis](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantb500df692073651e58c01849750205507655074e071a728198a19db5ba4b00ce.lean/declarations/choosebasis--861fa1ab57ea8ab986aac8ba.md) | 83 | `declaration-track:861fa1ab57ea8ab986aac8bae711610d719a97f98101395d8fa5e4a82135a6d2` |
| 9 | `def` | [repr](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantb500df692073651e58c01849750205507655074e071a728198a19db5ba4b00ce.lean/declarations/repr--20ae6919e151e3a3af1b77bf.md) | 87 | `declaration-track:20ae6919e151e3a3af1b77bff03c1225c839591c69124d5095119eca64a15c9b` |
| 10 | `def` | [constr](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantb500df692073651e58c01849750205507655074e071a728198a19db5ba4b00ce.lean/declarations/constr--7a95e4bd1eb6a9ab86505ab4.md) | 98 | `declaration-track:7a95e4bd1eb6a9ab86505ab45a90fe610e19fd783a2a830c3a15f6e5461b816e` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantb500df692073651e58c01849750205507655074e071a728198a19db5ba4b00ce.lean/declarations/instance--8329051c3d9e0f3767d5da5b.md) | 102 | `declaration-track:8329051c3d9e0f3767d5da5b8312d466c170b0ebcbd0126e4314835181d15fef` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantb500df692073651e58c01849750205507655074e071a728198a19db5ba4b00ce.lean/declarations/instance--0ded1930b376630c09846ecd.md) | 106 | `declaration-track:0ded1930b376630c09846ecd70d9f1cdb07d325197baf7cdf2153e814828f122` |
| 13 | `theorem` | [infinite](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantb500df692073651e58c01849750205507655074e071a728198a19db5ba4b00ce.lean/declarations/infinite--ac54e3825b9767327b429f12.md) | 109 | `result-track:ac54e3825b9767327b429f12bf3bfdd18da4620ea61093427f864427bfe8a1ae` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantb500df692073651e58c01849750205507655074e071a728198a19db5ba4b00ce.lean/declarations/instance--abf4b53f010d53064121a0fb.md) | 112 | `declaration-track:abf4b53f010d53064121a0fb9055012dab38f37559ce1c9c9f83d73814d1d5eb` |
| 15 | `theorem` | [of_equiv](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantb500df692073651e58c01849750205507655074e071a728198a19db5ba4b00ce.lean/declarations/of-equiv--9d7a185134f58af0dd2df872.md) | 117 | `result-track:9d7a185134f58af0dd2df872111551019f191a709ced47af5aa47a944ef07b54` |
| 16 | `theorem` | [of_equiv'](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantb500df692073651e58c01849750205507655074e071a728198a19db5ba4b00ce.lean/declarations/of-equiv--a71cd7e5592d3d24f7a85bd7.md) | 122 | `result-track:a71cd7e5592d3d24f7a85bd7a0c0b01272c53dbfef1ca01c4dee1df7d8de63b1` |
| 17 | `lemma` | [of_ringEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantb500df692073651e58c01849750205507655074e071a728198a19db5ba4b00ce.lean/declarations/of-ringequiv--192715cddfb9bc694b833aa5.md) | 127 | `result-track:192715cddfb9bc694b833aa5e09e30a7d37f96e77541a033b2649e13bb313e0f` |
| 18 | `lemma` | [iff_of_ringEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantb500df692073651e58c01849750205507655074e071a728198a19db5ba4b00ce.lean/declarations/iff-of-ringequiv--21def83ed33b21207e32d8a5.md) | 141 | `result-track:21def83ed33b21207e32d8a526cbc05d098377e3370953a4b60152cda519a89a` |
| 19 | `instance` | [self](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantb500df692073651e58c01849750205507655074e071a728198a19db5ba4b00ce.lean/declarations/self--47d9f9a1fcecda3738ca0659.md) | 150 | `declaration-track:47d9f9a1fcecda3738ca06597e48c044347339f314170351abb8e91fe38dae15` |
| 20 | `instance` | [ulift](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantb500df692073651e58c01849750205507655074e071a728198a19db5ba4b00ce.lean/declarations/ulift--c28502748522244fb8535f21.md) | 153 | `declaration-track:c28502748522244fb8535f212632c129a3ca7e5682838fcaea9a5d0e55b605fa` |
| 21 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantb500df692073651e58c01849750205507655074e071a728198a19db5ba4b00ce.lean/declarations/instance--2cfeb5cd015303dd15ac7742.md) | 155 | `declaration-track:2cfeb5cd015303dd15ac7742a0a046d1f67ed084557d552405f982b44cb77851` |
| 22 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantb500df692073651e58c01849750205507655074e071a728198a19db5ba4b00ce.lean/declarations/instance--dc54d4390b8e569018340091.md) | 158 | `declaration-track:dc54d4390b8e569018340091e6abe0005ffd790bad3e39e04b519e72e1f14acc` |
| 23 | `theorem` | [repr_algebraMap](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantb500df692073651e58c01849750205507655074e071a728198a19db5ba4b00ce.lean/declarations/repr-algebramap--decb95a4a8775ceee69bf545.md) | 174 | `result-track:decb95a4a8775ceee69bf54535fc0bafadf5bc9a285a5c2c5976f1a2e03700be` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
