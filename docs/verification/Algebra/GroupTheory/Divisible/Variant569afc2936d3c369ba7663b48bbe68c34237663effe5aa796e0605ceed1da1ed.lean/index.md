# Verification target: GRWTSK.Algebra.GroupTheory.Divisible.Variant569afc2936d3c369ba7663b48bbe68c34237663effe5aa796e0605ceed1da1ed

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ecb0bcfd386290793d7f960bef5800a8970244ef",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Divisible/Variant569afc2936d3c369ba7663b48bbe68c34237663effe5aa796e0605ceed1da1ed.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Divisible/Variant569afc2936d3c369ba7663b48bbe68c34237663effe5aa796e0605ceed1da1ed.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Divisible/Variant569afc2936d3c369ba7663b48bbe68c34237663effe5aa796e0605ceed1da1ed.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ecb0bcfd386290793d7f960bef5800a8970244ef`.

Source path: `GRWTSK/Algebra/GroupTheory/Divisible/Variant569afc2936d3c369ba7663b48bbe68c34237663effe5aa796e0605ceed1da1ed.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Divisible/Variant569afc2936d3c369ba7663b48bbe68c34237663effe5aa796e0605ceed1da1ed.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.GroupTheory.Subgroup.Pointwise` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.QuotientGroup` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Pi` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [DivisibleBy](../../../../../mathematics/Algebra/GroupTheory/Divisible/Variant569afc2936d3c369ba7663b48bbe68c34237663effe5aa796e0605ceed1da1ed.lean/declarations/divisibleby--1a0e9635adecde4da8f67f3d.md) | 83 | `declaration-track:1a0e9635adecde4da8f67f3d8257eecb2e54b2873992554e9701c57eb405c582` |
| 2 | `class` | [RootableBy](../../../../../mathematics/Algebra/GroupTheory/Divisible/Variant569afc2936d3c369ba7663b48bbe68c34237663effe5aa796e0605ceed1da1ed.lean/declarations/rootableby--b735585fd1eac2169b725fcc.md) | 101 | `declaration-track:b735585fd1eac2169b725fcc1faf07617346222daa7b434f03e302173ca78ffc` |
| 3 | `theorem` | [pow_left_surj_of_rootableBy](../../../../../mathematics/Algebra/GroupTheory/Divisible/Variant569afc2936d3c369ba7663b48bbe68c34237663effe5aa796e0605ceed1da1ed.lean/declarations/pow-left-surj-of-rootableby--a098f744a5d544a38ed10bcc.md) | 108 | `result-track:a098f744a5d544a38ed10bcc94af3fa4137ff7a6b99348e7135b9a79bc70500d` |
| 4 | `def` | [rootableByOfPowLeftSurj](../../../../../mathematics/Algebra/GroupTheory/Divisible/Variant569afc2936d3c369ba7663b48bbe68c34237663effe5aa796e0605ceed1da1ed.lean/declarations/rootablebyofpowleftsurj--1c358cfd26c58a028c237303.md) | 121 | `declaration-track:1c358cfd26c58a028c23730386f17f368f80bd48ba0f2c86a8ed8d4a638db5be` |
| 5 | `instance` | [Pi.rootableBy](../../../../../mathematics/Algebra/GroupTheory/Divisible/Variant569afc2936d3c369ba7663b48bbe68c34237663effe5aa796e0605ceed1da1ed.lean/declarations/pi-rootableby--cca8a020b5ccac39d4724210.md) | 139 | `declaration-track:cca8a020b5ccac39d4724210f0bde59eba39476dc7f591cf1f7f5faa445e5ceb` |
| 6 | `instance` | [Prod.rootableBy](../../../../../mathematics/Algebra/GroupTheory/Divisible/Variant569afc2936d3c369ba7663b48bbe68c34237663effe5aa796e0605ceed1da1ed.lean/declarations/prod-rootableby--55f0fd9c0bc3e9e1ea487bae.md) | 155 | `declaration-track:55f0fd9c0bc3e9e1ea487baee7c6f829d96121c01cc5a0a451d073cb9bcc2d98` |
| 7 | `theorem` | [smul_top_eq_top_of_divisibleBy_int](../../../../../mathematics/Algebra/GroupTheory/Divisible/Variant569afc2936d3c369ba7663b48bbe68c34237663effe5aa796e0605ceed1da1ed.lean/declarations/smul-top-eq-top-of-divisibleby-int--9c8e99c69e8c9f1d93243158.md) | 170 | `result-track:9c8e99c69e8c9f1d93243158a02f4247d790a51f55158227ecc511da38059512` |
| 8 | `def` | [divisibleByIntOfSmulTopEqTop](../../../../../mathematics/Algebra/GroupTheory/Divisible/Variant569afc2936d3c369ba7663b48bbe68c34237663effe5aa796e0605ceed1da1ed.lean/declarations/divisiblebyintofsmultopeqtop--a4976a175e1dbd0b77315a2c.md) | 177 | `declaration-track:a4976a175e1dbd0b77315a2c8914e0aeba036cc5d9ddf55dab6d72ab889316aa` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Divisible/Variant569afc2936d3c369ba7663b48bbe68c34237663effe5aa796e0605ceed1da1ed.lean/declarations/instance--4965e8f1a6a2824500e44cb6.md) | 190 | `declaration-track:4965e8f1a6a2824500e44cb6a86e40fcbae57fbe2b65d6552ae72a28ae246b9f` |
| 10 | `def` | [rootableByIntOfRootableByNat](../../../../../mathematics/Algebra/GroupTheory/Divisible/Variant569afc2936d3c369ba7663b48bbe68c34237663effe5aa796e0605ceed1da1ed.lean/declarations/rootablebyintofrootablebynat--14837247d9d088a7013141d6.md) | 206 | `declaration-track:14837247d9d088a7013141d617aeec369ea9224b195440b0775330b4e9fdf8a1` |
| 11 | `def` | [rootableByNatOfRootableByInt](../../../../../mathematics/Algebra/GroupTheory/Divisible/Variant569afc2936d3c369ba7663b48bbe68c34237663effe5aa796e0605ceed1da1ed.lean/declarations/rootablebynatofrootablebyint--858db3ce79a23cf756716c27.md) | 229 | `declaration-track:858db3ce79a23cf756716c276780f3478c620c3d35b5abee7026a3d990cc0f2a` |
| 12 | `def` | [Function.Surjective.rootableBy](../../../../../mathematics/Algebra/GroupTheory/Divisible/Variant569afc2936d3c369ba7663b48bbe68c34237663effe5aa796e0605ceed1da1ed.lean/declarations/function-surjective-rootableby--12ddea56e2d23257e0a9ca2e.md) | 255 | `declaration-track:12ddea56e2d23257e0a9ca2e0fc3168c3aa1c7b1f0bea8414f5e89a1be0c0a9b` |
| 13 | `theorem` | [RootableBy.surjective_pow](../../../../../mathematics/Algebra/GroupTheory/Divisible/Variant569afc2936d3c369ba7663b48bbe68c34237663effe5aa796e0605ceed1da1ed.lean/declarations/rootableby-surjective-pow--b710dd45f643f44b134e8cd4.md) | 265 | `result-track:b710dd45f643f44b134e8cd4b26fe8fae6b8a2611019c01f1d6348746577df91` |
| 14 | `instance` | [QuotientGroup.rootableBy](../../../../../mathematics/Algebra/GroupTheory/Divisible/Variant569afc2936d3c369ba7663b48bbe68c34237663effe5aa796e0605ceed1da1ed.lean/declarations/quotientgroup-rootableby--f31ce3fa33d7ecad3f13e2ea.md) | 279 | `declaration-track:f31ce3fa33d7ecad3f13e2eae3a0f19d0ca6fc6a67a92f4e0509bd1ec63ea210` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
