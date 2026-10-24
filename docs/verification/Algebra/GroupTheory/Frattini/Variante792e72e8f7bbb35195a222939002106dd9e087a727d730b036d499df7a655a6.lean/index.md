# Verification target: GRWTSK.Algebra.GroupTheory.Frattini.Variante792e72e8f7bbb35195a222939002106dd9e087a727d730b036d499df7a655a6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ab94bb144f0716194b0e78e465debfdb755a9a95",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Frattini/Variante792e72e8f7bbb35195a222939002106dd9e087a727d730b036d499df7a655a6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Frattini/Variante792e72e8f7bbb35195a222939002106dd9e087a727d730b036d499df7a655a6.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Frattini/Variante792e72e8f7bbb35195a222939002106dd9e087a727d730b036d499df7a655a6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ab94bb144f0716194b0e78e465debfdb755a9a95`.

Source path: `GRWTSK/Algebra/GroupTheory/Frattini/Variante792e72e8f7bbb35195a222939002106dd9e087a727d730b036d499df7a655a6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Frattini/Variante792e72e8f7bbb35195a222939002106dd9e087a727d730b036d499df7a655a6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.GroupTheory.Nilpotent` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Radical` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [frattini](../../../../../mathematics/Algebra/GroupTheory/Frattini/Variante792e72e8f7bbb35195a222939002106dd9e087a727d730b036d499df7a655a6.lean/declarations/frattini--f0fbfcf02284f3fa8bc62311.md) | 20 | `declaration-track:f0fbfcf02284f3fa8bc62311b42177e6cf5996b367c8fc64ced23d72203f449c` |
| 2 | `lemma` | [frattini_le_coatom](../../../../../mathematics/Algebra/GroupTheory/Frattini/Variante792e72e8f7bbb35195a222939002106dd9e087a727d730b036d499df7a655a6.lean/declarations/frattini-le-coatom--bbb80ed02e1640a85d667f66.md) | 25 | `result-track:bbb80ed02e1640a85d667f66782a1ef17d653fcc10afb3d9c23af1d4910dac3b` |
| 3 | `lemma` | [frattini_le_comap_frattini_of_surjective](../../../../../mathematics/Algebra/GroupTheory/Frattini/Variante792e72e8f7bbb35195a222939002106dd9e087a727d730b036d499df7a655a6.lean/declarations/frattini-le-comap-frattini-of-surjective--7fbcdf9b8e5217577a5f6029.md) | 30 | `result-track:7fbcdf9b8e5217577a5f6029c30a86541788920f47d67d430d65e3506ff8b2c0` |
| 4 | `instance` | [frattini_characteristic](../../../../../mathematics/Algebra/GroupTheory/Frattini/Variante792e72e8f7bbb35195a222939002106dd9e087a727d730b036d499df7a655a6.lean/declarations/frattini-characteristic--a4bd7f78b76477e8086d4e0f.md) | 38 | `declaration-track:a4bd7f78b76477e8086d4e0f7285753b6d99113b1690845a02b6eadcf232ef51` |
| 5 | `theorem` | [frattini_nongenerating](../../../../../mathematics/Algebra/GroupTheory/Frattini/Variante792e72e8f7bbb35195a222939002106dd9e087a727d730b036d499df7a655a6.lean/declarations/frattini-nongenerating--889eb9fcf034902c80dc5d85.md) | 49 | `result-track:889eb9fcf034902c80dc5d85116a8e779746271cacbad213d91a83e10f135a8c` |
| 6 | `theorem` | [frattini_nilpotent](../../../../../mathematics/Algebra/GroupTheory/Frattini/Variante792e72e8f7bbb35195a222939002106dd9e087a727d730b036d499df7a655a6.lean/declarations/frattini-nilpotent--808dbacbefe762229cace5bd.md) | 54 | `result-track:808dbacbefe762229cace5bdb2bf837214c9e6d28d40dee262e333b5ea6b867d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
