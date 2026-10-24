# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.Resolver.Varianta4b65d25223d0eeb8025827d41d466916ff61c0fb32ecc626d622f81efcad2d9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f4e6fcb1e4760a84b203682f92930500904d407f",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Resolver/Varianta4b65d25223d0eeb8025827d41d466916ff61c0fb32ecc626d622f81efcad2d9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Resolver/Varianta4b65d25223d0eeb8025827d41d466916ff61c0fb32ecc626d622f81efcad2d9.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Resolver/Varianta4b65d25223d0eeb8025827d41d466916ff61c0fb32ecc626d622f81efcad2d9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f4e6fcb1e4760a84b203682f92930500904d407f`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Resolver/Varianta4b65d25223d0eeb8025827d41d466916ff61c0fb32ecc626d622f81efcad2d9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Resolver/Varianta4b65d25223d0eeb8025827d41d466916ff61c0fb32ecc626d622f81efcad2d9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.Resolution.Validation` — import line 1; external provider; requires a separately pinned dependency.
- `Mathematics.Resolution.Continuation` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ResolverProfile](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Resolver/Varianta4b65d25223d0eeb8025827d41d466916ff61c0fb32ecc626d622f81efcad2d9.lean/declarations/resolverprofile--9c552c7d3e8caf024f9331ce.md) | 17 | `declaration-track:9c552c7d3e8caf024f9331ce72bc8b1c64acee63c248e9a2984177e9defa6e97` |
| 2 | `inductive` | [CertifiedResolution](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Resolver/Varianta4b65d25223d0eeb8025827d41d466916ff61c0fb32ecc626d622f81efcad2d9.lean/declarations/certifiedresolution--6ea1565676fb39552b465a05.md) | 48 | `declaration-track:6ea1565676fb39552b465a0521c747ed69995f105149bd3d6c477e9a4ef28ff8` |
| 3 | `def` | [CertifiedResolution.IsRejected](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Resolver/Varianta4b65d25223d0eeb8025827d41d466916ff61c0fb32ecc626d622f81efcad2d9.lean/declarations/certifiedresolution-isrejected--758f94872b493ee41ff057d1.md) | 78 | `declaration-track:758f94872b493ee41ff057d1cc96da840c7e1b0ea7a0299a9768b5b8509aff32` |
| 4 | `def` | [cfor](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Resolver/Varianta4b65d25223d0eeb8025827d41d466916ff61c0fb32ecc626d622f81efcad2d9.lean/declarations/cfor--260a9293d809968d07b1ccb0.md) | 96 | `declaration-track:260a9293d809968d07b1ccb0481bb9112e2013c39a116760240706d63165e2ac` |
| 5 | `theorem` | [cfor_rejected_exactly_when_cut_invalid](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Resolver/Varianta4b65d25223d0eeb8025827d41d466916ff61c0fb32ecc626d622f81efcad2d9.lean/declarations/cfor-rejected-exactly-when-cut-invalid--2b13bc3508264493e0d1e316.md) | 137 | `result-track:2b13bc3508264493e0d1e3163eac0fffec8dbc15ccd8f72f521e47111957d136` |
| 6 | `theorem` | [cfor_total](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Resolver/Varianta4b65d25223d0eeb8025827d41d466916ff61c0fb32ecc626d622f81efcad2d9.lean/declarations/cfor-total--7302e1099bcaf21e1f4cdcec.md) | 160 | `result-track:7302e1099bcaf21e1f4cdcecd127c7caa8ac42c5cba95cc44a2c067956541ace` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
