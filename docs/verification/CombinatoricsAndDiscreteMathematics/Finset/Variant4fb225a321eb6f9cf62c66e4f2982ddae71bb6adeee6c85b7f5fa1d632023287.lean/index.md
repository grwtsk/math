# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Finset.Variant4fb225a321eb6f9cf62c66e4f2982ddae71bb6adeee6c85b7f5fa1d632023287

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1ac7d48f92aaaf375ce9c552912bdcba77a4bdd7",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Finset/Variant4fb225a321eb6f9cf62c66e4f2982ddae71bb6adeee6c85b7f5fa1d632023287.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant4fb225a321eb6f9cf62c66e4f2982ddae71bb6adeee6c85b7f5fa1d632023287.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant4fb225a321eb6f9cf62c66e4f2982ddae71bb6adeee6c85b7f5fa1d632023287.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1ac7d48f92aaaf375ce9c552912bdcba77a4bdd7`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Finset/Variant4fb225a321eb6f9cf62c66e4f2982ddae71bb6adeee6c85b7f5fa1d632023287.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Finset/Variant4fb225a321eb6f9cf62c66e4f2982ddae71bb6adeee6c85b7f5fa1d632023287.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Group.OrderIso` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Monoid.Canonical.Defs` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Monoid.Unbundled.MinMax` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Monoid.Unbundled.Pow` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Monoid.Unbundled.WithTop` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Lattice.Prod` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [toFinset_nsmul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant4fb225a321eb6f9cf62c66e4f2982ddae71bb6adeee6c85b7f5fa1d632023287.lean/declarations/tofinset-nsmul--50c29ad72cc472a93165a819.md) | 32 | `result-track:50c29ad72cc472a93165a819acf5340e21bf50d811c8ad6de1fb6af938a94cbe` |
| 2 | `lemma` | [toFinset_eq_singleton_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant4fb225a321eb6f9cf62c66e4f2982ddae71bb6adeee6c85b7f5fa1d632023287.lean/declarations/tofinset-eq-singleton-iff--0463c38a395c89dd7b088f33.md) | 39 | `result-track:0463c38a395c89dd7b088f33e3b82cd47001fb71012e783c0636f69ce1b87d82` |
| 3 | `lemma` | [toFinset_card_eq_one_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant4fb225a321eb6f9cf62c66e4f2982ddae71bb6adeee6c85b7f5fa1d632023287.lean/declarations/tofinset-card-eq-one-iff--7eacf85d9e63b15ecb95cd31.md) | 54 | `result-track:7eacf85d9e63b15ecb95cd31f664a6cd9e4b1426504b0ef5093e32fac7a21702` |
| 4 | `lemma` | [fold_max_add](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant4fb225a321eb6f9cf62c66e4f2982ddae71bb6adeee6c85b7f5fa1d632023287.lean/declarations/fold-max-add--cfff1435fbad29429891ae9e.md) | 63 | `result-track:cfff1435fbad29429891ae9e902a37ffb26f5b8e313409cecf8f24d1e806ea96` |
| 5 | `lemma` | [inf'_pow](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant4fb225a321eb6f9cf62c66e4f2982ddae71bb6adeee6c85b7f5fa1d632023287.lean/declarations/inf-pow--140bc8e26eb93a8cae4b8d65.md) | 69 | `result-track:140bc8e26eb93a8cae4b8d65bf6d207775816ff7eec4276c70114564aeef9f76` |
| 6 | `lemma` | [sup'_pow](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant4fb225a321eb6f9cf62c66e4f2982ddae71bb6adeee6c85b7f5fa1d632023287.lean/declarations/sup-pow--c6784c7baa65a9803ea3c116.md) | 74 | `result-track:c6784c7baa65a9803ea3c116de36ff02875a8bf93cf8d8c8627138a4187bee53` |
| 7 | `lemma` | [sup'_mul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant4fb225a321eb6f9cf62c66e4f2982ddae71bb6adeee6c85b7f5fa1d632023287.lean/declarations/sup-mul--aa9bd1fd0e8fe1a1867ee805.md) | 82 | `result-track:aa9bd1fd0e8fe1a1867ee8058eff69c97a1a954e67c3929a5348934dd60bf0b9` |
| 8 | `lemma` | [mul_sup'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant4fb225a321eb6f9cf62c66e4f2982ddae71bb6adeee6c85b7f5fa1d632023287.lean/declarations/mul-sup--18672976174dda11f41800d1.md) | 87 | `result-track:18672976174dda11f41800d10204dd5ff9be975501e4bc31f4cae166097bd8e7` |
| 9 | `lemma` | [sup'_add'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant4fb225a321eb6f9cf62c66e4f2982ddae71bb6adeee6c85b7f5fa1d632023287.lean/declarations/sup-add--0c86094b97714c4fe22f74c0.md) | 97 | `result-track:0c86094b97714c4fe22f74c06f1dcbc4c5331c2795c56891a9a775792a7a9efb` |
| 10 | `lemma` | [add_sup''](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant4fb225a321eb6f9cf62c66e4f2982ddae71bb6adeee6c85b7f5fa1d632023287.lean/declarations/add-sup--ff26c6816828a8fc49d8f541.md) | 106 | `result-track:ff26c6816828a8fc49d8f5415aac7e3a7030c8e4eb0accad4ad9c87219197e04` |
| 11 | `lemma` | [sup_add](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant4fb225a321eb6f9cf62c66e4f2982ddae71bb6adeee6c85b7f5fa1d632023287.lean/declarations/sup-add--46da924b8b41568c738f4f25.md) | 111 | `result-track:46da924b8b41568c738f4f254515f1e9f38a95cb3c0c77ecfa85273d1888acfd` |
| 12 | `lemma` | [add_sup](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant4fb225a321eb6f9cf62c66e4f2982ddae71bb6adeee6c85b7f5fa1d632023287.lean/declarations/add-sup--67cab009c6b8b84a49ebdb6e.md) | 115 | `result-track:67cab009c6b8b84a49ebdb6ee492453e87279b5cae2c0294361325fb80edf10a` |
| 13 | `lemma` | [sup_add_sup](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant4fb225a321eb6f9cf62c66e4f2982ddae71bb6adeee6c85b7f5fa1d632023287.lean/declarations/sup-add-sup--096040578c7b746aafdaf022.md) | 119 | `result-track:096040578c7b746aafdaf0223dad527be4114650afddd316cf0133958137c198` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
