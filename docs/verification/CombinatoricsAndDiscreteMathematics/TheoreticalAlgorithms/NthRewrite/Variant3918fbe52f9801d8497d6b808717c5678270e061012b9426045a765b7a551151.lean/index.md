# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.NthRewrite.Variant3918fbe52f9801d8497d6b808717c5678270e061012b9426045a765b7a551151

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "377330b9cdd22cf97acbdf6d28eee051b640e1cc",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NthRewrite/Variant3918fbe52f9801d8497d6b808717c5678270e061012b9426045a765b7a551151.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NthRewrite/Variant3918fbe52f9801d8497d6b808717c5678270e061012b9426045a765b7a551151.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NthRewrite/Variant3918fbe52f9801d8497d6b808717c5678270e061012b9426045a765b7a551151.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `377330b9cdd22cf97acbdf6d28eee051b640e1cc`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NthRewrite/Variant3918fbe52f9801d8497d6b808717c5678270e061012b9426045a765b7a551151.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NthRewrite/Variant3918fbe52f9801d8497d6b808717c5678270e061012b9426045a765b7a551151.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic.NthRewrite` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Defs` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Vector.Defs` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Nat` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `example` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NthRewrite/Variant3918fbe52f9801d8497d6b808717c5678270e061012b9426045a765b7a551151.lean/declarations/example--2768b6d47562bb84771db2d9.md) | 18 | `declaration-track:2768b6d47562bb84771db2d9e9f5881b121fb5d8d02b1431b7e1e1ba271c9789` |
| 2 | `example` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NthRewrite/Variant3918fbe52f9801d8497d6b808717c5678270e061012b9426045a765b7a551151.lean/declarations/example--c7fdd8e1405aead54d6f4098.md) | 22 | `declaration-track:c7fdd8e1405aead54d6f4098977204acfbde302a4067f6034479c7c1171bda6b` |
| 3 | `structure` | [F](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NthRewrite/Variant3918fbe52f9801d8497d6b808717c5678270e061012b9426045a765b7a551151.lean/declarations/f--142adb6e31adf5dc0d555e28.md) | 25 | `declaration-track:142adb6e31adf5dc0d555e28e3bdf0587a03023c1b423e96a9734576721a6196` |
| 4 | `example` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NthRewrite/Variant3918fbe52f9801d8497d6b808717c5678270e061012b9426045a765b7a551151.lean/declarations/example--f373120c5f7224156d3676f6.md) | 30 | `declaration-track:f373120c5f7224156d3676f69a0adc801732eddfcbf49bb89ef5ea286bd77763` |
| 5 | `structure` | [Cat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NthRewrite/Variant3918fbe52f9801d8497d6b808717c5678270e061012b9426045a765b7a551151.lean/declarations/cat--1ad5b26243b948026a8aba71.md) | 33 | `declaration-track:1ad5b26243b948026a8aba71bf00d6abc4a8356bff11ec4519f1a594f1774fd8` |
| 6 | `example` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NthRewrite/Variant3918fbe52f9801d8497d6b808717c5678270e061012b9426045a765b7a551151.lean/declarations/example--8657eb6be7d50c7d1f9e7759.md) | 42 | `declaration-track:8657eb6be7d50c7d1f9e7759e2b2da58a2650c7504532f13db246d9045d1668b` |
| 7 | `example` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NthRewrite/Variant3918fbe52f9801d8497d6b808717c5678270e061012b9426045a765b7a551151.lean/declarations/example--f9767703c5c8f15a3ddc539a.md) | 46 | `declaration-track:f9767703c5c8f15a3ddc539af5d54566214fc5283f86b131d527ec2ef9a25543` |
| 8 | `example` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NthRewrite/Variant3918fbe52f9801d8497d6b808717c5678270e061012b9426045a765b7a551151.lean/declarations/example--3a70e393ef98e6f5ffad9330.md) | 49 | `declaration-track:3a70e393ef98e6f5ffad9330fafffdf5223eed0ebe2ed93e6c3a5cfd908fbc32` |
| 9 | `axiom` | [foo](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NthRewrite/Variant3918fbe52f9801d8497d6b808717c5678270e061012b9426045a765b7a551151.lean/declarations/foo--6a33b9fabdf75c3158569a6b.md) | 56 | `declaration-track:6a33b9fabdf75c3158569a6b4c35d9ef856f332c7efd91e14d22ff6e68ca0f2d` |
| 10 | `example` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NthRewrite/Variant3918fbe52f9801d8497d6b808717c5678270e061012b9426045a765b7a551151.lean/declarations/example--d7b710f3a0c99aa4657fba28.md) | 58 | `declaration-track:d7b710f3a0c99aa4657fba28c1f68f04d4df51b5ca7a143a0fb82e6687483d66` |
| 11 | `axiom` | [foo'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NthRewrite/Variant3918fbe52f9801d8497d6b808717c5678270e061012b9426045a765b7a551151.lean/declarations/foo--f07898999080c77f4cf8371b.md) | 61 | `declaration-track:f07898999080c77f4cf8371b5db213336bbab568f60593cfda2e27b1c7f344e4` |
| 12 | `axiom` | [bar'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NthRewrite/Variant3918fbe52f9801d8497d6b808717c5678270e061012b9426045a765b7a551151.lean/declarations/bar--da203c9e8eb977fd84b4a23d.md) | 62 | `declaration-track:da203c9e8eb977fd84b4a23d267c24def05302f7afcf8c65cf5e5b89219d00f1` |
| 13 | `example` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NthRewrite/Variant3918fbe52f9801d8497d6b808717c5678270e061012b9426045a765b7a551151.lean/declarations/example--1d8189916175aa81c521316c.md) | 64 | `declaration-track:1d8189916175aa81c521316c1bc422a8e1f343d0d6971c27f741131296e706cf` |
| 14 | `example` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NthRewrite/Variant3918fbe52f9801d8497d6b808717c5678270e061012b9426045a765b7a551151.lean/declarations/example--29e2c4ffe1979f96ac4461bf.md) | 71 | `declaration-track:29e2c4ffe1979f96ac4461bf8e025b951fa1d04d45d24a12ba5f920db88d38ce` |
| 15 | `axiom` | [wowzer](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NthRewrite/Variant3918fbe52f9801d8497d6b808717c5678270e061012b9426045a765b7a551151.lean/declarations/wowzer--f7e5b426883ed2c7a5de96df.md) | 75 | `declaration-track:f7e5b426883ed2c7a5de96dfe6e632c4aece6d1e02d55345fa69e4f25f3dbb3f` |
| 16 | `axiom` | [kachow](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NthRewrite/Variant3918fbe52f9801d8497d6b808717c5678270e061012b9426045a765b7a551151.lean/declarations/kachow--4046754ee51220bfa08a868e.md) | 76 | `declaration-track:4046754ee51220bfa08a868e1809f4d96e2210858dc93eae27bbd020f38b67ec` |
| 17 | `axiom` | [pchew](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NthRewrite/Variant3918fbe52f9801d8497d6b808717c5678270e061012b9426045a765b7a551151.lean/declarations/pchew--0a5415c5618bf349dd1ab9d5.md) | 77 | `declaration-track:0a5415c5618bf349dd1ab9d52a8d62872275a12f1fcc7def8ee66f5902e2b593` |
| 18 | `axiom` | [smash](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NthRewrite/Variant3918fbe52f9801d8497d6b808717c5678270e061012b9426045a765b7a551151.lean/declarations/smash--56dcfbf3945ba6cd32ee25dc.md) | 78 | `declaration-track:56dcfbf3945ba6cd32ee25dc0a0e76a40f92e7596d480ff75cc9eb14375c2ff3` |
| 19 | `example` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NthRewrite/Variant3918fbe52f9801d8497d6b808717c5678270e061012b9426045a765b7a551151.lean/declarations/example--d64e7d888591e04724a54582.md) | 80 | `declaration-track:d64e7d888591e04724a5458276dcf995a8fd1d207c8821d4ba3983730023e792` |
| 20 | `example` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NthRewrite/Variant3918fbe52f9801d8497d6b808717c5678270e061012b9426045a765b7a551151.lean/declarations/example--79f79554892121c08c24d22b.md) | 93 | `declaration-track:79f79554892121c08c24d22b9732e245ec7cd7ae63e5afc8105547c97b1dec13` |
| 21 | `example` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NthRewrite/Variant3918fbe52f9801d8497d6b808717c5678270e061012b9426045a765b7a551151.lean/declarations/example--674bb36f401b8697971be2bb.md) | 99 | `declaration-track:674bb36f401b8697971be2bbca1bf259bb424ad94d6bdf1ebcb93a96bbfde16b` |
| 22 | `example` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NthRewrite/Variant3918fbe52f9801d8497d6b808717c5678270e061012b9426045a765b7a551151.lean/declarations/example--50d043e6bc758b65f4a71988.md) | 105 | `declaration-track:50d043e6bc758b65f4a719885c7a392e3ceeee860da11e4e08eeebc06a52c49c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
