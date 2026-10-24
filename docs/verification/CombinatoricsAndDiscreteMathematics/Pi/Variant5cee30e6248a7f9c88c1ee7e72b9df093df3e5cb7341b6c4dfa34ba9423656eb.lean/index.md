# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Pi.Variant5cee30e6248a7f9c88c1ee7e72b9df093df3e5cb7341b6c4dfa34ba9423656eb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cf38f637d7a7ee10b75c44668d33a57b9423f5fc",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Pi/Variant5cee30e6248a7f9c88c1ee7e72b9df093df3e5cb7341b6c4dfa34ba9423656eb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variant5cee30e6248a7f9c88c1ee7e72b9df093df3e5cb7341b6c4dfa34ba9423656eb.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variant5cee30e6248a7f9c88c1ee7e72b9df093df3e5cb7341b6c4dfa34ba9423656eb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cf38f637d7a7ee10b75c44668d33a57b9423f5fc`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Pi/Variant5cee30e6248a7f9c88c1ee7e72b9df093df3e5cb7341b6c4dfa34ba9423656eb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Pi/Variant5cee30e6248a7f9c88c1ee7e72b9df093df3e5cb7341b6c4dfa34ba9423656eb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Pointwise.Finset.Scalar` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.BigOperators.Group.Finset` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fin.Tuple.NatAntidiagonal` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Sym` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [finAntidiagonal](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variant5cee30e6248a7f9c88c1ee7e72b9df093df3e5cb7341b6c4dfa34ba9423656eb.lean/declarations/finantidiagonal--9a9ce57db9c2f37d3ce0eae3.md) | 61 | `declaration-track:9a9ce57db9c2f37d3ce0eae355de4edd13fa5584b335990185984df2b83d89f9` |
| 2 | `lemma` | [mem_finAntidiagonal](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variant5cee30e6248a7f9c88c1ee7e72b9df093df3e5cb7341b6c4dfa34ba9423656eb.lean/declarations/mem-finantidiagonal--9f1a94cb0227d43107836fa6.md) | 97 | `result-track:9f1a94cb0227d43107836fa63eed98c713299e7364bbeab9b646eade712d9386` |
| 3 | `def` | [piAntidiag](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variant5cee30e6248a7f9c88c1ee7e72b9df093df3e5cb7341b6c4dfa34ba9423656eb.lean/declarations/piantidiag--7338f32410ecae52eb4d68a1.md) | 109 | `declaration-track:7338f32410ecae52eb4d68a11227b2a4f15a258b304ce90fcb2315d296d14fb6` |
| 4 | `lemma` | [mem_piAntidiag](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variant5cee30e6248a7f9c88c1ee7e72b9df093df3e5cb7341b6c4dfa34ba9423656eb.lean/declarations/mem-piantidiag--5f1770d89245cd874e6ef9e7.md) | 124 | `result-track:5f1770d89245cd874e6ef9e782057ddac26e7e8170b989e1840854b5ec092e05` |
| 5 | `lemma` | [piAntidiag_empty_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variant5cee30e6248a7f9c88c1ee7e72b9df093df3e5cb7341b6c4dfa34ba9423656eb.lean/declarations/piantidiag-empty-zero--188f4d2241e71ced72b847ec.md) | 137 | `result-track:188f4d2241e71ced72b847eca1bea4f6e7728efeb8cdef745b1252c105f81887` |
| 6 | `lemma` | [piAntidiag_empty_of_ne_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variant5cee30e6248a7f9c88c1ee7e72b9df093df3e5cb7341b6c4dfa34ba9423656eb.lean/declarations/piantidiag-empty-of-ne-zero--db78de096a4d35a07761ec98.md) | 140 | `result-track:db78de096a4d35a07761ec98f094a5ae9e89aca19fdbf901144d9e74a90def4a` |
| 7 | `lemma` | [piAntidiag_empty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variant5cee30e6248a7f9c88c1ee7e72b9df093df3e5cb7341b6c4dfa34ba9423656eb.lean/declarations/piantidiag-empty--53a518adaa6a53ba916d4d87.md) | 143 | `result-track:53a518adaa6a53ba916d4d8781c695f189c7439330bedecdcaa4361b989b564a` |
| 8 | `lemma` | [finsetCongr_piAntidiag_eq_antidiag](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variant5cee30e6248a7f9c88c1ee7e72b9df093df3e5cb7341b6c4dfa34ba9423656eb.lean/declarations/finsetcongr-piantidiag-eq-antidiag--3f9cee5c6adc2e8a846d2b2b.md) | 146 | `result-track:3f9cee5c6adc2e8a846d2b2b5fd5e451d05adceae6a57ed30361653a886c8cf4` |
| 9 | `lemma` | [pairwiseDisjoint_piAntidiag_map_addRightEmbedding](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variant5cee30e6248a7f9c88c1ee7e72b9df093df3e5cb7341b6c4dfa34ba9423656eb.lean/declarations/pairwisedisjoint-piantidiag-map-addrightembedding--6d5f0d8890b23c48144c67db.md) | 159 | `result-track:6d5f0d8890b23c48144c67db8c78cadefdef7efa4e7ea2457e3926d9bb6997f6` |
| 10 | `lemma` | [piAntidiag_cons](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variant5cee30e6248a7f9c88c1ee7e72b9df093df3e5cb7341b6c4dfa34ba9423656eb.lean/declarations/piantidiag-cons--3ffe5912a124cfe75eb139c9.md) | 168 | `result-track:3ffe5912a124cfe75eb139c9cfe1e37ace2e119600fb7fa4453a751c728195b7` |
| 11 | `lemma` | [piAntidiag_insert](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variant5cee30e6248a7f9c88c1ee7e72b9df093df3e5cb7341b6c4dfa34ba9423656eb.lean/declarations/piantidiag-insert--d3d028b8a4723be1945d04a2.md) | 184 | `result-track:d3d028b8a4723be1945d04a2c73769462c7b1c4e0c2d53099f8b05240f2fba4d` |
| 12 | `lemma` | [piAntidiag_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variant5cee30e6248a7f9c88c1ee7e72b9df093df3e5cb7341b6c4dfa34ba9423656eb.lean/declarations/piantidiag-zero--77d477a00f23cecf82a52076.md) | 195 | `result-track:77d477a00f23cecf82a5207635cc6daa2e5b7b92e21ce8134c38dd44169780e9` |
| 13 | `lemma` | [piAntidiag_univ_fin_eq_antidiagonalTuple](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variant5cee30e6248a7f9c88c1ee7e72b9df093df3e5cb7341b6c4dfa34ba9423656eb.lean/declarations/piantidiag-univ-fin-eq-antidiagonaltuple--9977f0a4e81fff30ed67899c.md) | 207 | `result-track:9977f0a4e81fff30ed67899c39fcf524bfeb265cb33845ca472fa4dfccccf264` |
| 14 | `lemma` | [nsmul_piAntidiag](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variant5cee30e6248a7f9c88c1ee7e72b9df093df3e5cb7341b6c4dfa34ba9423656eb.lean/declarations/nsmul-piantidiag--ad783786bc63912c2b96560f.md) | 211 | `result-track:ad783786bc63912c2b96560f0d37d694b92938b176b95b556dadcb45f3bf1c3c` |
| 15 | `lemma` | [map_nsmul_piAntidiag](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variant5cee30e6248a7f9c88c1ee7e72b9df093df3e5cb7341b6c4dfa34ba9423656eb.lean/declarations/map-nsmul-piantidiag--ec30d65a6ac42768ec3efa87.md) | 230 | `result-track:ec30d65a6ac42768ec3efa87ccff9c87a4649062be4b7efe04d863914242c929` |
| 16 | `lemma` | [nsmul_piAntidiag_univ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variant5cee30e6248a7f9c88c1ee7e72b9df093df3e5cb7341b6c4dfa34ba9423656eb.lean/declarations/nsmul-piantidiag-univ--c118ea65462bf7e6ac1c75ed.md) | 236 | `result-track:c118ea65462bf7e6ac1c75edd040fe646d957c8b52e8148882764a16af293dad` |
| 17 | `lemma` | [map_nsmul_piAntidiag_univ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variant5cee30e6248a7f9c88c1ee7e72b9df093df3e5cb7341b6c4dfa34ba9423656eb.lean/declarations/map-nsmul-piantidiag-univ--f3a4b4d4644c0ceebee985b0.md) | 240 | `result-track:f3a4b4d4644c0ceebee985b07687ee2db9ac0e47ec98e5e07abddc4b773958df` |
| 18 | `lemma` | [map_sym_eq_piAntidiag](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variant5cee30e6248a7f9c88c1ee7e72b9df093df3e5cb7341b6c4dfa34ba9423656eb.lean/declarations/map-sym-eq-piantidiag--52bf846138fb356a0f4cb4ca.md) | 248 | `result-track:52bf846138fb356a0f4cb4ca189dc2cfd51bb820b7cc53962f11ff706b54550a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
