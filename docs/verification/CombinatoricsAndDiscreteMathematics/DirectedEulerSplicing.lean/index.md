# Verification target: GRWTSK.Combinatorics.DirectedEulerSplicing

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e4e189af2f8c7cd3ac4ae02c0ac6d1e6de3852bd",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Combinatorics/DirectedEulerSplicing.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedEulerSplicing.lean/index.md) · [Full source](../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedEulerSplicing.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e4e189af2f8c7cd3ac4ae02c0ac6d1e6de3852bd`.

Source path: `GRWTSK/Combinatorics/DirectedEulerSplicing.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Combinatorics/DirectedEulerSplicing.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.List.Nodup` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Data.List.Perm.Basic` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Multiset.AddSub` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Multiset.Count` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [Walk](../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedEulerSplicing.lean/declarations/walk--bd511860785359d83b0452c0.md) | 30 | `declaration-track:bd511860785359d83b0452c0770ef348d9bf80f8f1c38ce6a3f76f802b4139a4` |
| 2 | `def` | [edges](../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedEulerSplicing.lean/declarations/edges--960b8039adcd4a77fa598046.md) | 42 | `declaration-track:960b8039adcd4a77fa5980469580de1c94764d59bfe8b24eccff4db9a061d9e6` |
| 3 | `def` | [append](../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedEulerSplicing.lean/declarations/append--2d484cdccda2fe0ecac628e7.md) | 47 | `declaration-track:2d484cdccda2fe0ecac628e75bddd3202eec85cf0802ff3e8e75592a78a8410a` |
| 4 | `theorem` | [edges_nil](../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedEulerSplicing.lean/declarations/edges-nil--c0979f777dd5ec5379cd286f.md) | 52 | `result-track:c0979f777dd5ec5379cd286fd831d76e18b30fc346cbaf57d0d84ca48342484c` |
| 5 | `theorem` | [edges_cons](../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedEulerSplicing.lean/declarations/edges-cons--24f760d739def834b73a0c13.md) | 54 | `result-track:24f760d739def834b73a0c13e1df53321b15e8b9c5a03a06541deb0232dc66f8` |
| 6 | `theorem` | [edges_append](../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedEulerSplicing.lean/declarations/edges-append--0cf609fa5802addee3155454.md) | 57 | `result-track:0cf609fa5802addee31554545bcaf3f193b482afdeedc3a7fdbe08969e80c12f` |
| 7 | `def` | [splice](../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedEulerSplicing.lean/declarations/splice--0899e44ee22f42f0358bebd3.md) | 64 | `declaration-track:0899e44ee22f42f0358bebd366acb97609fa8ec2b3c1c2a222d15b728d36e1c3` |
| 8 | `theorem` | [edges_splice](../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedEulerSplicing.lean/declarations/edges-splice--446f58ff28a6f4f56d3c09e1.md) | 69 | `result-track:446f58ff28a6f4f56d3c09e110ed536e546bb13edbda0914f74218d6cc900fd9` |
| 9 | `theorem` | [splice_edges_perm](../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedEulerSplicing.lean/declarations/splice-edges-perm--73871b0779d7e2aa95a3cf22.md) | 76 | `result-track:73871b0779d7e2aa95a3cf22cd55f96133c0a950f4f2a4c887630053e5cc086d` |
| 10 | `theorem` | [splice_nodup](../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedEulerSplicing.lean/declarations/splice-nodup--44bf673c67b27453e1ca37fc.md) | 85 | `result-track:44bf673c67b27453e1ca37fcf89e473b4389b613d56b880ccda1f11cd3f26904` |
| 11 | `theorem` | [splice_edges_multiset](../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedEulerSplicing.lean/declarations/splice-edges-multiset--336cf06678e8b41431737e93.md) | 93 | `result-track:336cf06678e8b41431737e939fd0e3340b434be0470d977ddd08882d172be98c` |
| 12 | `theorem` | [splice_label_count](../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedEulerSplicing.lean/declarations/splice-label-count--a07df473eda490634a33e291.md) | 101 | `result-track:a07df473eda490634a33e29106bf3c42f991d78cb48f5293e0b615512b3107ff` |
| 13 | `theorem` | [splice_length](../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedEulerSplicing.lean/declarations/splice-length--1fcb87a48b6e5f88442f4139.md) | 109 | `result-track:1fcb87a48b6e5f88442f41390b38fd5946d2fdb136a498da5c7ef314758b6214` |
| 14 | `theorem` | [exists_strict_closed_trail_extension](../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedEulerSplicing.lean/declarations/exists-strict-closed-trail-extension--6b2c108faf53b3426081392a.md) | 117 | `result-track:6b2c108faf53b3426081392ae78aa40a9cd64fa85361c2bb3295fe2f400f92ab` |
| 15 | `theorem` | [incidence_balance](../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedEulerSplicing.lean/declarations/incidence-balance--b698160606be6dbfd1dfb734.md) | 134 | `result-track:b698160606be6dbfd1dfb734451d80da1ba39a0cafc4c495121862905bbf063d` |
| 16 | `theorem` | [closed_incidence_balance](../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedEulerSplicing.lean/declarations/closed-incidence-balance--d4b4c96fef4ecc72939a48f6.md) | 146 | `result-track:d4b4c96fef4ecc72939a48f606f573f091cf9e92f2b76f30eeac5994963149ae` |
| 17 | `theorem` | [residual_incidence_balance](../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedEulerSplicing.lean/declarations/residual-incidence-balance--974a150958f3996e1a8c8b62.md) | 154 | `result-track:974a150958f3996e1a8c8b62f8afe3978d215981a4070a169ee28b1abb60f567` |
| 18 | `theorem` | [terminal_eq_start_of_no_residual_outgoing](../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedEulerSplicing.lean/declarations/terminal-eq-start-of-no-residual-outgoing--921a79d118d4971275eb08ab.md) | 171 | `result-track:921a79d118d4971275eb08abdf1d45a71e84653a88d21ec3a15fe764e0469d51` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
