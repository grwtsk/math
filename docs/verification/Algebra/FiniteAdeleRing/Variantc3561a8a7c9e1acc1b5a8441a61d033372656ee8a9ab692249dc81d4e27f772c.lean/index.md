# Verification target: GRWTSK.Algebra.FiniteAdeleRing.Variantc3561a8a7c9e1acc1b5a8441a61d033372656ee8a9ab692249dc81d4e27f772c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8580e4ac2eeba3ff22fb39856fb6df1805272d8f",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/FiniteAdeleRing/Variantc3561a8a7c9e1acc1b5a8441a61d033372656ee8a9ab692249dc81d4e27f772c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/FiniteAdeleRing/Variantc3561a8a7c9e1acc1b5a8441a61d033372656ee8a9ab692249dc81d4e27f772c.lean/index.md) · [Full source](../../../../mathematics/Algebra/FiniteAdeleRing/Variantc3561a8a7c9e1acc1b5a8441a61d033372656ee8a9ab692249dc81d4e27f772c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8580e4ac2eeba3ff22fb39856fb6df1805272d8f`.

Source path: `GRWTSK/Algebra/FiniteAdeleRing/Variantc3561a8a7c9e1acc1b5a8441a61d033372656ee8a9ab692249dc81d4e27f772c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/FiniteAdeleRing/Variantc3561a8a7c9e1acc1b5a8441a61d033372656ee8a9ab692249dc81d4e27f772c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.DedekindDomain.AdicValuation` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.DedekindDomain.Factorization` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.RestrictedProduct` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [HeightOneSpectrum.Support](../../../../mathematics/Algebra/FiniteAdeleRing/Variantc3561a8a7c9e1acc1b5a8441a61d033372656ee8a9ab692249dc81d4e27f772c.lean/declarations/heightonespectrum-support--4a6bc190ffbf15f2891ee6e8.md) | 38 | `declaration-track:4a6bc190ffbf15f2891ee6e809976864305c07f9f217fa63bc3ee6d8dc36c159` |
| 2 | `lemma` | [HeightOneSpectrum.Support.finite](../../../../mathematics/Algebra/FiniteAdeleRing/Variantc3561a8a7c9e1acc1b5a8441a61d033372656ee8a9ab692249dc81d4e27f772c.lean/declarations/heightonespectrum-support-finite--a966d6f2160cf5cabe4b5eac.md) | 45 | `result-track:a966d6f2160cf5cabe4b5eac51108e5a2e125319c0fb8035d3d3df78c1a05487` |
| 3 | `abbrev` | [FiniteAdeleRing](../../../../mathematics/Algebra/FiniteAdeleRing/Variantc3561a8a7c9e1acc1b5a8441a61d033372656ee8a9ab692249dc81d4e27f772c.lean/declarations/finiteadelering--b3d3190dac31c5cc9081fed0.md) | 88 | `declaration-track:b3d3190dac31c5cc9081fed0365971bf4f22eceb157c4bda435c58c3ecdddfe8` |
| 4 | `def` | [algebraMap](../../../../mathematics/Algebra/FiniteAdeleRing/Variantc3561a8a7c9e1acc1b5a8441a61d033372656ee8a9ab692249dc81d4e27f772c.lean/declarations/algebramap--f1ffd06e47e1ed4e408ff77d.md) | 99 | `declaration-track:f1ffd06e47e1ed4e408ff77ddaaa29312061a445f5093e7f0035f7ca248d8803` |
| 5 | `instance` | [(anonymous)](../../../../mathematics/Algebra/FiniteAdeleRing/Variantc3561a8a7c9e1acc1b5a8441a61d033372656ee8a9ab692249dc81d4e27f772c.lean/declarations/instance--659b20bc7638641b071b9a4b.md) | 111 | `declaration-track:659b20bc7638641b071b9a4b6778216242d3e09ab0a5ba39171b8814c8f3b1e9` |
| 6 | `instance` | [(anonymous)](../../../../mathematics/Algebra/FiniteAdeleRing/Variantc3561a8a7c9e1acc1b5a8441a61d033372656ee8a9ab692249dc81d4e27f772c.lean/declarations/instance--57a0fcfab1ebe9a2e54fca8b.md) | 113 | `declaration-track:57a0fcfab1ebe9a2e54fca8b7a30656d935d992e80c375d75f112e4d53981f75` |
| 7 | `instance` | [(anonymous)](../../../../mathematics/Algebra/FiniteAdeleRing/Variantc3561a8a7c9e1acc1b5a8441a61d033372656ee8a9ab692249dc81d4e27f772c.lean/declarations/instance--7c729cea4cd0fbf425b77e37.md) | 115 | `declaration-track:7c729cea4cd0fbf425b77e379ac3f57d39db3d67c1f407e3ce6bc71208c61fe0` |
| 8 | `lemma` | [ext](../../../../mathematics/Algebra/FiniteAdeleRing/Variantc3561a8a7c9e1acc1b5a8441a61d033372656ee8a9ab692249dc81d4e27f772c.lean/declarations/ext--e9ae63e56cbfce9070c741a3.md) | 120 | `result-track:e9ae63e56cbfce9070c741a38184e1f8ad95af8fe29ae05ee0749d5031877fce` |
| 9 | `instance` | [(anonymous)](../../../../mathematics/Algebra/FiniteAdeleRing/Variantc3561a8a7c9e1acc1b5a8441a61d033372656ee8a9ab692249dc81d4e27f772c.lean/declarations/instance--3f4233f985b69d4894a50670.md) | 123 | `declaration-track:3f4233f985b69d4894a5067007f04e7eece84644ae7b57461900a7959e5e3a4c` |
| 10 | `instance` | [(anonymous)](../../../../mathematics/Algebra/FiniteAdeleRing/Variantc3561a8a7c9e1acc1b5a8441a61d033372656ee8a9ab692249dc81d4e27f772c.lean/declarations/instance--cc93ebe6799cde56bbb91b81.md) | 129 | `declaration-track:cc93ebe6799cde56bbb91b81c5ad58c20bfbb999453d8920121110dffe3c2b8a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
