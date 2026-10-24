# Verification target: GRWTSK.Algebra.GroupTheory.TypeTags.Variant0bc980c7e7a04ba000032d130635f6cdb4517186166ff164eb9031ea76ddd69b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "288586efdfc14c2348cff3e05d2a079444a4aeac",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/TypeTags/Variant0bc980c7e7a04ba000032d130635f6cdb4517186166ff164eb9031ea76ddd69b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/TypeTags/Variant0bc980c7e7a04ba000032d130635f6cdb4517186166ff164eb9031ea76ddd69b.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/TypeTags/Variant0bc980c7e7a04ba000032d130635f6cdb4517186166ff164eb9031ea76ddd69b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `288586efdfc14c2348cff3e05d2a079444a4aeac`.

Source path: `GRWTSK/Algebra/GroupTheory/TypeTags/Variant0bc980c7e7a04ba000032d130635f6cdb4517186166ff164eb9031ea76ddd69b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/TypeTags/Variant0bc980c7e7a04ba000032d130635f6cdb4517186166ff164eb9031ea76ddd69b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [Additive.vadd](../../../../../mathematics/Algebra/GroupTheory/TypeTags/Variant0bc980c7e7a04ba000032d130635f6cdb4517186166ff164eb9031ea76ddd69b.lean/declarations/additive-vadd--46cf35f745f93f45eae82e25.md) | 31 | `declaration-track:46cf35f745f93f45eae82e25ac43cca037049de6af74afddba872526a57d3547` |
| 2 | `instance` | [Multiplicative.smul](../../../../../mathematics/Algebra/GroupTheory/TypeTags/Variant0bc980c7e7a04ba000032d130635f6cdb4517186166ff164eb9031ea76ddd69b.lean/declarations/multiplicative-smul--8c9c093b6af5594dd18e8c1a.md) | 33 | `declaration-track:8c9c093b6af5594dd18e8c1aaca4d7e2e5fb95d74643408c716696c779beab7b` |
| 3 | `lemma` | [toMul_smul](../../../../../mathematics/Algebra/GroupTheory/TypeTags/Variant0bc980c7e7a04ba000032d130635f6cdb4517186166ff164eb9031ea76ddd69b.lean/declarations/tomul-smul--d0b536fcc4bb3a0449c98da8.md) | 35 | `result-track:d0b536fcc4bb3a0449c98da8fb34ad0cc307effeea9268dd4e29cf18ed4765b0` |
| 4 | `lemma` | [ofMul_vadd](../../../../../mathematics/Algebra/GroupTheory/TypeTags/Variant0bc980c7e7a04ba000032d130635f6cdb4517186166ff164eb9031ea76ddd69b.lean/declarations/ofmul-vadd--128840758277f5037d367c55.md) | 37 | `result-track:128840758277f5037d367c551594debcbb3c105d8de9c2e483afa9227ffd586d` |
| 5 | `lemma` | [toAdd_vadd](../../../../../mathematics/Algebra/GroupTheory/TypeTags/Variant0bc980c7e7a04ba000032d130635f6cdb4517186166ff164eb9031ea76ddd69b.lean/declarations/toadd-vadd--5f7c092f52b05d2128d40c76.md) | 39 | `result-track:5f7c092f52b05d2128d40c76bb29c2c9d521a4b4b557cc2d413139f3823858c4` |
| 6 | `lemma` | [ofAdd_smul](../../../../../mathematics/Algebra/GroupTheory/TypeTags/Variant0bc980c7e7a04ba000032d130635f6cdb4517186166ff164eb9031ea76ddd69b.lean/declarations/ofadd-smul--8ed2562a4dd21595f6817295.md) | 42 | `result-track:8ed2562a4dd21595f6817295df021f3a21771ad3252ec38566095a738eaa2f79` |
| 7 | `instance` | [Additive.addAction](../../../../../mathematics/Algebra/GroupTheory/TypeTags/Variant0bc980c7e7a04ba000032d130635f6cdb4517186166ff164eb9031ea76ddd69b.lean/declarations/additive-addaction--15c2bb0d8de54353775fee64.md) | 44 | `declaration-track:15c2bb0d8de54353775fee64e6c64fe45b882ef25cb8056c6dac10e98333d92a` |
| 8 | `instance` | [Multiplicative.mulAction](../../../../../mathematics/Algebra/GroupTheory/TypeTags/Variant0bc980c7e7a04ba000032d130635f6cdb4517186166ff164eb9031ea76ddd69b.lean/declarations/multiplicative-mulaction--d6fe812e20ee987f440a0357.md) | 48 | `declaration-track:d6fe812e20ee987f440a03572d31ac00daff04717f95fbe6b3553722ce673dc3` |
| 9 | `instance` | [Additive.vaddCommClass](../../../../../mathematics/Algebra/GroupTheory/TypeTags/Variant0bc980c7e7a04ba000032d130635f6cdb4517186166ff164eb9031ea76ddd69b.lean/declarations/additive-vaddcommclass--a3bba22b1807aec351c88c44.md) | 53 | `declaration-track:a3bba22b1807aec351c88c44e77d7f7cf998e6c3bb6cfef80b8b35a699ba99a8` |
| 10 | `instance` | [Multiplicative.smulCommClass](../../../../../mathematics/Algebra/GroupTheory/TypeTags/Variant0bc980c7e7a04ba000032d130635f6cdb4517186166ff164eb9031ea76ddd69b.lean/declarations/multiplicative-smulcommclass--ae77de2039b2a9810f03eb7b.md) | 57 | `declaration-track:ae77de2039b2a9810f03eb7bc891c084051bc4528704a126edc88a701103a163` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
