# Verification target: GRWTSK.Algebra.Ideal.Variant903e51c63dde0bbfb0289d74f5bad9722b7b92e3e696ff4f647873c8e5ff6c03

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bfec3b2139c59c69dd458e51d25aa4eb044e862e",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Ideal/Variant903e51c63dde0bbfb0289d74f5bad9722b7b92e3e696ff4f647873c8e5ff6c03.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Ideal/Variant903e51c63dde0bbfb0289d74f5bad9722b7b92e3e696ff4f647873c8e5ff6c03.lean/index.md) · [Full source](../../../../mathematics/Algebra/Ideal/Variant903e51c63dde0bbfb0289d74f5bad9722b7b92e3e696ff4f647873c8e5ff6c03.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bfec3b2139c59c69dd458e51d25aa4eb044e862e`.

Source path: `GRWTSK/Algebra/Ideal/Variant903e51c63dde0bbfb0289d74f5bad9722b7b92e3e696ff4f647873c8e5ff6c03.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Ideal/Variant903e51c63dde0bbfb0289d74f5bad9722b7b92e3e696ff4f647873c8e5ff6c03.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Finiteness.Finsupp` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.Maps` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [FG.map](../../../../mathematics/Algebra/Ideal/Variant903e51c63dde0bbfb0289d74f5bad9722b7b92e3e696ff4f647873c8e5ff6c03.lean/declarations/fg-map--b08db02b64f72b559bf65781.md) | 25 | `result-track:b08db02b64f72b559bf6578157f4e5861e60d07eed08d601cb0e184f0bcf52b4` |
| 2 | `theorem` | [fg_ker_comp](../../../../mathematics/Algebra/Ideal/Variant903e51c63dde0bbfb0289d74f5bad9722b7b92e3e696ff4f647873c8e5ff6c03.lean/declarations/fg-ker-comp--6c5f99385ff907d7c8241d19.md) | 32 | `result-track:6c5f99385ff907d7c8241d193bb4bcd75fba8d56582fecb5fa165726f55b90ed` |
| 3 | `theorem` | [exists_radical_pow_le_of_fg](../../../../mathematics/Algebra/Ideal/Variant903e51c63dde0bbfb0289d74f5bad9722b7b92e3e696ff4f647873c8e5ff6c03.lean/declarations/exists-radical-pow-le-of-fg--f243bef516ed6084ecd94757.md) | 44 | `result-track:f243bef516ed6084ecd94757a8d8378d8f163b6761960da8236bb607fd9dc19b` |
| 4 | `theorem` | [exists_pow_le_of_le_radical_of_fg_radical](../../../../mathematics/Algebra/Ideal/Variant903e51c63dde0bbfb0289d74f5bad9722b7b92e3e696ff4f647873c8e5ff6c03.lean/declarations/exists-pow-le-of-le-radical-of-fg-radical--d3d970b12cdb17cb6f3c13eb.md) | 64 | `result-track:d3d970b12cdb17cb6f3c13eb920db8a673263809fee14a05ae0a6f6d0bb5fcc1` |
| 5 | `lemma` | [exists_pow_le_of_le_radical_of_fg](../../../../mathematics/Algebra/Ideal/Variant903e51c63dde0bbfb0289d74f5bad9722b7b92e3e696ff4f647873c8e5ff6c03.lean/declarations/exists-pow-le-of-le-radical-of-fg--139577c81da9faa62689c27f.md) | 76 | `result-track:139577c81da9faa62689c27f5d00d2295bbd20ed007a222d1e769cac19635363` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
