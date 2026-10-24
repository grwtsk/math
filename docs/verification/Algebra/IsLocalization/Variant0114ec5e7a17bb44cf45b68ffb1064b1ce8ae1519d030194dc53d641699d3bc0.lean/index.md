# Verification target: GRWTSK.Algebra.IsLocalization.Variant0114ec5e7a17bb44cf45b68ffb1064b1ce8ae1519d030194dc53d641699d3bc0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d30404dae678363873714863ac3f07e5692ec6d5",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/IsLocalization/Variant0114ec5e7a17bb44cf45b68ffb1064b1ce8ae1519d030194dc53d641699d3bc0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/IsLocalization/Variant0114ec5e7a17bb44cf45b68ffb1064b1ce8ae1519d030194dc53d641699d3bc0.lean/index.md) · [Full source](../../../../mathematics/Algebra/IsLocalization/Variant0114ec5e7a17bb44cf45b68ffb1064b1ce8ae1519d030194dc53d641699d3bc0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d30404dae678363873714863ac3f07e5692ec6d5`.

Source path: `GRWTSK/Algebra/IsLocalization/Variant0114ec5e7a17bb44cf45b68ffb1064b1ce8ae1519d030194dc53d641699d3bc0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/IsLocalization/Variant0114ec5e7a17bb44cf45b68ffb1064b1ce8ae1519d030194dc53d641699d3bc0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Algebra.Bilinear` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.LocalizedModule.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [isLocalizedModule_iff_isLocalization](../../../../mathematics/Algebra/IsLocalization/Variant0114ec5e7a17bb44cf45b68ffb1064b1ce8ae1519d030194dc53d641699d3bc0.lean/declarations/islocalizedmodule-iff-islocalization--21392dd12e043c5d6efe70c5.md) | 20 | `result-track:21392dd12e043c5d6efe70c5b2853c51615fb9901f1daf726cea3dc7183c3acd` |
| 2 | `instance` | [(anonymous)](../../../../mathematics/Algebra/IsLocalization/Variant0114ec5e7a17bb44cf45b68ffb1064b1ce8ae1519d030194dc53d641699d3bc0.lean/declarations/instance--570be84f86bab59b82437a7d.md) | 32 | `declaration-track:570be84f86bab59b82437a7d75c70eacc5f4ffc0edefa961ba8a822f3bad1fb4` |
| 3 | `lemma` | [isLocalizedModule_iff_isLocalization'](../../../../mathematics/Algebra/IsLocalization/Variant0114ec5e7a17bb44cf45b68ffb1064b1ce8ae1519d030194dc53d641699d3bc0.lean/declarations/islocalizedmodule-iff-islocalization--9736aed85afb40889c455db8.md) | 40 | `result-track:9736aed85afb40889c455db8f72297d740e195f6edc933d1d56b4b192231483f` |
| 4 | `instance` | [(anonymous)](../../../../mathematics/Algebra/IsLocalization/Variant0114ec5e7a17bb44cf45b68ffb1064b1ce8ae1519d030194dc53d641699d3bc0.lean/declarations/instance--4b31ac57a75056af1d6cb18b.md) | 45 | `declaration-track:4b31ac57a75056af1d6cb18b3bb70b532dfec34aac3658fa1b008dcecb7bf4b7` |
| 5 | `lemma` | [IsLocalization.mk'_algebraMap_eq_mk'](../../../../mathematics/Algebra/IsLocalization/Variant0114ec5e7a17bb44cf45b68ffb1064b1ce8ae1519d030194dc53d641699d3bc0.lean/declarations/islocalization-mk-algebramap-eq-mk--b686948d3ce228adf8ca38c6.md) | 50 | `result-track:b686948d3ce228adf8ca38c6019058fa2efc091346e2ddf048ed21a4129f8d55` |
| 6 | `lemma` | [IsLocalization.mk'_eq_mk'](../../../../mathematics/Algebra/IsLocalization/Variant0114ec5e7a17bb44cf45b68ffb1064b1ce8ae1519d030194dc53d641699d3bc0.lean/declarations/islocalization-mk-eq-mk--b4f3e9a1ea2a3608591fe99c.md) | 58 | `result-track:b4f3e9a1ea2a3608591fe99cad1e1a7d00b23e2c5406782868f58b19fe222659` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
