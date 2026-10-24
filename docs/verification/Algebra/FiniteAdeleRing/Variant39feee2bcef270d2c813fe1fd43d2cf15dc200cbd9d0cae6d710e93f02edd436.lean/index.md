# Verification target: GRWTSK.Algebra.FiniteAdeleRing.Variant39feee2bcef270d2c813fe1fd43d2cf15dc200cbd9d0cae6d710e93f02edd436

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e9aa4e8de4293bccb1dee90bfc365764e2c4dff3",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/FiniteAdeleRing/Variant39feee2bcef270d2c813fe1fd43d2cf15dc200cbd9d0cae6d710e93f02edd436.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/FiniteAdeleRing/Variant39feee2bcef270d2c813fe1fd43d2cf15dc200cbd9d0cae6d710e93f02edd436.lean/index.md) · [Full source](../../../../mathematics/Algebra/FiniteAdeleRing/Variant39feee2bcef270d2c813fe1fd43d2cf15dc200cbd9d0cae6d710e93f02edd436.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e9aa4e8de4293bccb1dee90bfc365764e2c4dff3`.

Source path: `GRWTSK/Algebra/FiniteAdeleRing/Variant39feee2bcef270d2c813fe1fd43d2cf15dc200cbd9d0cae6d710e93f02edd436.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/FiniteAdeleRing/Variant39feee2bcef270d2c813fe1fd43d2cf15dc200cbd9d0cae6d710e93f02edd436.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.DedekindDomain.AdicValuation` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.DedekindDomain.Factorization` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.RestrictedProduct` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [HeightOneSpectrum.Support](../../../../mathematics/Algebra/FiniteAdeleRing/Variant39feee2bcef270d2c813fe1fd43d2cf15dc200cbd9d0cae6d710e93f02edd436.lean/declarations/heightonespectrum-support--11821b12fe4cd350b484a7e5.md) | 46 | `declaration-track:11821b12fe4cd350b484a7e53af8ace073a9a9cf473768ff9bd87be737a81616` |
| 2 | `lemma` | [HeightOneSpectrum.Support.finite](../../../../mathematics/Algebra/FiniteAdeleRing/Variant39feee2bcef270d2c813fe1fd43d2cf15dc200cbd9d0cae6d710e93f02edd436.lean/declarations/heightonespectrum-support-finite--28434da1b25aa4766c8cacda.md) | 53 | `result-track:28434da1b25aa4766c8cacdae3744da4524a3b8256e36d12edbdd3b28d09a2f0` |
| 3 | `abbrev` | [FiniteAdeleRing](../../../../mathematics/Algebra/FiniteAdeleRing/Variant39feee2bcef270d2c813fe1fd43d2cf15dc200cbd9d0cae6d710e93f02edd436.lean/declarations/finiteadelering--429d4ae206971ef0499106fe.md) | 96 | `declaration-track:429d4ae206971ef0499106fec3d03084fb05419c45e65ab54ce61d9ca1ab946f` |
| 4 | `def` | [algebraMap](../../../../mathematics/Algebra/FiniteAdeleRing/Variant39feee2bcef270d2c813fe1fd43d2cf15dc200cbd9d0cae6d710e93f02edd436.lean/declarations/algebramap--bb1f5f2beaea958944f40834.md) | 107 | `declaration-track:bb1f5f2beaea958944f4083453db44f058f078e4170f25b3a7803a1cf1d14b03` |
| 5 | `instance` | [(anonymous)](../../../../mathematics/Algebra/FiniteAdeleRing/Variant39feee2bcef270d2c813fe1fd43d2cf15dc200cbd9d0cae6d710e93f02edd436.lean/declarations/instance--544342df4715984c86de74eb.md) | 119 | `declaration-track:544342df4715984c86de74ebcefe321732ba2f8a341618798faa2cb18f7f8a5d` |
| 6 | `instance` | [(anonymous)](../../../../mathematics/Algebra/FiniteAdeleRing/Variant39feee2bcef270d2c813fe1fd43d2cf15dc200cbd9d0cae6d710e93f02edd436.lean/declarations/instance--b5a195d38b571dced7a0b3dc.md) | 121 | `declaration-track:b5a195d38b571dced7a0b3dc0d4a89187f6d52cbca18a25e7f664e80ec03c85a` |
| 7 | `instance` | [(anonymous)](../../../../mathematics/Algebra/FiniteAdeleRing/Variant39feee2bcef270d2c813fe1fd43d2cf15dc200cbd9d0cae6d710e93f02edd436.lean/declarations/instance--62571e494348c66c022f4594.md) | 123 | `declaration-track:62571e494348c66c022f4594106142bb96eaa4cf6ff0c18fbb727317244afdb8` |
| 8 | `lemma` | [ext](../../../../mathematics/Algebra/FiniteAdeleRing/Variant39feee2bcef270d2c813fe1fd43d2cf15dc200cbd9d0cae6d710e93f02edd436.lean/declarations/ext--31763680107f0e89dfe3c6a6.md) | 128 | `result-track:31763680107f0e89dfe3c6a67a299c57a347f77760223954d8301a728f807fba` |
| 9 | `instance` | [(anonymous)](../../../../mathematics/Algebra/FiniteAdeleRing/Variant39feee2bcef270d2c813fe1fd43d2cf15dc200cbd9d0cae6d710e93f02edd436.lean/declarations/instance--8d8b9390be09cb11a91643b6.md) | 131 | `declaration-track:8d8b9390be09cb11a91643b6f527319df199befbe336487b2ca502573158f55f` |
| 10 | `instance` | [(anonymous)](../../../../mathematics/Algebra/FiniteAdeleRing/Variant39feee2bcef270d2c813fe1fd43d2cf15dc200cbd9d0cae6d710e93f02edd436.lean/declarations/instance--443ef4bbfa110ce9ebd968d6.md) | 137 | `declaration-track:443ef4bbfa110ce9ebd968d601a158725d3cd27c8bc2da3399ff394337cdecca` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
