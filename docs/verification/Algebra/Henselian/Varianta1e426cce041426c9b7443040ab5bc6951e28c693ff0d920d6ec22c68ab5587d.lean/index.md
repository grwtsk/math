# Verification target: GRWTSK.Algebra.Henselian.Varianta1e426cce041426c9b7443040ab5bc6951e28c693ff0d920d6ec22c68ab5587d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4674ab1d89067d1c4ed36a6ba90f70bfa6b0efda",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Henselian/Varianta1e426cce041426c9b7443040ab5bc6951e28c693ff0d920d6ec22c68ab5587d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Henselian/Varianta1e426cce041426c9b7443040ab5bc6951e28c693ff0d920d6ec22c68ab5587d.lean/index.md) · [Full source](../../../../mathematics/Algebra/Henselian/Varianta1e426cce041426c9b7443040ab5bc6951e28c693ff0d920d6ec22c68ab5587d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4674ab1d89067d1c4ed36a6ba90f70bfa6b0efda`.

Source path: `GRWTSK/Algebra/Henselian/Varianta1e426cce041426c9b7443040ab5bc6951e28c693ff0d920d6ec22c68ab5587d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Henselian/Varianta1e426cce041426c9b7443040ab5bc6951e28c693ff0d920d6ec22c68ab5587d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Polynomial.Taylor` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.LocalRing` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.AdicCompletion` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [isLocalRingHom_of_le_jacobson_bot](../../../../mathematics/Algebra/Henselian/Varianta1e426cce041426c9b7443040ab5bc6951e28c693ff0d920d6ec22c68ab5587d.lean/declarations/islocalringhom-of-le-jacobson-bot--2003744f8d5d76b958f3d998.md) | 73 | `result-track:2003744f8d5d76b958f3d998714efc9bae32005b11e5632be5b0d75210d1e5d7` |
| 2 | `class` | [HenselianRing](../../../../mathematics/Algebra/Henselian/Varianta1e426cce041426c9b7443040ab5bc6951e28c693ff0d920d6ec22c68ab5587d.lean/declarations/henselianring--cadef692736ea75a7a026ab7.md) | 101 | `declaration-track:cadef692736ea75a7a026ab7eb744d395d3affc5214f5af6b1c0f742448de28f` |
| 3 | `class` | [HenselianLocalRing](../../../../mathematics/Algebra/Henselian/Varianta1e426cce041426c9b7443040ab5bc6951e28c693ff0d920d6ec22c68ab5587d.lean/declarations/henselianlocalring--1d333e8506a7ddfe250cc2e7.md) | 116 | `declaration-track:1d333e8506a7ddfe250cc2e76335dbd74690a970dcc3fc9847551866e88ee00c` |
| 4 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Henselian/Varianta1e426cce041426c9b7443040ab5bc6951e28c693ff0d920d6ec22c68ab5587d.lean/declarations/instance--67eaae9ee7c3aca8bd5eb6ac.md) | 123 | `declaration-track:67eaae9ee7c3aca8bd5eb6ac0527a1d25f3106c570060c4d2b28757bd98eb25a` |
| 5 | `theorem` | [HenselianLocalRing.TFAE](../../../../mathematics/Algebra/Henselian/Varianta1e426cce041426c9b7443040ab5bc6951e28c693ff0d920d6ec22c68ab5587d.lean/declarations/henselianlocalring-tfae--5163d4ebc473f2cff8462449.md) | 129 | `result-track:5163d4ebc473f2cff846244979f5f7b756127c11fc13cd8ad5b6a267fe4228ea` |
| 6 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Henselian/Varianta1e426cce041426c9b7443040ab5bc6951e28c693ff0d920d6ec22c68ab5587d.lean/declarations/instance--15510ac318a50f59628b5e45.md) | 167 | `declaration-track:15510ac318a50f59628b5e4535da4b3733ac363597fe5599c17a69cc9a974d01` |
| 7 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Henselian/Varianta1e426cce041426c9b7443040ab5bc6951e28c693ff0d920d6ec22c68ab5587d.lean/declarations/instance--a457eaf6e8084aff8084c8ae.md) | 183 | `declaration-track:a457eaf6e8084aff8084c8ae720023c198aa2585584000a6dbf8bd7a40cbb0e9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
