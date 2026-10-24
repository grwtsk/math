# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Basic.Variante1cbb29de432f8cd0dd6bdacb07e0380d9102588e52d8685e3f4950ee0861065

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a647996be6efe66d7c3b19e77f12daf27d5dedcb",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variante1cbb29de432f8cd0dd6bdacb07e0380d9102588e52d8685e3f4950ee0861065.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variante1cbb29de432f8cd0dd6bdacb07e0380d9102588e52d8685e3f4950ee0861065.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variante1cbb29de432f8cd0dd6bdacb07e0380d9102588e52d8685e3f4950ee0861065.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a647996be6efe66d7c3b19e77f12daf27d5dedcb`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variante1cbb29de432f8cd0dd6bdacb07e0380d9102588e52d8685e3f4950ee0861065.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Basic/Variante1cbb29de432f8cd0dd6bdacb07e0380d9102588e52d8685e3f4950ee0861065.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finset.Lattice.Fold` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Encodable.Pi` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [WType](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variante1cbb29de432f8cd0dd6bdacb07e0380d9102588e52d8685e3f4950ee0861065.lean/declarations/wtype--388c45fc458bd45ebd347645.md) | 43 | `declaration-track:388c45fc458bd45ebd3476456221d1aa0e3ba324c7ea9a90ada4d7ac65369f64` |
| 2 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variante1cbb29de432f8cd0dd6bdacb07e0380d9102588e52d8685e3f4950ee0861065.lean/declarations/instance--5611131b619de639ea802169.md) | 46 | `declaration-track:5611131b619de639ea80216902fd0ecb89fbcd55285ad3e37fd36413155c13b1` |
| 3 | `def` | [toSigma](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variante1cbb29de432f8cd0dd6bdacb07e0380d9102588e52d8685e3f4950ee0861065.lean/declarations/tosigma--f32fdc16a0c73886bb61c4a8.md) | 55 | `declaration-track:f32fdc16a0c73886bb61c4a84aa1fe6a5a8a6e1ce1d19008151d73f7fd6019be` |
| 4 | `def` | [ofSigma](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variante1cbb29de432f8cd0dd6bdacb07e0380d9102588e52d8685e3f4950ee0861065.lean/declarations/ofsigma--cbfd76b15c338fddbb9ad09e.md) | 60 | `declaration-track:cbfd76b15c338fddbb9ad09e9183282884cad892982f78c6df1a13a9402d66b3` |
| 5 | `theorem` | [ofSigma_toSigma](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variante1cbb29de432f8cd0dd6bdacb07e0380d9102588e52d8685e3f4950ee0861065.lean/declarations/ofsigma-tosigma--bb31020a3d644e3672a25f27.md) | 64 | `result-track:bb31020a3d644e3672a25f271cbbd0d5c80c48e5a8b54cc2431c2dfd90cbee7f` |
| 6 | `theorem` | [toSigma_ofSigma](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variante1cbb29de432f8cd0dd6bdacb07e0380d9102588e52d8685e3f4950ee0861065.lean/declarations/tosigma-ofsigma--8fa9444576f7d8738bc96f48.md) | 68 | `result-track:8fa9444576f7d8738bc96f486e0b2dc74956759da1108e58679bd0952761b312` |
| 7 | `def` | [equivSigma](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variante1cbb29de432f8cd0dd6bdacb07e0380d9102588e52d8685e3f4950ee0861065.lean/declarations/equivsigma--8719dafa10a0432eb5f3eec2.md) | 75 | `declaration-track:8719dafa10a0432eb5f3eec2a57df9968060ba5dc59f00ab4ddd6c7bcdeab618` |
| 8 | `def` | [elim](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variante1cbb29de432f8cd0dd6bdacb07e0380d9102588e52d8685e3f4950ee0861065.lean/declarations/elim--c9019c86523cc02596c71f0f.md) | 82 | `declaration-track:c9019c86523cc02596c71f0fd24647bf73eedb66da6d33d4cc215f0db958e099` |
| 9 | `theorem` | [elim_injective](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variante1cbb29de432f8cd0dd6bdacb07e0380d9102588e52d8685e3f4950ee0861065.lean/declarations/elim-injective--bfd492b59c424a0040040a33.md) | 85 | `result-track:bfd492b59c424a0040040a33e620e5cc5cdf2f31a124638384969b72b76a04e8` |
| 10 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variante1cbb29de432f8cd0dd6bdacb07e0380d9102588e52d8685e3f4950ee0861065.lean/declarations/instance--020780df10095932cb46ef1c.md) | 92 | `declaration-track:020780df10095932cb46ef1c41df3874d189e267babc43cf63c59a1ff3c17c0a` |
| 11 | `theorem` | [infinite_of_nonempty_of_isEmpty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variante1cbb29de432f8cd0dd6bdacb07e0380d9102588e52d8685e3f4950ee0861065.lean/declarations/infinite-of-nonempty-of-isempty--a741a72bb47576e75e0c8745.md) | 95 | `result-track:a741a72bb47576e75e0c87458e6d185a9f97ff244a49ebb37dbc15d68e13b460` |
| 12 | `def` | [depth](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variante1cbb29de432f8cd0dd6bdacb07e0380d9102588e52d8685e3f4950ee0861065.lean/declarations/depth--6a60b4e35b553c77f7f6beb8.md) | 116 | `declaration-track:6a60b4e35b553c77f7f6beb8eff69be6c405c3907b588c985c8599b368a9e2da` |
| 13 | `theorem` | [depth_pos](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variante1cbb29de432f8cd0dd6bdacb07e0380d9102588e52d8685e3f4950ee0861065.lean/declarations/depth-pos--4499e12b3e48fa55aa5d81de.md) | 119 | `result-track:4499e12b3e48fa55aa5d81de451a840a4eb21dd99a1bd7a20dacde47c1414fcf` |
| 14 | `theorem` | [depth_lt_depth_mk](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variante1cbb29de432f8cd0dd6bdacb07e0380d9102588e52d8685e3f4950ee0861065.lean/declarations/depth-lt-depth-mk--d710cbad81bc2f2df0558301.md) | 123 | `result-track:d710cbad81bc2f2df0558301296bfa1b68388455a971fb40c7dffdbef5ab33ff` |
| 15 | `abbrev` | [WType'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variante1cbb29de432f8cd0dd6bdacb07e0380d9102588e52d8685e3f4950ee0861065.lean/declarations/wtype--b13edc7771814577f5e98912.md) | 134 | `declaration-track:b13edc7771814577f5e98912bec53f3e89a61222d7b65124aa025a5e3182030c` |
| 16 | `def` | [encodable_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variante1cbb29de432f8cd0dd6bdacb07e0380d9102588e52d8685e3f4950ee0861065.lean/declarations/encodable-zero--d43cc74ca042b4c9abc5e808.md) | 140 | `declaration-track:d43cc74ca042b4c9abc5e808ca975e617c4a27950a5afb933cfe7a908cced16b` |
| 17 | `def` | [f](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variante1cbb29de432f8cd0dd6bdacb07e0380d9102588e52d8685e3f4950ee0861065.lean/declarations/f--cb9f3ad1e57b5bb09438f942.md) | 148 | `declaration-track:cb9f3ad1e57b5bb09438f942bf794c6879eae0f336439afad965450e93eedd04` |
| 18 | `def` | [finv](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variante1cbb29de432f8cd0dd6bdacb07e0380d9102588e52d8685e3f4950ee0861065.lean/declarations/finv--02250b6c77df360eb6e65733.md) | 155 | `declaration-track:02250b6c77df360eb6e657331008f2f7ee95acd8432524dc20414199cc51ecbf` |
| 19 | `def` | [encodable_succ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variante1cbb29de432f8cd0dd6bdacb07e0380d9102588e52d8685e3f4950ee0861065.lean/declarations/encodable-succ--45b67b39f3143b170bb34adb.md) | 163 | `declaration-track:45b67b39f3143b170bb34adbaa8de5e4bc0844f989b0e86a17fbaf9c26dd06aa` |
| 20 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variante1cbb29de432f8cd0dd6bdacb07e0380d9102588e52d8685e3f4950ee0861065.lean/declarations/instance--24c1e8f35e562644b418ec84.md) | 171 | `declaration-track:24c1e8f35e562644b418ec84daf6f552fd516ef4de05690552403391b3a2d14b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
