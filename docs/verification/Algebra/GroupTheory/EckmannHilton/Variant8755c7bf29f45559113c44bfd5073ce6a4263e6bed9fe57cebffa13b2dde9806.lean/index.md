# Verification target: GRWTSK.Algebra.GroupTheory.EckmannHilton.Variant8755c7bf29f45559113c44bfd5073ce6a4263e6bed9fe57cebffa13b2dde9806

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "44c6520317fe1eee275fe968634f113e28969d10",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/EckmannHilton/Variant8755c7bf29f45559113c44bfd5073ce6a4263e6bed9fe57cebffa13b2dde9806.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/EckmannHilton/Variant8755c7bf29f45559113c44bfd5073ce6a4263e6bed9fe57cebffa13b2dde9806.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/EckmannHilton/Variant8755c7bf29f45559113c44bfd5073ce6a4263e6bed9fe57cebffa13b2dde9806.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `44c6520317fe1eee275fe968634f113e28969d10`.

Source path: `GRWTSK/Algebra/GroupTheory/EckmannHilton/Variant8755c7bf29f45559113c44bfd5073ce6a4263e6bed9fe57cebffa13b2dde9806.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/EckmannHilton/Variant8755c7bf29f45559113c44bfd5073ce6a4263e6bed9fe57cebffa13b2dde9806.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Defs` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [IsUnital](../../../../../mathematics/Algebra/GroupTheory/EckmannHilton/Variant8755c7bf29f45559113c44bfd5073ce6a4263e6bed9fe57cebffa13b2dde9806.lean/declarations/isunital--ef2c98101319c7ae61f8b688.md) | 35 | `declaration-track:ef2c98101319c7ae61f8b688430b0b203a854bb4844ee4e3996c900f7948ca1c` |
| 2 | `theorem` | [MulOneClass.isUnital](../../../../../mathematics/Algebra/GroupTheory/EckmannHilton/Variant8755c7bf29f45559113c44bfd5073ce6a4263e6bed9fe57cebffa13b2dde9806.lean/declarations/muloneclass-isunital--b99be545a978fab61146223c.md) | 38 | `result-track:b99be545a978fab61146223c80c352291bff8fdd61b0bdce07b8bbdcf42d69e6` |
| 3 | `theorem` | [one](../../../../../mathematics/Algebra/GroupTheory/EckmannHilton/Variant8755c7bf29f45559113c44bfd5073ce6a4263e6bed9fe57cebffa13b2dde9806.lean/declarations/one--b5586d658085190f825fa631.md) | 53 | `result-track:b5586d658085190f825fa631f52bffcb2833bffe2ef7a19176a5b31ff0e826ff` |
| 4 | `theorem` | [mul](../../../../../mathematics/Algebra/GroupTheory/EckmannHilton/Variant8755c7bf29f45559113c44bfd5073ce6a4263e6bed9fe57cebffa13b2dde9806.lean/declarations/mul--e9a1e3d410a883909e1beb62.md) | 60 | `result-track:e9a1e3d410a883909e1beb6210ddce3cc4b14e51c508e2b9a8e21c5e567b8ec2` |
| 5 | `theorem` | [mul_comm](../../../../../mathematics/Algebra/GroupTheory/EckmannHilton/Variant8755c7bf29f45559113c44bfd5073ce6a4263e6bed9fe57cebffa13b2dde9806.lean/declarations/mul-comm--64dca0cc0da82a2434340c8d.md) | 71 | `result-track:64dca0cc0da82a2434340c8d35385ee959780553d0c49e3e0d3f7e7a3c3efd6c` |
| 6 | `theorem` | [mul_assoc](../../../../../mathematics/Algebra/GroupTheory/EckmannHilton/Variant8755c7bf29f45559113c44bfd5073ce6a4263e6bed9fe57cebffa13b2dde9806.lean/declarations/mul-assoc--eca69339b712406b98bd1270.md) | 78 | `result-track:eca69339b712406b98bd1270fe5310634bdd0f8901598d5117a42d3f4b2f3494` |
| 7 | `abbrev` | [commMonoid](../../../../../mathematics/Algebra/GroupTheory/EckmannHilton/Variant8755c7bf29f45559113c44bfd5073ce6a4263e6bed9fe57cebffa13b2dde9806.lean/declarations/commmonoid--53367281c5ecde5bc81a9e4d.md) | 86 | `declaration-track:53367281c5ecde5bc81a9e4dc9548152d5981bb63d3d1aeed74d04e8ff3203ac` |
| 8 | `abbrev` | [commGroup](../../../../../mathematics/Algebra/GroupTheory/EckmannHilton/Variant8755c7bf29f45559113c44bfd5073ce6a4263e6bed9fe57cebffa13b2dde9806.lean/declarations/commgroup--8a481649721263f982f739a0.md) | 97 | `declaration-track:8a481649721263f982f739a064d17fd430287193991eb5f537828e737130f47d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
