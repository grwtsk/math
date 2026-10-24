# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.MomentPath.Variant48902082fecc3d1e3731d2a151ec242de309e754d78afd63b46b93ebc24bcb7a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "39bd0fe2ead6f3fcf5172242f35be88807a0dff2",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/MomentPath/Variant48902082fecc3d1e3731d2a151ec242de309e754d78afd63b46b93ebc24bcb7a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MomentPath/Variant48902082fecc3d1e3731d2a151ec242de309e754d78afd63b46b93ebc24bcb7a.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MomentPath/Variant48902082fecc3d1e3731d2a151ec242de309e754d78afd63b46b93ebc24bcb7a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `39bd0fe2ead6f3fcf5172242f35be88807a0dff2`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/MomentPath/Variant48902082fecc3d1e3731d2a151ec242de309e754d78afd63b46b93ebc24bcb7a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/MomentPath/Variant48902082fecc3d1e3731d2a151ec242de309e754d78afd63b46b93ebc24bcb7a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [VaughanAtomKind](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MomentPath/Variant48902082fecc3d1e3731d2a151ec242de309e754d78afd63b46b93ebc24bcb7a.lean/declarations/vaughanatomkind--eb1ab4b980ae0797a832fd4e.md) | 42 | `declaration-track:eb1ab4b980ae0797a832fd4ee8577b179e121ae5d603eab0002e4c7e82d7cb8e` |
| 2 | `structure` | [ConductorThreeCoefficientPacketFrame](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MomentPath/Variant48902082fecc3d1e3731d2a151ec242de309e754d78afd63b46b93ebc24bcb7a.lean/declarations/conductorthreecoefficientpacketframe--571722382d76c17d27dd0229.md) | 52 | `declaration-track:571722382d76c17d27dd02297abe9ab54400fe05426d9bfa911bc6d4b6d24b34` |
| 3 | `def` | [entryFiber](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MomentPath/Variant48902082fecc3d1e3731d2a151ec242de309e754d78afd63b46b93ebc24bcb7a.lean/declarations/entryfiber--117f72506e12892b9f22c4f0.md) | 69 | `declaration-track:117f72506e12892b9f22c4f06158546768efcaff000f75e3f77445af506595fe` |
| 4 | `theorem` | [entryFiber_disjoint_of_ne](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MomentPath/Variant48902082fecc3d1e3731d2a151ec242de309e754d78afd63b46b93ebc24bcb7a.lean/declarations/entryfiber-disjoint-of-ne--7b1f09b2a499b681808c3043.md) | 77 | `result-track:7b1f09b2a499b681808c30435211325c78ccef93d17e9ea6f7d84c070571191a` |
| 5 | `theorem` | [momentClock_covers_atoms](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MomentPath/Variant48902082fecc3d1e3731d2a151ec242de309e754d78afd63b46b93ebc24bcb7a.lean/declarations/momentclock-covers-atoms--b52b5144cae33c91cafc0bba.md) | 90 | `result-track:b52b5144cae33c91cafc0bbaa207d25fc791425551717544cace483f826a1f93` |
| 6 | `def` | [entryState](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MomentPath/Variant48902082fecc3d1e3731d2a151ec242de309e754d78afd63b46b93ebc24bcb7a.lean/declarations/entrystate--f6ac34ac1584301a69bba5a7.md) | 101 | `declaration-track:f6ac34ac1584301a69bba5a7b7758e58e5204ac0019a623f25111c00a6705458` |
| 7 | `def` | [packetSynthesis](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MomentPath/Variant48902082fecc3d1e3731d2a151ec242de309e754d78afd63b46b93ebc24bcb7a.lean/declarations/packetsynthesis--0fa9ec1cef827efb92454998.md) | 108 | `declaration-track:0fa9ec1cef827efb92454998638a0966580bb60b1e115f0622cad940ea956243` |
| 8 | `def` | [momentCoefficients](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MomentPath/Variant48902082fecc3d1e3731d2a151ec242de309e754d78afd63b46b93ebc24bcb7a.lean/declarations/momentcoefficients--0d09e98740524ad2612566e7.md) | 122 | `declaration-track:0d09e98740524ad2612566e7e299716019e9cb38811e73072fd0e404ee73309d` |
| 9 | `def` | [momentState](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MomentPath/Variant48902082fecc3d1e3731d2a151ec242de309e754d78afd63b46b93ebc24bcb7a.lean/declarations/momentstate--566ecc42fbb9943dd53d969f.md) | 130 | `declaration-track:566ecc42fbb9943dd53d969f3d46a36f7c6e4bb0134ff5659ea52a1f19975603` |
| 10 | `theorem` | [packetSynthesis_momentCoefficients](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MomentPath/Variant48902082fecc3d1e3731d2a151ec242de309e754d78afd63b46b93ebc24bcb7a.lean/declarations/packetsynthesis-momentcoefficients--f3593c9d342115bb4c721f2f.md) | 137 | `result-track:f3593c9d342115bb4c721f2f01f402211e24d1bdd603d201ae947971178b7e1c` |
| 11 | `theorem` | [atom_enters_at_unique_moment](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MomentPath/Variant48902082fecc3d1e3731d2a151ec242de309e754d78afd63b46b93ebc24bcb7a.lean/declarations/atom-enters-at-unique-moment--8267010306f0ca5d2945cb04.md) | 151 | `result-track:8267010306f0ca5d2945cb0451e7c9609e398b5a8d023770927a73b3ad90314e` |
| 12 | `theorem` | [amplitude_moment_eq_psi](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MomentPath/Variant48902082fecc3d1e3731d2a151ec242de309e754d78afd63b46b93ebc24bcb7a.lean/declarations/amplitude-moment-eq-psi--106be23a0648bf9eb375ae3e.md) | 161 | `result-track:106be23a0648bf9eb375ae3ef882fe7953e44a0cfd8e7acf5d73ff0ac9efde63` |
| 13 | `theorem` | [readout_momentState](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MomentPath/Variant48902082fecc3d1e3731d2a151ec242de309e754d78afd63b46b93ebc24bcb7a.lean/declarations/readout-momentstate--c3207c8ee61e63f7d1b02e3a.md) | 248 | `result-track:c3207c8ee61e63f7d1b02e3a23345e7367b67d7721faf3e968fc51065c7e749b` |
| 14 | `theorem` | [momentState_succ_sub](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MomentPath/Variant48902082fecc3d1e3731d2a151ec242de309e754d78afd63b46b93ebc24bcb7a.lean/declarations/momentstate-succ-sub--b1786b1e8045f1d55181f8c8.md) | 270 | `result-track:b1786b1e8045f1d55181f8c89faa402824d8b750b1382673b4454d60e894a20e` |
| 15 | `def` | [canonicalRankOneCoefficientFrame](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MomentPath/Variant48902082fecc3d1e3731d2a151ec242de309e754d78afd63b46b93ebc24bcb7a.lean/declarations/canonicalrankonecoefficientframe--a0974ff444d8e23e447639ba.md) | 305 | `declaration-track:a0974ff444d8e23e447639bab717ef01a75f1c08195149f7899dbcb083d6e7c7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
