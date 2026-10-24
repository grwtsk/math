# Verification target: GRWTSK.Algebra.CommutativeAlgebra.GroupRingAction.Variant26ec4ec9f850852f5b160cabaa2ae3d38843c69395b56a9ad9f8836f5a6f9b4a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d133278eee149a3e11dc32da0899f32d6f1aa6ef",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/GroupRingAction/Variant26ec4ec9f850852f5b160cabaa2ae3d38843c69395b56a9ad9f8836f5a6f9b4a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/GroupRingAction/Variant26ec4ec9f850852f5b160cabaa2ae3d38843c69395b56a9ad9f8836f5a6f9b4a.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/GroupRingAction/Variant26ec4ec9f850852f5b160cabaa2ae3d38843c69395b56a9ad9f8836f5a6f9b4a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d133278eee149a3e11dc32da0899f32d6f1aa6ef`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/GroupRingAction/Variant26ec4ec9f850852f5b160cabaa2ae3d38843c69395b56a9ad9f8836f5a6f9b4a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/GroupRingAction/Variant26ec4ec9f850852f5b160cabaa2ae3d38843c69395b56a9ad9f8836f5a6f9b4a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.GroupRingAction.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Hom.GroupAction` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Polynomial.AlgebraMap` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Polynomial.Monic` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.GroupAction.Quotient` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [smul_eq_map](../../../../../mathematics/Algebra/CommutativeAlgebra/GroupRingAction/Variant26ec4ec9f850852f5b160cabaa2ae3d38843c69395b56a9ad9f8836f5a6f9b4a.lean/declarations/smul-eq-map--3fcd02ca349c153c363690a8.md) | 40 | `result-track:3fcd02ca349c153c363690a85b84d164a66d1da8e0791106003f69a4165f6fb3` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/CommutativeAlgebra/GroupRingAction/Variant26ec4ec9f850852f5b160cabaa2ae3d38843c69395b56a9ad9f8836f5a6f9b4a.lean/declarations/instance--4611e1fd29e82d6879c9be2b.md) | 53 | `declaration-track:4611e1fd29e82d6879c9be2b2daca1351e3cda1f07bf4334ed0e8289e2707dbf` |
| 3 | `theorem` | [smul_X](../../../../../mathematics/Algebra/CommutativeAlgebra/GroupRingAction/Variant26ec4ec9f850852f5b160cabaa2ae3d38843c69395b56a9ad9f8836f5a6f9b4a.lean/declarations/smul-x--5fe9c89ca546d191bb07fc9d.md) | 66 | `result-track:5fe9c89ca546d191bb07fc9d3dc3de958e40ca17c7343eb757254fd251dc5ab5` |
| 4 | `theorem` | [smul_eval_smul](../../../../../mathematics/Algebra/CommutativeAlgebra/GroupRingAction/Variant26ec4ec9f850852f5b160cabaa2ae3d38843c69395b56a9ad9f8836f5a6f9b4a.lean/declarations/smul-eval-smul--2b41bc4310df5e5b8064ecf3.md) | 73 | `result-track:2b41bc4310df5e5b8064ecf32da295beafc593f6ae2454e6486bf8e4c8d9d0dd` |
| 5 | `theorem` | [eval_smul'](../../../../../mathematics/Algebra/CommutativeAlgebra/GroupRingAction/Variant26ec4ec9f850852f5b160cabaa2ae3d38843c69395b56a9ad9f8836f5a6f9b4a.lean/declarations/eval-smul--ef7ac6e6153905722ce08ede.md) | 82 | `result-track:ef7ac6e6153905722ce08edea09cabdd07e01d5687d0504edfaff3be10b6f6e2` |
| 6 | `theorem` | [smul_eval](../../../../../mathematics/Algebra/CommutativeAlgebra/GroupRingAction/Variant26ec4ec9f850852f5b160cabaa2ae3d38843c69395b56a9ad9f8836f5a6f9b4a.lean/declarations/smul-eval--fc974570ceaf9deb1b2dfde5.md) | 87 | `result-track:fc974570ceaf9deb1b2dfde5a20bb447f50804604eee6b4cc07a2e09e5fb62db` |
| 7 | `def` | [prodXSubSmul](../../../../../mathematics/Algebra/CommutativeAlgebra/GroupRingAction/Variant26ec4ec9f850852f5b160cabaa2ae3d38843c69395b56a9ad9f8836f5a6f9b4a.lean/declarations/prodxsubsmul--b15af4a47f97fe04d7995fb3.md) | 106 | `declaration-track:b15af4a47f97fe04d7995fb3b17eecabf5e8401b5240ff7fa02f883346bbc707` |
| 8 | `theorem` | [prodXSubSmul.monic](../../../../../mathematics/Algebra/CommutativeAlgebra/GroupRingAction/Variant26ec4ec9f850852f5b160cabaa2ae3d38843c69395b56a9ad9f8836f5a6f9b4a.lean/declarations/prodxsubsmul-monic--19909ed2f5902fca7b9c430b.md) | 111 | `result-track:19909ed2f5902fca7b9c430bf9947d42c5c32f273159fc989316f041133e36b1` |
| 9 | `theorem` | [prodXSubSmul.eval](../../../../../mathematics/Algebra/CommutativeAlgebra/GroupRingAction/Variant26ec4ec9f850852f5b160cabaa2ae3d38843c69395b56a9ad9f8836f5a6f9b4a.lean/declarations/prodxsubsmul-eval--45847c786852da8a8d3f1c8b.md) | 115 | `result-track:45847c786852da8a8d3f1c8b6d93010cec3277ca0dd16815b1f2a33a43e02abb` |
| 10 | `theorem` | [prodXSubSmul.smul](../../../../../mathematics/Algebra/CommutativeAlgebra/GroupRingAction/Variant26ec4ec9f850852f5b160cabaa2ae3d38843c69395b56a9ad9f8836f5a6f9b4a.lean/declarations/prodxsubsmul-smul--5a7a4e6683fdb9af35bb249e.md) | 120 | `result-track:5a7a4e6683fdb9af35bb249e7c9e226639dd79f6087b0fe579efa884a671e92e` |
| 11 | `theorem` | [prodXSubSmul.coeff](../../../../../mathematics/Algebra/CommutativeAlgebra/GroupRingAction/Variant26ec4ec9f850852f5b160cabaa2ae3d38843c69395b56a9ad9f8836f5a6f9b4a.lean/declarations/prodxsubsmul-coeff--581e54e69b2ef401c4742e04.md) | 126 | `result-track:581e54e69b2ef401c4742e04850238b03278d28b01d48bd2aa88f4ef9b0a06e3` |
| 12 | `def` | [polynomial](../../../../../mathematics/Algebra/CommutativeAlgebra/GroupRingAction/Variant26ec4ec9f850852f5b160cabaa2ae3d38843c69395b56a9ad9f8836f5a6f9b4a.lean/declarations/polynomial--b4f64967bfac61d252fc4709.md) | 144 | `declaration-track:b4f64967bfac61d252fc47091c48925f8827764c9b8dee05035454c15e4175e1` |
| 13 | `theorem` | [coe_polynomial](../../../../../mathematics/Algebra/CommutativeAlgebra/GroupRingAction/Variant26ec4ec9f850852f5b160cabaa2ae3d38843c69395b56a9ad9f8836f5a6f9b4a.lean/declarations/coe-polynomial--2a99f3c5a1c204d62441e8cb.md) | 163 | `result-track:2a99f3c5a1c204d62441e8cbe519f45d9a6d06cde489d4e2c172cd6728389666` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
