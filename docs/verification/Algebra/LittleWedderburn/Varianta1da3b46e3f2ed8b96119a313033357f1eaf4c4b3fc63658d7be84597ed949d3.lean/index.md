# Verification target: GRWTSK.Algebra.LittleWedderburn.Varianta1da3b46e3f2ed8b96119a313033357f1eaf4c4b3fc63658d7be84597ed949d3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f577c30bc1d21977047eaf1bc6807a37d0c75c79",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LittleWedderburn/Varianta1da3b46e3f2ed8b96119a313033357f1eaf4c4b3fc63658d7be84597ed949d3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/LittleWedderburn/Varianta1da3b46e3f2ed8b96119a313033357f1eaf4c4b3fc63658d7be84597ed949d3.lean/index.md) · [Full source](../../../../mathematics/Algebra/LittleWedderburn/Varianta1da3b46e3f2ed8b96119a313033357f1eaf4c4b3fc63658d7be84597ed949d3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f577c30bc1d21977047eaf1bc6807a37d0c75c79`.

Source path: `GRWTSK/Algebra/LittleWedderburn/Varianta1da3b46e3f2ed8b96119a313033357f1eaf4c4b3fc63658d7be84597ed949d3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LittleWedderburn/Varianta1da3b46e3f2ed8b96119a313033357f1eaf4c4b3fc63658d7be84597ed949d3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.GroupWithZero.Action.Center` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.ClassEquation` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Polynomial.Cyclotomic.Eval` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [InductionHyp](../../../../mathematics/Algebra/LittleWedderburn/Varianta1da3b46e3f2ed8b96119a313033357f1eaf4c4b3fc63658d7be84597ed949d3.lean/declarations/inductionhyp--3e534ac130497ac92ddcbf59.md) | 53 | `declaration-track:3e534ac130497ac92ddcbf59f526a328e9d9d0f927cdccac7df2d9fe49d83a7e` |
| 2 | `def` | [field](../../../../mathematics/Algebra/LittleWedderburn/Varianta1da3b46e3f2ed8b96119a313033357f1eaf4c4b3fc63658d7be84597ed949d3.lean/declarations/field--f493629e5cdc36adad19ef19.md) | 62 | `declaration-track:f493629e5cdc36adad19ef19e53bbee71b74c8d121db8a9edfea5282d9bf9d2c` |
| 3 | `theorem` | [center_eq_top](../../../../mathematics/Algebra/LittleWedderburn/Varianta1da3b46e3f2ed8b96119a313033357f1eaf4c4b3fc63658d7be84597ed949d3.lean/declarations/center-eq-top--f34a676c05e3d2a474197537.md) | 69 | `result-track:f34a676c05e3d2a47419753703ee5f77a9c0af0e4ef6e420436b17acf0c0cb5b` |
| 4 | `theorem` | [center_eq_top](../../../../mathematics/Algebra/LittleWedderburn/Varianta1da3b46e3f2ed8b96119a313033357f1eaf4c4b3fc63658d7be84597ed949d3.lean/declarations/center-eq-top--de5cb943cb5557ca49ee72c3.md) | 146 | `result-track:de5cb943cb5557ca49ee72c38e9744cb10d1cb7891cd64e231f9a9f0f8eb96dc` |
| 5 | `instance` | [(anonymous)](../../../../mathematics/Algebra/LittleWedderburn/Varianta1da3b46e3f2ed8b96119a313033357f1eaf4c4b3fc63658d7be84597ed949d3.lean/declarations/instance--28afb4f879ef7dd2416928f7.md) | 168 | `declaration-track:28afb4f879ef7dd2416928f7c3904520a9be29f58daf7b43644eb7eafb6a6d0d` |
| 6 | `theorem` | [Finite.isDomain_to_isField](../../../../mathematics/Algebra/LittleWedderburn/Varianta1da3b46e3f2ed8b96119a313033357f1eaf4c4b3fc63658d7be84597ed949d3.lean/declarations/finite-isdomain-to-isfield--97cc7b5495570bd2153b8019.md) | 175 | `result-track:97cc7b5495570bd2153b8019c4b61270a9fef611c25118e289f8d10f737c83a6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
