# Verification target: GRWTSK.Algebra.MonoidAlgebra.Variant9967f814a81aef9e8a3b8c2becf8496a8a105a9e8e202ed793481c5cb2706acc

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "da4adca51d44f7eb2f91a9aa9c9c10a14b5b068e",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/MonoidAlgebra/Variant9967f814a81aef9e8a3b8c2becf8496a8a105a9e8e202ed793481c5cb2706acc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/MonoidAlgebra/Variant9967f814a81aef9e8a3b8c2becf8496a8a105a9e8e202ed793481c5cb2706acc.lean/index.md) · [Full source](../../../../mathematics/Algebra/MonoidAlgebra/Variant9967f814a81aef9e8a3b8c2becf8496a8a105a9e8e202ed793481c5cb2706acc.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `da4adca51d44f7eb2f91a9aa9c9c10a14b5b068e`.

Source path: `GRWTSK/Algebra/MonoidAlgebra/Variant9967f814a81aef9e8a3b8c2becf8496a8a105a9e8e202ed793481c5cb2706acc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/MonoidAlgebra/Variant9967f814a81aef9e8a3b8c2becf8496a8a105a9e8e202ed793481c5cb2706acc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Bialgebra.MonoidAlgebra` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.HopfAlgebra.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [instHopfAlgebraStruct](../../../../mathematics/Algebra/MonoidAlgebra/Variant9967f814a81aef9e8a3b8c2becf8496a8a105a9e8e202ed793481c5cb2706acc.lean/declarations/insthopfalgebrastruct--1bf72bb52d15974043a08703.md) | 43 | `declaration-track:1bf72bb52d15974043a08703fe78ebec93c3804754e7a179808e8b024cedef67` |
| 2 | `lemma` | [antipode_single](../../../../mathematics/Algebra/MonoidAlgebra/Variant9967f814a81aef9e8a3b8c2becf8496a8a105a9e8e202ed793481c5cb2706acc.lean/declarations/antipode-single--04cc76f1b0b8c7620df26e70.md) | 47 | `result-track:04cc76f1b0b8c7620df26e70a4ec88ea2f06089925ce536155d64e41864efadc` |
| 3 | `instance` | [instHopfAlgebra](../../../../mathematics/Algebra/MonoidAlgebra/Variant9967f814a81aef9e8a3b8c2becf8496a8a105a9e8e202ed793481c5cb2706acc.lean/declarations/insthopfalgebra--cc97c487827577f63f4b3594.md) | 52 | `declaration-track:cc97c487827577f63f4b35945a04333a01a3974a1201e7db33e3f320f5308855` |
| 4 | `instance` | [instHopfAlgebraStruct](../../../../mathematics/Algebra/MonoidAlgebra/Variant9967f814a81aef9e8a3b8c2becf8496a8a105a9e8e202ed793481c5cb2706acc.lean/declarations/insthopfalgebrastruct--69759b2166029e700fde31f9.md) | 70 | `declaration-track:69759b2166029e700fde31f939f9c4831fe5d76833f59d6fffaa61ffd2f7826f` |
| 5 | `lemma` | [antipode_single](../../../../mathematics/Algebra/MonoidAlgebra/Variant9967f814a81aef9e8a3b8c2becf8496a8a105a9e8e202ed793481c5cb2706acc.lean/declarations/antipode-single--2e7aadac835a994de04f2664.md) | 74 | `result-track:2e7aadac835a994de04f26644c99978f360378c9ea4ac3299639cafec10d2849` |
| 6 | `instance` | [instHopfAlgebra](../../../../mathematics/Algebra/MonoidAlgebra/Variant9967f814a81aef9e8a3b8c2becf8496a8a105a9e8e202ed793481c5cb2706acc.lean/declarations/insthopfalgebra--9e1d056eec20084508e3ee12.md) | 79 | `declaration-track:9e1d056eec20084508e3ee120df52d67d48c4b796ab5e7ad9e5da1956f0d60f5` |
| 7 | `instance` | [instHopfAlgebra](../../../../mathematics/Algebra/MonoidAlgebra/Variant9967f814a81aef9e8a3b8c2becf8496a8a105a9e8e202ed793481c5cb2706acc.lean/declarations/insthopfalgebra--4135d33e6c98df2972bb7326.md) | 97 | `declaration-track:4135d33e6c98df2972bb7326abcb230ea71910aabe26cd7e23716010523ce9f7` |
| 8 | `theorem` | [antipode_C](../../../../mathematics/Algebra/MonoidAlgebra/Variant9967f814a81aef9e8a3b8c2becf8496a8a105a9e8e202ed793481c5cb2706acc.lean/declarations/antipode-c--e8abfb69f8e520217815be92.md) | 103 | `result-track:e8abfb69f8e520217815be92355653d2e86a5d53e1a3296aa33da93ee4723dd2` |
| 9 | `theorem` | [antipode_T](../../../../mathematics/Algebra/MonoidAlgebra/Variant9967f814a81aef9e8a3b8c2becf8496a8a105a9e8e202ed793481c5cb2706acc.lean/declarations/antipode-t--03e064bd794ed43092b0dc6f.md) | 109 | `result-track:03e064bd794ed43092b0dc6f4b2defac3b3deb192e207a921121bf53a0fa1038` |
| 10 | `theorem` | [antipode_C_mul_T](../../../../mathematics/Algebra/MonoidAlgebra/Variant9967f814a81aef9e8a3b8c2becf8496a8a105a9e8e202ed793481c5cb2706acc.lean/declarations/antipode-c-mul-t--affeb9307128a1786a81823b.md) | 116 | `result-track:affeb9307128a1786a81823b5d92641e52f95cea0ff1b14a8f4d2c3fe021f979` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
