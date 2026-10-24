# Verification target: GRWTSK.Algebra.Killing.Variant4af078c23bf1c32bec3c6aae4d4d0c424902e51a4743af2e9a712845bbc1a521

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b9e217b18a04e3823d7ef765396cce5bbb1df646",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Killing/Variant4af078c23bf1c32bec3c6aae4d4d0c424902e51a4743af2e9a712845bbc1a521.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Killing/Variant4af078c23bf1c32bec3c6aae4d4d0c424902e51a4743af2e9a712845bbc1a521.lean/index.md) · [Full source](../../../../mathematics/Algebra/Killing/Variant4af078c23bf1c32bec3c6aae4d4d0c424902e51a4743af2e9a712845bbc1a521.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b9e217b18a04e3823d7ef765396cce5bbb1df646`.

Source path: `GRWTSK/Algebra/Killing/Variant4af078c23bf1c32bec3c6aae4d4d0c424902e51a4743af2e9a712845bbc1a521.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Killing/Variant4af078c23bf1c32bec3c6aae4d4d0c424902e51a4743af2e9a712845bbc1a521.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Lie.InvariantForm` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Lie.Semisimple.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Lie.TraceForm` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [IsKilling](../../../../mathematics/Algebra/Killing/Variant4af078c23bf1c32bec3c6aae4d4d0c424902e51a4743af2e9a712845bbc1a521.lean/declarations/iskilling--605dc08929b1376df43cada7.md) | 57 | `declaration-track:605dc08929b1376df43cada7f8e05ef85645336f43d066e9616f8cc315990ff7` |
| 2 | `lemma` | [ker_killingForm_eq_bot](../../../../mathematics/Algebra/Killing/Variant4af078c23bf1c32bec3c6aae4d4d0c424902e51a4743af2e9a712845bbc1a521.lean/declarations/ker-killingform-eq-bot--adb3986e7f420fb94af45562.md) | 67 | `result-track:adb3986e7f420fb94af45562ffccc748170fdeeb587a198f8ce7e7d2ffea50f2` |
| 3 | `lemma` | [killingForm_nondegenerate](../../../../mathematics/Algebra/Killing/Variant4af078c23bf1c32bec3c6aae4d4d0c424902e51a4743af2e9a712845bbc1a521.lean/declarations/killingform-nondegenerate--844dc23c7d5efdd2e8b97814.md) | 71 | `result-track:844dc23c7d5efdd2e8b97814bf491715794385f1bafc6d12feeab0ae13bb6a3c` |
| 4 | `lemma` | [ideal_eq_bot_of_isLieAbelian](../../../../mathematics/Algebra/Killing/Variant4af078c23bf1c32bec3c6aae4d4d0c424902e51a4743af2e9a712845bbc1a521.lean/declarations/ideal-eq-bot-of-islieabelian--f14d74d332c1ec979d515a3a.md) | 76 | `result-track:f14d74d332c1ec979d515a3ae5884a24d02826f7543037c55268cd1baeae5cc6` |
| 5 | `instance` | [instSemisimple](../../../../mathematics/Algebra/Killing/Variant4af078c23bf1c32bec3c6aae4d4d0c424902e51a4743af2e9a712845bbc1a521.lean/declarations/instsemisimple--25af279936f6ac658971479b.md) | 82 | `declaration-track:25af279936f6ac658971479bfe26efc75e9f9d7cccfa0a9383ce30f416fd3b26` |
| 6 | `instance` | [instHasTrivialRadical](../../../../mathematics/Algebra/Killing/Variant4af078c23bf1c32bec3c6aae4d4d0c424902e51a4743af2e9a712845bbc1a521.lean/declarations/insthastrivialradical--ab8f5429f264327e2e02f661.md) | 95 | `declaration-track:ab8f5429f264327e2e02f66120bbcccf14f4290d9100929189c6f66c4b8ab55f` |
| 7 | `lemma` | [killingForm_of_equiv_apply](../../../../mathematics/Algebra/Killing/Variant4af078c23bf1c32bec3c6aae4d4d0c424902e51a4743af2e9a712845bbc1a521.lean/declarations/killingform-of-equiv-apply--50717893dc60c8a0cd694fdb.md) | 109 | `result-track:50717893dc60c8a0cd694fdb434beefa1e316f05fc98279f92aa2edfc8d06ae7` |
| 8 | `lemma` | [isKilling_of_equiv](../../../../mathematics/Algebra/Killing/Variant4af078c23bf1c32bec3c6aae4d4d0c424902e51a4743af2e9a712845bbc1a521.lean/declarations/iskilling-of-equiv--f30bf52eb8477037d45d3ee3.md) | 115 | `result-track:f30bf52eb8477037d45d3ee31b975315be0aeb0278fb014fb95ea11080556815` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
