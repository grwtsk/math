# Verification target: GRWTSK.Algebra.CommutativeAlgebra.Expand.Varianta9115c7acea5e9c71fdf6c0fa2a4fb9b4ac642e2525bc488eed59c5862b7eed0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "83498553c083f8aa864c2da0b1b887485be1386e",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Expand/Varianta9115c7acea5e9c71fdf6c0fa2a4fb9b4ac642e2525bc488eed59c5862b7eed0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/Expand/Varianta9115c7acea5e9c71fdf6c0fa2a4fb9b4ac642e2525bc488eed59c5862b7eed0.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/Expand/Varianta9115c7acea5e9c71fdf6c0fa2a4fb9b4ac642e2525bc488eed59c5862b7eed0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `83498553c083f8aa864c2da0b1b887485be1386e`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Expand/Varianta9115c7acea5e9c71fdf6c0fa2a4fb9b4ac642e2525bc488eed59c5862b7eed0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Expand/Varianta9115c7acea5e9c71fdf6c0fa2a4fb9b4ac642e2525bc488eed59c5862b7eed0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Polynomial.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.LocalRing` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [expand](../../../../../mathematics/Algebra/CommutativeAlgebra/Expand/Varianta9115c7acea5e9c71fdf6c0fa2a4fb9b4ac642e2525bc488eed59c5862b7eed0.lean/declarations/expand--cfed0cdf24bc76a227894fd7.md) | 44 | `declaration-track:cfed0cdf24bc76a227894fd7dc2afd44a2bfda597a3f858f5547049b4b0c0e6e` |
| 2 | `theorem` | [coe_expand](../../../../../mathematics/Algebra/CommutativeAlgebra/Expand/Varianta9115c7acea5e9c71fdf6c0fa2a4fb9b4ac642e2525bc488eed59c5862b7eed0.lean/declarations/coe-expand--cec3a087d2e8bb2bc8ac5f35.md) | 48 | `result-track:cec3a087d2e8bb2bc8ac5f35eaa5a6d45c02074c01f268ecab94eea54b80a0b7` |
| 3 | `theorem` | [expand_eq_sum](../../../../../mathematics/Algebra/CommutativeAlgebra/Expand/Varianta9115c7acea5e9c71fdf6c0fa2a4fb9b4ac642e2525bc488eed59c5862b7eed0.lean/declarations/expand-eq-sum--4ee2617ce5b5dc94bf55cc25.md) | 54 | `result-track:4ee2617ce5b5dc94bf55cc251283e30b78b48ccdc28041ea2c6aa540d48ffd9f` |
| 4 | `theorem` | [expand_C](../../../../../mathematics/Algebra/CommutativeAlgebra/Expand/Varianta9115c7acea5e9c71fdf6c0fa2a4fb9b4ac642e2525bc488eed59c5862b7eed0.lean/declarations/expand-c--5af4354b34ed711e28bca258.md) | 59 | `result-track:5af4354b34ed711e28bca258d3caca7df81cdac16111a041c01732bcae7e2d2f` |
| 5 | `theorem` | [expand_X](../../../../../mathematics/Algebra/CommutativeAlgebra/Expand/Varianta9115c7acea5e9c71fdf6c0fa2a4fb9b4ac642e2525bc488eed59c5862b7eed0.lean/declarations/expand-x--6a1b5a0ce4ca76a3c85dbe3d.md) | 65 | `result-track:6a1b5a0ce4ca76a3c85dbe3dc80061c83a81bd15762f9dbc534e257b91c146d8` |
| 6 | `theorem` | [expand_monomial](../../../../../mathematics/Algebra/CommutativeAlgebra/Expand/Varianta9115c7acea5e9c71fdf6c0fa2a4fb9b4ac642e2525bc488eed59c5862b7eed0.lean/declarations/expand-monomial--4a81d7a3596fdb23d71e6eff.md) | 71 | `result-track:4a81d7a3596fdb23d71e6eff84cb83d01683bfdb94d4b32c190858c2d4cc23ca` |
| 7 | `theorem` | [expand_expand](../../../../../mathematics/Algebra/CommutativeAlgebra/Expand/Varianta9115c7acea5e9c71fdf6c0fa2a4fb9b4ac642e2525bc488eed59c5862b7eed0.lean/declarations/expand-expand--3580a6deebde1ab108eb8282.md) | 75 | `result-track:3580a6deebde1ab108eb828222f978517d8aa03939c026e0e000618af69ff308` |
| 8 | `theorem` | [expand_mul](../../../../../mathematics/Algebra/CommutativeAlgebra/Expand/Varianta9115c7acea5e9c71fdf6c0fa2a4fb9b4ac642e2525bc488eed59c5862b7eed0.lean/declarations/expand-mul--c9df9eb75cb8f57b8c9b87f0.md) | 81 | `result-track:c9df9eb75cb8f57b8c9b87f0b13684fbced6b833b5cf6f6715aa5a2abf286c61` |
| 9 | `theorem` | [expand_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Expand/Varianta9115c7acea5e9c71fdf6c0fa2a4fb9b4ac642e2525bc488eed59c5862b7eed0.lean/declarations/expand-zero--170e5256190e5e9729d5dd64.md) | 86 | `result-track:170e5256190e5e9729d5dd64160eebaf5daa3623ac0628e12aea583337e54f09` |
| 10 | `theorem` | [expand_one](../../../../../mathematics/Algebra/CommutativeAlgebra/Expand/Varianta9115c7acea5e9c71fdf6c0fa2a4fb9b4ac642e2525bc488eed59c5862b7eed0.lean/declarations/expand-one--f0d234c475ccfe34299cf1df.md) | 90 | `result-track:f0d234c475ccfe34299cf1dfb58b967a1859df131b8a7d9dd3bde8cd8fdb1917` |
| 11 | `theorem` | [expand_pow](../../../../../mathematics/Algebra/CommutativeAlgebra/Expand/Varianta9115c7acea5e9c71fdf6c0fa2a4fb9b4ac642e2525bc488eed59c5862b7eed0.lean/declarations/expand-pow--c9acc7e25172ffc31829836d.md) | 96 | `result-track:c9acc7e25172ffc31829836d680c7ced59c81989812765bb4a08602033ea2443` |
| 12 | `theorem` | [derivative_expand](../../../../../mathematics/Algebra/CommutativeAlgebra/Expand/Varianta9115c7acea5e9c71fdf6c0fa2a4fb9b4ac642e2525bc488eed59c5862b7eed0.lean/declarations/derivative-expand--beca1851c7b22b0ca849ddae.md) | 101 | `result-track:beca1851c7b22b0ca849ddae67bcca7b51a1963447f82ced092ede1c367df1ff` |
| 13 | `theorem` | [coeff_expand](../../../../../mathematics/Algebra/CommutativeAlgebra/Expand/Varianta9115c7acea5e9c71fdf6c0fa2a4fb9b4ac642e2525bc488eed59c5862b7eed0.lean/declarations/coeff-expand--59b402dc6bba796fb13131f4.md) | 106 | `result-track:59b402dc6bba796fb13131f4e78139f0c15b142a692a024253b68e516c1ac91a` |
| 14 | `theorem` | [coeff_expand_mul](../../../../../mathematics/Algebra/CommutativeAlgebra/Expand/Varianta9115c7acea5e9c71fdf6c0fa2a4fb9b4ac642e2525bc488eed59c5862b7eed0.lean/declarations/coeff-expand-mul--449abb3f58f64316fc77a1b1.md) | 127 | `result-track:449abb3f58f64316fc77a1b133e06d4a9aa1316f9c7bc09163548322e9c1dfe7` |
| 15 | `theorem` | [coeff_expand_mul'](../../../../../mathematics/Algebra/CommutativeAlgebra/Expand/Varianta9115c7acea5e9c71fdf6c0fa2a4fb9b4ac642e2525bc488eed59c5862b7eed0.lean/declarations/coeff-expand-mul--82982948aab8dea6fd8a88a4.md) | 133 | `result-track:82982948aab8dea6fd8a88a49e4336c470cff66ee299de3cd26472aca3e2a025` |
| 16 | `theorem` | [expand_injective](../../../../../mathematics/Algebra/CommutativeAlgebra/Expand/Varianta9115c7acea5e9c71fdf6c0fa2a4fb9b4ac642e2525bc488eed59c5862b7eed0.lean/declarations/expand-injective--cf96b6a34875888cb485eba9.md) | 138 | `result-track:cf96b6a34875888cb485eba9d745a8fab98381763185d0f11bef5e5ed285ce19` |
| 17 | `theorem` | [expand_inj](../../../../../mathematics/Algebra/CommutativeAlgebra/Expand/Varianta9115c7acea5e9c71fdf6c0fa2a4fb9b4ac642e2525bc488eed59c5862b7eed0.lean/declarations/expand-inj--2124c9dd8764f614ac5929fa.md) | 142 | `result-track:2124c9dd8764f614ac5929fa595a72d331e0a479710f56f656c9a5f298d8f94c` |
| 18 | `theorem` | [expand_eq_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Expand/Varianta9115c7acea5e9c71fdf6c0fa2a4fb9b4ac642e2525bc488eed59c5862b7eed0.lean/declarations/expand-eq-zero--0dfa6587c8ea80ad0f204963.md) | 146 | `result-track:0dfa6587c8ea80ad0f2049630d2b6dc5505d5b64677604f35e4cdcadc736291f` |
| 19 | `theorem` | [expand_ne_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Expand/Varianta9115c7acea5e9c71fdf6c0fa2a4fb9b4ac642e2525bc488eed59c5862b7eed0.lean/declarations/expand-ne-zero--9f0b7c7af38334ae3263b375.md) | 150 | `result-track:9f0b7c7af38334ae3263b375898194840b94ded1a57ce3ee89d2828f6c0ac1f3` |
| 20 | `theorem` | [expand_eq_C](../../../../../mathematics/Algebra/CommutativeAlgebra/Expand/Varianta9115c7acea5e9c71fdf6c0fa2a4fb9b4ac642e2525bc488eed59c5862b7eed0.lean/declarations/expand-eq-c--a0ea65dfefb2ca710444d114.md) | 154 | `result-track:a0ea65dfefb2ca710444d114f99cfad5d331a693aaa04e6deadf695889ad5037` |
| 21 | `theorem` | [natDegree_expand](../../../../../mathematics/Algebra/CommutativeAlgebra/Expand/Varianta9115c7acea5e9c71fdf6c0fa2a4fb9b4ac642e2525bc488eed59c5862b7eed0.lean/declarations/natdegree-expand--1984ce8a7a94ae9dde14d1e8.md) | 159 | `result-track:1984ce8a7a94ae9dde14d1e8ec78a2fdaa773df3c0bdaf783b031662a8531a63` |
| 22 | `theorem` | [Monic.expand](../../../../../mathematics/Algebra/CommutativeAlgebra/Expand/Varianta9115c7acea5e9c71fdf6c0fa2a4fb9b4ac642e2525bc488eed59c5862b7eed0.lean/declarations/monic-expand--ea61872f001f54ad40ab89e9.md) | 181 | `result-track:ea61872f001f54ad40ab89e99fe081b500e92ac56fdc31a79777dc2123e3022d` |
| 23 | `theorem` | [map_expand](../../../../../mathematics/Algebra/CommutativeAlgebra/Expand/Varianta9115c7acea5e9c71fdf6c0fa2a4fb9b4ac642e2525bc488eed59c5862b7eed0.lean/declarations/map-expand--bbb720be75c120fa57ed0e56.md) | 186 | `result-track:bbb720be75c120fa57ed0e56ca0e99b1278f4d4f98709a158bbe6f5946a69e38` |
| 24 | `theorem` | [expand_eval](../../../../../mathematics/Algebra/CommutativeAlgebra/Expand/Varianta9115c7acea5e9c71fdf6c0fa2a4fb9b4ac642e2525bc488eed59c5862b7eed0.lean/declarations/expand-eval--f2243146d6ec722b57239b55.md) | 196 | `result-track:f2243146d6ec722b57239b557da913034deb0f9a5f5c7ba80e52801843743544` |
| 25 | `theorem` | [expand_aeval](../../../../../mathematics/Algebra/CommutativeAlgebra/Expand/Varianta9115c7acea5e9c71fdf6c0fa2a4fb9b4ac642e2525bc488eed59c5862b7eed0.lean/declarations/expand-aeval--8d6b3548be81d4c4a5a2eb11.md) | 202 | `result-track:8d6b3548be81d4c4a5a2eb11c1594ce2d056b7718d6280d720cf0d4a4b3b0e6b` |
| 26 | `def` | [contract](../../../../../mathematics/Algebra/CommutativeAlgebra/Expand/Varianta9115c7acea5e9c71fdf6c0fa2a4fb9b4ac642e2525bc488eed59c5862b7eed0.lean/declarations/contract--2bf28de71c6fa716af59029b.md) | 209 | `declaration-track:2bf28de71c6fa716af59029b2b33006ecddade644b3c6a1d535da464847d55d7` |
| 27 | `theorem` | [coeff_contract](../../../../../mathematics/Algebra/CommutativeAlgebra/Expand/Varianta9115c7acea5e9c71fdf6c0fa2a4fb9b4ac642e2525bc488eed59c5862b7eed0.lean/declarations/coeff-contract--b73ee9b8ef643d61712ae45f.md) | 213 | `result-track:b73ee9b8ef643d61712ae45fa0dfbc25d36f81c64eed43e90ff40cd9bf0462bc` |
| 28 | `theorem` | [contract_expand](../../../../../mathematics/Algebra/CommutativeAlgebra/Expand/Varianta9115c7acea5e9c71fdf6c0fa2a4fb9b4ac642e2525bc488eed59c5862b7eed0.lean/declarations/contract-expand--9fd33efa028fd2880b157a87.md) | 225 | `result-track:9fd33efa028fd2880b157a873902215e50817ad424e78e494ce8d18a2c784efb` |
| 29 | `theorem` | [expand_contract](../../../../../mathematics/Algebra/CommutativeAlgebra/Expand/Varianta9115c7acea5e9c71fdf6c0fa2a4fb9b4ac642e2525bc488eed59c5862b7eed0.lean/declarations/expand-contract--f211b5383e8282f3e07a4c78.md) | 234 | `result-track:f211b5383e8282f3e07a4c7884db419f7bd564933924cbf482d828dba4f4902d` |
| 30 | `theorem` | [expand_char](../../../../../mathematics/Algebra/CommutativeAlgebra/Expand/Varianta9115c7acea5e9c71fdf6c0fa2a4fb9b4ac642e2525bc488eed59c5862b7eed0.lean/declarations/expand-char--4d809ac9bd3c6dd174aab533.md) | 253 | `result-track:4d809ac9bd3c6dd174aab5334e305780509ebbbca3123fa7b4c30015a1b0dc1c` |
| 31 | `theorem` | [map_expand_pow_char](../../../../../mathematics/Algebra/CommutativeAlgebra/Expand/Varianta9115c7acea5e9c71fdf6c0fa2a4fb9b4ac642e2525bc488eed59c5862b7eed0.lean/declarations/map-expand-pow-char--94a17f475f67c934b22bf721.md) | 261 | `result-track:94a17f475f67c934b22bf721064feb2e77499e6ab3fc54b11f0e061c663a0bd8` |
| 32 | `theorem` | [isLocalRingHom_expand](../../../../../mathematics/Algebra/CommutativeAlgebra/Expand/Varianta9115c7acea5e9c71fdf6c0fa2a4fb9b4ac642e2525bc488eed59c5862b7eed0.lean/declarations/islocalringhom-expand--60d19fb955d678b4433374f7.md) | 278 | `result-track:60d19fb955d678b4433374f7669f7da4712d2ee24a251cd943d478b47adc797e` |
| 33 | `theorem` | [of_irreducible_expand](../../../../../mathematics/Algebra/CommutativeAlgebra/Expand/Varianta9115c7acea5e9c71fdf6c0fa2a4fb9b4ac642e2525bc488eed59c5862b7eed0.lean/declarations/of-irreducible-expand--9a56177dd2d70e0488afb5d4.md) | 288 | `result-track:9a56177dd2d70e0488afb5d4fceaecf1e92ae440c5663d30633039bf34a92d80` |
| 34 | `theorem` | [of_irreducible_expand_pow](../../../../../mathematics/Algebra/CommutativeAlgebra/Expand/Varianta9115c7acea5e9c71fdf6c0fa2a4fb9b4ac642e2525bc488eed59c5862b7eed0.lean/declarations/of-irreducible-expand-pow--9a31585c95df7eeb34766550.md) | 294 | `result-track:9a31585c95df7eeb34766550ab6555d5a09b9494efa63109b7c5624e7263b68c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
