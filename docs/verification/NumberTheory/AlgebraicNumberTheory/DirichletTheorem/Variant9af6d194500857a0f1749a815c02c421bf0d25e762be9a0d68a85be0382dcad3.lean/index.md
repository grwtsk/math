# Verification target: GRWTSK.NumberTheory.AlgebraicNumberTheory.DirichletTheorem.Variant9af6d194500857a0f1749a815c02c421bf0d25e762be9a0d68a85be0382dcad3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "693ef0c44a0ae1cd78b0bfdf1c59bfde4e43ebce",
  "lexical_observation_count": 40,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/DirichletTheorem/Variant9af6d194500857a0f1749a815c02c421bf0d25e762be9a0d68a85be0382dcad3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/DirichletTheorem/Variant9af6d194500857a0f1749a815c02c421bf0d25e762be9a0d68a85be0382dcad3.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/DirichletTheorem/Variant9af6d194500857a0f1749a815c02c421bf0d25e762be9a0d68a85be0382dcad3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `693ef0c44a0ae1cd78b0bfdf1c59bfde4e43ebce`.

Source path: `GRWTSK/NumberTheory/AlgebraicNumberTheory/DirichletTheorem/Variant9af6d194500857a0f1749a815c02c421bf0d25e762be9a0d68a85be0382dcad3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AlgebraicNumberTheory/DirichletTheorem/Variant9af6d194500857a0f1749a815c02c421bf0d25e762be9a0d68a85be0382dcad3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Matrix.Gershgorin` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.NumberField.CanonicalEmbedding.ConvexBody` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.NumberField.Units.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [w₀](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/DirichletTheorem/Variant9af6d194500857a0f1749a815c02c421bf0d25e762be9a0d68a85be0382dcad3.lean/declarations/w--15bd5f8200a3746f4a8b14bd.md) | 79 | `declaration-track:15bd5f8200a3746f4a8b14bd0cf0dc66c79f329b4f76ed14a3f25388fba3bae5` |
| 2 | `abbrev` | [logSpace](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/DirichletTheorem/Variant9af6d194500857a0f1749a815c02c421bf0d25e762be9a0d68a85be0382dcad3.lean/declarations/logspace--c5edd81361d7837370b9f90c.md) | 84 | `declaration-track:c5edd81361d7837370b9f90c3f7555ca6a25eb5db79882653724df3faa260015` |
| 3 | `def` | [_root_.GRWTSK.NumberTheory.AlgebraicNumberTheory.W.Variantdcb30d20b295c0d243614924d637b730231232ec1c63cbc9fdb4e6f8c6a4bf99.NumberField.Units.logEmbedding](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/DirichletTheorem/Variant9af6d194500857a0f1749a815c02c421bf0d25e762be9a0d68a85be0382dcad3.lean/declarations/root-grwtsk-numbertheory-algebraicnumbertheory-w-variantdcb30d20b295c0d2--7a48144c1de9611551eaf371.md) | 88 | `declaration-track:7a48144c1de9611551eaf371f6dbc8044d8497a63f0c72917bacbef64840c3ec` |
| 4 | `theorem` | [logEmbedding_component](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/DirichletTheorem/Variant9af6d194500857a0f1749a815c02c421bf0d25e762be9a0d68a85be0382dcad3.lean/declarations/logembedding-component--01ea779a53feae90f031d68b.md) | 95 | `result-track:01ea779a53feae90f031d68bc5f175dfa66b24c5689b806edea4d4bc8bdc3738` |
| 5 | `theorem` | [sum_logEmbedding_component](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/DirichletTheorem/Variant9af6d194500857a0f1749a815c02c421bf0d25e762be9a0d68a85be0382dcad3.lean/declarations/sum-logembedding-component--34315aee2b4f6f88c64b7090.md) | 99 | `result-track:34315aee2b4f6f88c64b70905dd6fdb07a5adb5d88c447cb5016bff02ec5db13` |
| 6 | `theorem` | [mult_log_place_eq_zero](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/DirichletTheorem/Variant9af6d194500857a0f1749a815c02c421bf0d25e762be9a0d68a85be0382dcad3.lean/declarations/mult-log-place-eq-zero--f1ccec05a705d5767ff883d3.md) | 108 | `result-track:f1ccec05a705d5767ff883d3452c199978335fc463a40d54c632b34d6e5ea609` |
| 7 | `theorem` | [logEmbedding_eq_zero_iff](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/DirichletTheorem/Variant9af6d194500857a0f1749a815c02c421bf0d25e762be9a0d68a85be0382dcad3.lean/declarations/logembedding-eq-zero-iff--9e9aa46fff2ebdfcbe3253fe.md) | 117 | `result-track:9e9aa46fff2ebdfcbe3253fed4538906549049efea10f2f1dff6bc1754472733` |
| 8 | `theorem` | [logEmbedding_component_le](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/DirichletTheorem/Variant9af6d194500857a0f1749a815c02c421bf0d25e762be9a0d68a85be0382dcad3.lean/declarations/logembedding-component-le--258b27ebee4305b014ead4bc.md) | 132 | `result-track:258b27ebee4305b014ead4bce09fc66c5dc88d6c680a41feb10450732b3a256f` |
| 9 | `theorem` | [log_le_of_logEmbedding_le](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/DirichletTheorem/Variant9af6d194500857a0f1749a815c02c421bf0d25e762be9a0d68a85be0382dcad3.lean/declarations/log-le-of-logembedding-le--15a63f18393b7c0f46faf65e.md) | 139 | `result-track:15a63f18393b7c0f46faf65e00a380831290973463afcb054e04159df016dbba` |
| 10 | `def` | [_root_.GRWTSK.NumberTheory.AlgebraicNumberTheory.W.Variantdcb30d20b295c0d243614924d637b730231232ec1c63cbc9fdb4e6f8c6a4bf99.NumberField.Units.unitLattice](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/DirichletTheorem/Variant9af6d194500857a0f1749a815c02c421bf0d25e762be9a0d68a85be0382dcad3.lean/declarations/root-grwtsk-numbertheory-algebraicnumbertheory-w-variantdcb30d20b295c0d2--aaf3ad7f0e73c5e61f7d264f.md) | 168 | `declaration-track:aaf3ad7f0e73c5e61f7d264f5c35abc1a1cc957e577e199e15964eb0537a8371` |
| 11 | `theorem` | [unitLattice_inter_ball_finite](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/DirichletTheorem/Variant9af6d194500857a0f1749a815c02c421bf0d25e762be9a0d68a85be0382dcad3.lean/declarations/unitlattice-inter-ball-finite--cc43945883876cbef936072a.md) | 173 | `result-track:cc43945883876cbef936072a0236e3491233388d451625eecc3cff2e1b8e07f3` |
| 12 | `theorem` | [seq_next](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/DirichletTheorem/Variant9af6d194500857a0f1749a815c02c421bf0d25e762be9a0d68a85be0382dcad3.lean/declarations/seq-next--a09b7fad71813a937a81c022.md) | 215 | `result-track:a09b7fad71813a937a81c022e1e4d3facf6d241f3b6b9072de48e7afe1cbd378` |
| 13 | `def` | [seq](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/DirichletTheorem/Variant9af6d194500857a0f1749a815c02c421bf0d25e762be9a0d68a85be0382dcad3.lean/declarations/seq--c661a2e81c58d925f1ae51f9.md) | 245 | `declaration-track:c661a2e81c58d925f1ae51f93a01ba06b85d3989cd8a215e664704e336d6b270` |
| 14 | `theorem` | [seq_ne_zero](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/DirichletTheorem/Variant9af6d194500857a0f1749a815c02c421bf0d25e762be9a0d68a85be0382dcad3.lean/declarations/seq-ne-zero--53f437057039d5755a693c29.md) | 251 | `result-track:53f437057039d5755a693c293b1816a2c86bfdcdc27fab3c69d877089b3de35c` |
| 15 | `theorem` | [seq_decreasing](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/DirichletTheorem/Variant9af6d194500857a0f1749a815c02c421bf0d25e762be9a0d68a85be0382dcad3.lean/declarations/seq-decreasing--442a3d92682cb3546217464d.md) | 255 | `result-track:442a3d92682cb3546217464d269a33227284decfefdd2ffba0973cd4d1c0b9d2` |
| 16 | `theorem` | [seq_norm_le](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/DirichletTheorem/Variant9af6d194500857a0f1749a815c02c421bf0d25e762be9a0d68a85be0382dcad3.lean/declarations/seq-norm-le--fccd87025fb0aa47c9a42393.md) | 271 | `result-track:fccd87025fb0aa47c9a42393c6d22d23299a1304b8b736eee0cc4c1b885ebadd` |
| 17 | `theorem` | [exists_unit](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/DirichletTheorem/Variant9af6d194500857a0f1749a815c02c421bf0d25e762be9a0d68a85be0382dcad3.lean/declarations/exists-unit--fde33b31fb0b9c617411a9bb.md) | 286 | `result-track:fde33b31fb0b9c617411a9bbd2b8f8e1af517369505487fe81929cdcf89a258b` |
| 18 | `theorem` | [unitLattice_span_eq_top](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/DirichletTheorem/Variant9af6d194500857a0f1749a815c02c421bf0d25e762be9a0d68a85be0382dcad3.lean/declarations/unitlattice-span-eq-top--682297935189cab165055054.md) | 310 | `result-track:682297935189cab165055054ff3765149c2b2ba41fc86e3122b4fd2e75c8266f` |
| 19 | `def` | [rank](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/DirichletTheorem/Variant9af6d194500857a0f1749a815c02c421bf0d25e762be9a0d68a85be0382dcad3.lean/declarations/rank--30e5b2ed89ffa9d8cd7b5a67.md) | 351 | `declaration-track:30e5b2ed89ffa9d8cd7b5a672e7114b513b73de766cee69aad85a60d9677ff8b` |
| 20 | `instance` | [instDiscrete_unitLattice](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/DirichletTheorem/Variant9af6d194500857a0f1749a815c02c421bf0d25e762be9a0d68a85be0382dcad3.lean/declarations/instdiscrete-unitlattice--9af31ffa357d30258a972de8.md) | 353 | `declaration-track:9af31ffa357d30258a972de853c32c2b6d56023a93a8b91623c1088959617e31` |
| 21 | `instance` | [instZLattice_unitLattice](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/DirichletTheorem/Variant9af6d194500857a0f1749a815c02c421bf0d25e762be9a0d68a85be0382dcad3.lean/declarations/instzlattice-unitlattice--416fcabf21e3b1fb9020f456.md) | 366 | `declaration-track:416fcabf21e3b1fb9020f456aeb098eee6ceed93545b3301a6002e8f7276c895` |
| 22 | `theorem` | [finrank_eq_rank](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/DirichletTheorem/Variant9af6d194500857a0f1749a815c02c421bf0d25e762be9a0d68a85be0382dcad3.lean/declarations/finrank-eq-rank--808932fbddb148ad7adb560b.md) | 369 | `result-track:808932fbddb148ad7adb560b0e68a0f6ea2b9eb4baa923d8e32690d8dfda0cc0` |
| 23 | `theorem` | [unitLattice_rank](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/DirichletTheorem/Variant9af6d194500857a0f1749a815c02c421bf0d25e762be9a0d68a85be0382dcad3.lean/declarations/unitlattice-rank--cc59ae7057003e16f405578e.md) | 376 | `result-track:cc59ae7057003e16f405578e030f58f6ac6dff7cb3bab8562dd7dfdc26cdca0f` |
| 24 | `def` | [logEmbeddingQuot](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/DirichletTheorem/Variant9af6d194500857a0f1749a815c02c421bf0d25e762be9a0d68a85be0382dcad3.lean/declarations/logembeddingquot--ce455eacdd5be3bfd3b6602b.md) | 382 | `declaration-track:ce455eacdd5be3bfd3b6602b611f73f840812629e623057b73c972028af86fd3` |
| 25 | `theorem` | [logEmbeddingQuot_apply](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/DirichletTheorem/Variant9af6d194500857a0f1749a815c02c421bf0d25e762be9a0d68a85be0382dcad3.lean/declarations/logembeddingquot-apply--cfdfc8556e7215d75cee32c0.md) | 392 | `result-track:cfdfc8556e7215d75cee32c0052aeeb6ed6ddac564865fe59a2d908ccad0d283` |
| 26 | `theorem` | [logEmbeddingQuot_injective](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/DirichletTheorem/Variant9af6d194500857a0f1749a815c02c421bf0d25e762be9a0d68a85be0382dcad3.lean/declarations/logembeddingquot-injective--74cc21a25e9827f5a6387207.md) | 396 | `result-track:74cc21a25e9827f5a638720771381c84e151f34e896997d71b9e3afb5c8705f8` |
| 27 | `def` | [logEmbeddingEquiv](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/DirichletTheorem/Variant9af6d194500857a0f1749a815c02c421bf0d25e762be9a0d68a85be0382dcad3.lean/declarations/logembeddingequiv--cd5d1c05d2add140d8bbf304.md) | 406 | `declaration-track:cd5d1c05d2add140d8bbf3049d3b9a4bb0628152583aaa5bf995353a15e2acda` |
| 28 | `theorem` | [logEmbeddingEquiv_apply](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/DirichletTheorem/Variant9af6d194500857a0f1749a815c02c421bf0d25e762be9a0d68a85be0382dcad3.lean/declarations/logembeddingequiv-apply--2ab7eb863f9c628ad91eb15f.md) | 417 | `result-track:2ab7eb863f9c628ad91eb15f6510e3adfed832f37d400451dae888d2315b82eb` |
| 29 | `instance` | [(anonymous)](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/DirichletTheorem/Variant9af6d194500857a0f1749a815c02c421bf0d25e762be9a0d68a85be0382dcad3.lean/declarations/instance--ac116f6ec3f09166df937672.md) | 421 | `declaration-track:ac116f6ec3f09166df9376729bea837dab8035f0be30ac5cda359cbc57dec603` |
| 30 | `instance` | [(anonymous)](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/DirichletTheorem/Variant9af6d194500857a0f1749a815c02c421bf0d25e762be9a0d68a85be0382dcad3.lean/declarations/instance--01e0332707ad084fa0600762.md) | 424 | `declaration-track:01e0332707ad084fa060076299a3cb48cb1ab3463782f309e236bc99e672c8b9` |
| 31 | `instance` | [(anonymous)](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/DirichletTheorem/Variant9af6d194500857a0f1749a815c02c421bf0d25e762be9a0d68a85be0382dcad3.lean/declarations/instance--8c264999ce589eae78462efe.md) | 430 | `declaration-track:8c264999ce589eae78462efed195425dea82668548e8a8fa7af259d0bf6fb2e1` |
| 32 | `instance` | [(anonymous)](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/DirichletTheorem/Variant9af6d194500857a0f1749a815c02c421bf0d25e762be9a0d68a85be0382dcad3.lean/declarations/instance--25e703701d2573df3a9165f8.md) | 443 | `declaration-track:25e703701d2573df3a9165f8993e9eaddb147c93d702c2d59e5e1bd6fd549c10` |
| 33 | `theorem` | [rank_modTorsion](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/DirichletTheorem/Variant9af6d194500857a0f1749a815c02c421bf0d25e762be9a0d68a85be0382dcad3.lean/declarations/rank-modtorsion--7ec7ad1ba5b2c0d5893847c5.md) | 447 | `result-track:7ec7ad1ba5b2c0d5893847c59ee283d61f6aaa9f5bc539873b71ef70d83b0dae` |
| 34 | `def` | [basisModTorsion](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/DirichletTheorem/Variant9af6d194500857a0f1749a815c02c421bf0d25e762be9a0d68a85be0382dcad3.lean/declarations/basismodtorsion--6e1b53a7722917e212d21248.md) | 452 | `declaration-track:6e1b53a7722917e212d21248c2a2c7425f88c1d42f5fb25a359d859e0e7b41da` |
| 35 | `def` | [basisUnitLattice](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/DirichletTheorem/Variant9af6d194500857a0f1749a815c02c421bf0d25e762be9a0d68a85be0382dcad3.lean/declarations/basisunitlattice--f3c5f04392c3b225c52ac29d.md) | 457 | `declaration-track:f3c5f04392c3b225c52ac29d4162abbd90ca99e29379010c43f3e2db7ddd0e36` |
| 36 | `def` | [fundSystem](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/DirichletTheorem/Variant9af6d194500857a0f1749a815c02c421bf0d25e762be9a0d68a85be0382dcad3.lean/declarations/fundsystem--67f3da748453b20fd7fc5b0d.md) | 462 | `declaration-track:67f3da748453b20fd7fc5b0d476b1d36a5fb6f751cb2421330ece86c384aaa52` |
| 37 | `theorem` | [fundSystem_mk](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/DirichletTheorem/Variant9af6d194500857a0f1749a815c02c421bf0d25e762be9a0d68a85be0382dcad3.lean/declarations/fundsystem-mk--d9b4f46fdccb703e0b692522.md) | 466 | `result-track:d9b4f46fdccb703e0b692522c56db762b51d161be1031b8d77170e2b7b3af5ad` |
| 38 | `theorem` | [logEmbedding_fundSystem](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/DirichletTheorem/Variant9af6d194500857a0f1749a815c02c421bf0d25e762be9a0d68a85be0382dcad3.lean/declarations/logembedding-fundsystem--68536c7fac3f169e0218f977.md) | 470 | `result-track:68536c7fac3f169e0218f977ad559460e658b054b553dc5ab9d30553ea513d65` |
| 39 | `theorem` | [fun_eq_repr](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/DirichletTheorem/Variant9af6d194500857a0f1749a815c02c421bf0d25e762be9a0d68a85be0382dcad3.lean/declarations/fun-eq-repr--4c4ef9d63fff33e723520301.md) | 477 | `result-track:4c4ef9d63fff33e7235203018e0222420d5cfe94bf80ae459cf757a3ebf91fd4` |
| 40 | `theorem` | [exist_unique_eq_mul_prod](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/DirichletTheorem/Variant9af6d194500857a0f1749a815c02c421bf0d25e762be9a0d68a85be0382dcad3.lean/declarations/exist-unique-eq-mul-prod--60d883c5e9e4242f77942673.md) | 492 | `result-track:60d883c5e9e4242f77942673a1754e61dc9a9b082dbceb6dadc1bc719816fec7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
