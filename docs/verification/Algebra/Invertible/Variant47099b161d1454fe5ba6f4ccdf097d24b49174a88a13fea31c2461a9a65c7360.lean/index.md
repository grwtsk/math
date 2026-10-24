# Verification target: GRWTSK.Algebra.Invertible.Variant47099b161d1454fe5ba6f4ccdf097d24b49174a88a13fea31c2461a9a65c7360

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c83e12f92083cf9db13ed35238c9a8edc57d6d72",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Invertible/Variant47099b161d1454fe5ba6f4ccdf097d24b49174a88a13fea31c2461a9a65c7360.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Invertible/Variant47099b161d1454fe5ba6f4ccdf097d24b49174a88a13fea31c2461a9a65c7360.lean/index.md) · [Full source](../../../../mathematics/Algebra/Invertible/Variant47099b161d1454fe5ba6f4ccdf097d24b49174a88a13fea31c2461a9a65c7360.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c83e12f92083cf9db13ed35238c9a8edc57d6d72`.

Source path: `GRWTSK/Algebra/Invertible/Variant47099b161d1454fe5ba6f4ccdf097d24b49174a88a13fea31c2461a9a65c7360.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Invertible/Variant47099b161d1454fe5ba6f4ccdf097d24b49174a88a13fea31c2461a9a65c7360.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.GroupWithZero.Invertible` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Defs` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [invertibleNeg](../../../../mathematics/Algebra/Invertible/Variant47099b161d1454fe5ba6f4ccdf097d24b49174a88a13fea31c2461a9a65c7360.lean/declarations/invertibleneg--ec027b1f467978a256dba7d1.md) | 18 | `declaration-track:ec027b1f467978a256dba7d18569407230bce698b55a50180073cea337dc3d37` |
| 2 | `theorem` | [invOf_neg](../../../../mathematics/Algebra/Invertible/Variant47099b161d1454fe5ba6f4ccdf097d24b49174a88a13fea31c2461a9a65c7360.lean/declarations/invof-neg--ff9e30872dbadb91405f5ad9.md) | 22 | `result-track:ff9e30872dbadb91405f5ad93ec5af2686697c967311f29aa0fb7b164988cf8b` |
| 3 | `theorem` | [one_sub_invOf_two](../../../../mathematics/Algebra/Invertible/Variant47099b161d1454fe5ba6f4ccdf097d24b49174a88a13fea31c2461a9a65c7360.lean/declarations/one-sub-invof-two--d96d70c29a9f9533b1b2f009.md) | 27 | `result-track:d96d70c29a9f9533b1b2f009cd65d5da807c33621ce9cf6ad46f027426c60768` |
| 4 | `theorem` | [invOf_two_add_invOf_two](../../../../mathematics/Algebra/Invertible/Variant47099b161d1454fe5ba6f4ccdf097d24b49174a88a13fea31c2461a9a65c7360.lean/declarations/invof-two-add-invof-two--abaa31c28ff46c713dbe1a7d.md) | 32 | `result-track:abaa31c28ff46c713dbe1a7df2c0e5bbe93019be5a66887ba176e416a09d6df8` |
| 5 | `theorem` | [pos_of_invertible_cast](../../../../mathematics/Algebra/Invertible/Variant47099b161d1454fe5ba6f4ccdf097d24b49174a88a13fea31c2461a9a65c7360.lean/declarations/pos-of-invertible-cast--386c3d72af9176a8f24a801b.md) | 35 | `result-track:386c3d72af9176a8f24a801b62af83e31647dfe227fa7778d420891ff5b3bdd9` |
| 6 | `theorem` | [invOf_add_invOf](../../../../mathematics/Algebra/Invertible/Variant47099b161d1454fe5ba6f4ccdf097d24b49174a88a13fea31c2461a9a65c7360.lean/declarations/invof-add-invof--19d18903cfe547a2fcba4304.md) | 39 | `result-track:19d18903cfe547a2fcba4304aa3af691a35b16589e0ba0a538c5856ffca85a90` |
| 7 | `theorem` | [invOf_sub_invOf](../../../../mathematics/Algebra/Invertible/Variant47099b161d1454fe5ba6f4ccdf097d24b49174a88a13fea31c2461a9a65c7360.lean/declarations/invof-sub-invof--da4b4ba4db882715833107c2.md) | 44 | `result-track:da4b4ba4db882715833107c24d859ea753a84e4e636a83deaaf89bebde393b77` |
| 8 | `theorem` | [Ring.inverse_add_inverse](../../../../mathematics/Algebra/Invertible/Variant47099b161d1454fe5ba6f4ccdf097d24b49174a88a13fea31c2461a9a65c7360.lean/declarations/ring-inverse-add-inverse--41fadac03d44e5a5cce9e406.md) | 49 | `result-track:41fadac03d44e5a5cce9e40670cf3903c4cd29cb93b483c11b942b20f17ccba5` |
| 9 | `theorem` | [Ring.inverse_sub_inverse](../../../../mathematics/Algebra/Invertible/Variant47099b161d1454fe5ba6f4ccdf097d24b49174a88a13fea31c2461a9a65c7360.lean/declarations/ring-inverse-sub-inverse--2d6f86bc61e6df31404d6999.md) | 60 | `result-track:2d6f86bc61e6df31404d6999c8834a8ee65128df004c8ea2bf53342c91e59b3b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
