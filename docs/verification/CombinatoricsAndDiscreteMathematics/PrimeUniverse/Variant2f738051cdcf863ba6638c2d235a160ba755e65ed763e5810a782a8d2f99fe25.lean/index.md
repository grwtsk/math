# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.PrimeUniverse.Variant2f738051cdcf863ba6638c2d235a160ba755e65ed763e5810a782a8d2f99fe25

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ccf1c6a8cd8746d934bcb23180b0c6b5cd7a6f55",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/PrimeUniverse/Variant2f738051cdcf863ba6638c2d235a160ba755e65ed763e5810a782a8d2f99fe25.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PrimeUniverse/Variant2f738051cdcf863ba6638c2d235a160ba755e65ed763e5810a782a8d2f99fe25.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PrimeUniverse/Variant2f738051cdcf863ba6638c2d235a160ba755e65ed763e5810a782a8d2f99fe25.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ccf1c6a8cd8746d934bcb23180b0c6b5cd7a6f55`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/PrimeUniverse/Variant2f738051cdcf863ba6638c2d235a160ba755e65ed763e5810a782a8d2f99fe25.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/PrimeUniverse/Variant2f738051cdcf863ba6638c2d235a160ba755e65ed763e5810a782a8d2f99fe25.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.SemiLocalDefect.Basic` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Prime.Basic` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Prod` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.DeriveFintype` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [FinitePrimeUniverse](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PrimeUniverse/Variant2f738051cdcf863ba6638c2d235a160ba755e65ed763e5810a782a8d2f99fe25.lean/declarations/finiteprimeuniverse--ee70efdaac5cd4aabb9df7bc.md) | 18 | `declaration-track:ee70efdaac5cd4aabb9df7bc816879b9d846c72ed6350cc2cd48bff807f8fb47` |
| 2 | `structure` | [PrimeUniverseEmbedding](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PrimeUniverse/Variant2f738051cdcf863ba6638c2d235a160ba755e65ed763e5810a782a8d2f99fe25.lean/declarations/primeuniverseembedding--42c48f7cadcedacedd3ffca2.md) | 32 | `declaration-track:42c48f7cadcedacedd3ffca26fc0b997349e7e5c433ae1179f444ab9729356c6` |
| 3 | `structure` | [PrimeInsertionEdge](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PrimeUniverse/Variant2f738051cdcf863ba6638c2d235a160ba755e65ed763e5810a782a8d2f99fe25.lean/declarations/primeinsertionedge--a60bd7aaa5ef755357b07aaf.md) | 41 | `declaration-track:a60bd7aaa5ef755357b07aaf731003515863522eb5ed80a669207a7594b47c9b` |
| 4 | `def` | [PrimeInsertionEdge.target](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PrimeUniverse/Variant2f738051cdcf863ba6638c2d235a160ba755e65ed763e5810a782a8d2f99fe25.lean/declarations/primeinsertionedge-target--3e535a470a24500d5f309e57.md) | 48 | `declaration-track:3e535a470a24500d5f309e5701b2c36924d49733f259d663837c746b5692cffe` |
| 5 | `theorem` | [PrimeInsertionEdge.source_ssubset_target](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PrimeUniverse/Variant2f738051cdcf863ba6638c2d235a160ba755e65ed763e5810a782a8d2f99fe25.lean/declarations/primeinsertionedge-source-ssubset-target--3214481612124419d137b8b3.md) | 54 | `result-track:3214481612124419d137b8b3670bda847a03231d029dc8779d9d17a7ae0d568a` |
| 6 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PrimeUniverse/Variant2f738051cdcf863ba6638c2d235a160ba755e65ed763e5810a782a8d2f99fe25.lean/declarations/instance--83105d48f831853aef7f9111.md) | 67 | `declaration-track:83105d48f831853aef7f911116993e572a72e41ec2e9f1a08729ec34a96d9781` |
| 7 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PrimeUniverse/Variant2f738051cdcf863ba6638c2d235a160ba755e65ed763e5810a782a8d2f99fe25.lean/declarations/instance--7b7e408c5e3cb7c67d6b6db5.md) | 90 | `declaration-track:7b7e408c5e3cb7c67d6b6db5932ca0a6920a071553e160d63639b6b7e6b4f8c1` |
| 8 | `theorem` | [finitePrimeUniverse_node_count](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PrimeUniverse/Variant2f738051cdcf863ba6638c2d235a160ba755e65ed763e5810a782a8d2f99fe25.lean/declarations/finiteprimeuniverse-node-count--24b26d3820e25a34ecd31934.md) | 95 | `result-track:24b26d3820e25a34ecd31934a33ac29073f7033ff1f6052c61b2f20aae915856` |
| 9 | `structure` | [PrimeCutCardinalityCertificate](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PrimeUniverse/Variant2f738051cdcf863ba6638c2d235a160ba755e65ed763e5810a782a8d2f99fe25.lean/declarations/primecutcardinalitycertificate--7b71e38466c88a411174cbff.md) | 101 | `declaration-track:7b71e38466c88a411174cbff2d0ccd46100123e21a9af1a37cb873521df38aa4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
