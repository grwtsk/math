# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Finite.Variantdc2fddb4cb99f92dc5c3b39610975ae384377a3692e4f6fd32d272ad8d3ac7dd

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4adcc8410f485efe2676b13aa64f2245c39a9677",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Finite/Variantdc2fddb4cb99f92dc5c3b39610975ae384377a3692e4f6fd32d272ad8d3ac7dd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variantdc2fddb4cb99f92dc5c3b39610975ae384377a3692e4f6fd32d272ad8d3ac7dd.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variantdc2fddb4cb99f92dc5c3b39610975ae384377a3692e4f6fd32d272ad8d3ac7dd.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4adcc8410f485efe2676b13aa64f2245c39a9677`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Finite/Variantdc2fddb4cb99f92dc5c3b39610975ae384377a3692e4f6fd32d272ad8d3ac7dd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Finite/Variantdc2fddb4cb99f92dc5c3b39610975ae384377a3692e4f6fd32d272ad8d3ac7dd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.TypeTags.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finite.Defs` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Card` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variantdc2fddb4cb99f92dc5c3b39610975ae384377a3692e4f6fd32d272ad8d3ac7dd.lean/declarations/instance--41509a6ecd68ea0ca1d6b593.md) | 20 | `declaration-track:41509a6ecd68ea0ca1d6b593a9e433a67cae6363fc9c87f337c1fb7075e7b72c` |
| 2 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variantdc2fddb4cb99f92dc5c3b39610975ae384377a3692e4f6fd32d272ad8d3ac7dd.lean/declarations/instance--029ebe19f8f0345216f38a27.md) | 23 | `declaration-track:029ebe19f8f0345216f38a2796edffc76e2c296b567808a855b9e1f9cf9cb6fb` |
| 3 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variantdc2fddb4cb99f92dc5c3b39610975ae384377a3692e4f6fd32d272ad8d3ac7dd.lean/declarations/instance--660fb1ac0fd2d6180e97c870.md) | 26 | `declaration-track:660fb1ac0fd2d6180e97c870406130984f76c021f8c012a92cb2adb7e3ea2850` |
| 4 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variantdc2fddb4cb99f92dc5c3b39610975ae384377a3692e4f6fd32d272ad8d3ac7dd.lean/declarations/instance--4d33d73e2866c2ec4495ac7d.md) | 28 | `declaration-track:4d33d73e2866c2ec4495ac7dff14645b8f82bd23ce22c9b4f129c0f500b6a2aa` |
| 5 | `instance` | [Additive.fintype](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variantdc2fddb4cb99f92dc5c3b39610975ae384377a3692e4f6fd32d272ad8d3ac7dd.lean/declarations/additive-fintype--b8ee42a0ae3b25b1d367fb49.md) | 30 | `declaration-track:b8ee42a0ae3b25b1d367fb4928073d16798c72a02639c2683d38818287e7937d` |
| 6 | `instance` | [Multiplicative.fintype](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variantdc2fddb4cb99f92dc5c3b39610975ae384377a3692e4f6fd32d272ad8d3ac7dd.lean/declarations/multiplicative-fintype--c69129d8500597917c1eca11.md) | 33 | `declaration-track:c69129d8500597917c1eca11a2c2a5ae13f01734a3ed1a88ee64e70856bcbca4` |
| 7 | `lemma` | [Fintype.card_multiplicative](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variantdc2fddb4cb99f92dc5c3b39610975ae384377a3692e4f6fd32d272ad8d3ac7dd.lean/declarations/fintype-card-multiplicative--707f41b83ba5aab579253b75.md) | 36 | `result-track:707f41b83ba5aab579253b7562fb2cdacbf07edd406b60daa837f8b4f87d7bf2` |
| 8 | `lemma` | [Fintype.card_additive](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variantdc2fddb4cb99f92dc5c3b39610975ae384377a3692e4f6fd32d272ad8d3ac7dd.lean/declarations/fintype-card-additive--dc5e80ba2ab2159af73d1e5f.md) | 39 | `result-track:dc5e80ba2ab2159af73d1e5f7442779bf4ffea24b2b6fb2c1d1d15a8ac2172d9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
