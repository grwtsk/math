# Verification target: GRWTSK.Algebra.Liouville.Variant2348992a9e1b66a9577c37922208fd8897d77b9da21b9dcada655a302317cee3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7e2b8ad285a8c71949e545d611536925dd54be74",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Liouville/Variant2348992a9e1b66a9577c37922208fd8897d77b9da21b9dcada655a302317cee3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Liouville/Variant2348992a9e1b66a9577c37922208fd8897d77b9da21b9dcada655a302317cee3.lean/index.md) · [Full source](../../../../mathematics/Algebra/Liouville/Variant2348992a9e1b66a9577c37922208fd8897d77b9da21b9dcada655a302317cee3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7e2b8ad285a8c71949e545d611536925dd54be74`.

Source path: `GRWTSK/Algebra/Liouville/Variant2348992a9e1b66a9577c37922208fd8897d77b9da21b9dcada655a302317cee3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Liouville/Variant2348992a9e1b66a9577c37922208fd8897d77b9da21b9dcada655a302317cee3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [IsLiouville](../../../../mathematics/Algebra/Liouville/Variant2348992a9e1b66a9577c37922208fd8897d77b9da21b9dcada655a302317cee3.lean/declarations/isliouville--4f1e61a6f30e58fe0e508a54.md) | 45 | `declaration-track:4f1e61a6f30e58fe0e508a543ec849ddf561c8a4bbfbecc2327cab28e79d1dcd` |
| 2 | `instance` | [IsLiouville.rfl](../../../../mathematics/Algebra/Liouville/Variant2348992a9e1b66a9577c37922208fd8897d77b9da21b9dcada655a302317cee3.lean/declarations/isliouville-rfl--515e5bb6a30c9f8497914038.md) | 51 | `declaration-track:515e5bb6a30c9f84979140387670f7ac3f53f377f976529b2e8b73cb73e1a46a` |
| 3 | `lemma` | [IsLiouville.trans](../../../../mathematics/Algebra/Liouville/Variant2348992a9e1b66a9577c37922208fd8897d77b9da21b9dcada655a302317cee3.lean/declarations/isliouville-trans--eaeb92beaa30465bc3ecdf5f.md) | 56 | `result-track:eaeb92beaa30465bc3ecdf5f2f434947fa4cb618060098acbd843609ca965092` |
| 4 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Liouville/Variant2348992a9e1b66a9577c37922208fd8897d77b9da21b9dcada655a302317cee3.lean/declarations/instance--d395068c9924cbe044539baa.md) | 87 | `declaration-track:d395068c9924cbe044539baa2c28b8ab22b0ed5c196d6814cb44573db027ff9b` |
| 5 | `lemma` | [IsLiouville.equiv](../../../../mathematics/Algebra/Liouville/Variant2348992a9e1b66a9577c37922208fd8897d77b9da21b9dcada655a302317cee3.lean/declarations/isliouville-equiv--8298af63ba2b3a923dfb7d64.md) | 110 | `result-track:8298af63ba2b3a923dfb7d64c6241f9599cf204473099ea923be10bd5b48a7d4` |
| 6 | `instance` | [isLiouville_of_finiteDimensional_galois](../../../../mathematics/Algebra/Liouville/Variant2348992a9e1b66a9577c37922208fd8897d77b9da21b9dcada655a302317cee3.lean/declarations/isliouville-of-finitedimensional-galois--4a669ab9ae5fffefa857966d.md) | 123 | `declaration-track:4a669ab9ae5fffefa857966daaa361b4b77092254086b318b095060e69362767` |
| 7 | `instance` | [isLiouville_of_finiteDimensional](../../../../mathematics/Algebra/Liouville/Variant2348992a9e1b66a9577c37922208fd8897d77b9da21b9dcada655a302317cee3.lean/declarations/isliouville-of-finitedimensional--b8afb8b07610a83f82567a6a.md) | 199 | `declaration-track:b8afb8b07610a83f82567a6afc1832abd66f9bfd104fed6a69f842480ffd9ea9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
