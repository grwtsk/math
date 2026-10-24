# Verification target: GRWTSK.Algebra.Henselian.Variante5f8d324078bc9818da568e896eabc53d5070a68affe59eb03c856873c045c8f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c89fdd348e34eae47fae017a254675e8780bdea9",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Henselian/Variante5f8d324078bc9818da568e896eabc53d5070a68affe59eb03c856873c045c8f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Henselian/Variante5f8d324078bc9818da568e896eabc53d5070a68affe59eb03c856873c045c8f.lean/index.md) · [Full source](../../../../mathematics/Algebra/Henselian/Variante5f8d324078bc9818da568e896eabc53d5070a68affe59eb03c856873c045c8f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c89fdd348e34eae47fae017a254675e8780bdea9`.

Source path: `GRWTSK/Algebra/Henselian/Variante5f8d324078bc9818da568e896eabc53d5070a68affe59eb03c856873c045c8f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Henselian/Variante5f8d324078bc9818da568e896eabc53d5070a68affe59eb03c856873c045c8f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Polynomial.Taylor` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.LocalRing.ResidueField.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.AdicCompletion.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [isLocalHom_of_le_jacobson_bot](../../../../mathematics/Algebra/Henselian/Variante5f8d324078bc9818da568e896eabc53d5070a68affe59eb03c856873c045c8f.lean/declarations/islocalhom-of-le-jacobson-bot--989b80646383d2a4e89541e2.md) | 70 | `result-track:989b80646383d2a4e89541e232a7f1c2e095517dd4bdc78d7550132b9e9cc175` |
| 2 | `class` | [HenselianRing](../../../../mathematics/Algebra/Henselian/Variante5f8d324078bc9818da568e896eabc53d5070a68affe59eb03c856873c045c8f.lean/declarations/henselianring--77a513f7c64c525f0c24d12c.md) | 97 | `declaration-track:77a513f7c64c525f0c24d12c55db30f1ae1c0af5a94502d6998ea02e68dde8ce` |
| 3 | `class` | [HenselianLocalRing](../../../../mathematics/Algebra/Henselian/Variante5f8d324078bc9818da568e896eabc53d5070a68affe59eb03c856873c045c8f.lean/declarations/henselianlocalring--2f9c947ecf968f85e03517c9.md) | 111 | `declaration-track:2f9c947ecf968f85e03517c9a01e8322609ab4ebd6248b259da023782c9983d1` |
| 4 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Henselian/Variante5f8d324078bc9818da568e896eabc53d5070a68affe59eb03c856873c045c8f.lean/declarations/instance--9e4ec7fbc9d0cbda4feb686e.md) | 117 | `declaration-track:9e4ec7fbc9d0cbda4feb686e9b9308c3f9ce5e72229fd42be08897dd0ca3bef9` |
| 5 | `theorem` | [HenselianLocalRing.TFAE](../../../../mathematics/Algebra/Henselian/Variante5f8d324078bc9818da568e896eabc53d5070a68affe59eb03c856873c045c8f.lean/declarations/henselianlocalring-tfae--b37bd405076cc575a4dadb22.md) | 122 | `result-track:b37bd405076cc575a4dadb224b5567f60813d7f6f3f9bd9e689814d7a4bce3f4` |
| 6 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Henselian/Variante5f8d324078bc9818da568e896eabc53d5070a68affe59eb03c856873c045c8f.lean/declarations/instance--d4abdfefaf561fa30b03d684.md) | 157 | `declaration-track:d4abdfefaf561fa30b03d68426e215bbca6af4cabfea5f0ec618633a7b1917cf` |
| 7 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Henselian/Variante5f8d324078bc9818da568e896eabc53d5070a68affe59eb03c856873c045c8f.lean/declarations/instance--d7a8fe581b99af6f221a74c5.md) | 173 | `declaration-track:d7a8fe581b99af6f221a74c5cbd1ce0ce4713227edb4c3474cdcac740ed10581` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
