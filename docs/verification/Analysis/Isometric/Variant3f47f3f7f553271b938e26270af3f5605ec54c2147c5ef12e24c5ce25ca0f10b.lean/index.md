# Verification target: GRWTSK.Analysis.Isometric.Variant3f47f3f7f553271b938e26270af3f5605ec54c2147c5ef12e24c5ce25ca0f10b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a6ec6e1bdf737358ab4e4bdf1e9edfe09d889b1b",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Isometric/Variant3f47f3f7f553271b938e26270af3f5605ec54c2147c5ef12e24c5ce25ca0f10b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/Isometric/Variant3f47f3f7f553271b938e26270af3f5605ec54c2147c5ef12e24c5ce25ca0f10b.lean/index.md) · [Full source](../../../../mathematics/Analysis/Isometric/Variant3f47f3f7f553271b938e26270af3f5605ec54c2147c5ef12e24c5ce25ca0f10b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a6ec6e1bdf737358ab4e4bdf1e9edfe09d889b1b`.

Source path: `GRWTSK/Analysis/Isometric/Variant3f47f3f7f553271b938e26270af3f5605ec54c2147c5ef12e24c5ce25ca0f10b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Isometric/Variant3f47f3f7f553271b938e26270af3f5605ec54c2147c5ef12e24c5ce25ca0f10b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.ContinuousFunctionalCalculus.Rpow.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.CStarAlgebra.ContinuousFunctionalCalculus.Isometric` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [nnnorm_nnrpow](../../../../mathematics/Analysis/Isometric/Variant3f47f3f7f553271b938e26270af3f5605ec54c2147c5ef12e24c5ce25ca0f10b.lean/declarations/nnnorm-nnrpow--12d5820193129212185898b9.md) | 42 | `result-track:12d5820193129212185898b9ee0fe3944f03c03c9e5bf6147c8c185adfbc56ba` |
| 2 | `lemma` | [norm_nnrpow](../../../../mathematics/Analysis/Isometric/Variant3f47f3f7f553271b938e26270af3f5605ec54c2147c5ef12e24c5ce25ca0f10b.lean/declarations/norm-nnrpow--a645ab0d7871cd3edecc3a6c.md) | 46 | `result-track:a645ab0d7871cd3edecc3a6c9ec296f35f257d6df4f8f37f7d4545311d758602` |
| 3 | `lemma` | [nnnorm_sqrt](../../../../mathematics/Analysis/Isometric/Variant3f47f3f7f553271b938e26270af3f5605ec54c2147c5ef12e24c5ce25ca0f10b.lean/declarations/nnnorm-sqrt--74409a6f966ace11ed12f343.md) | 50 | `result-track:74409a6f966ace11ed12f343f402952ba8bb01c6046a2fafc487c91e4590ced2` |
| 4 | `lemma` | [norm_sqrt](../../../../mathematics/Analysis/Isometric/Variant3f47f3f7f553271b938e26270af3f5605ec54c2147c5ef12e24c5ce25ca0f10b.lean/declarations/norm-sqrt--7bcbfc2eac96cf4899937653.md) | 54 | `result-track:7bcbfc2eac96cf4899937653a20a94fc560d4999cfc2248621ee012f0bc478f3` |
| 5 | `lemma` | [nnnorm_rpow](../../../../mathematics/Analysis/Isometric/Variant3f47f3f7f553271b938e26270af3f5605ec54c2147c5ef12e24c5ce25ca0f10b.lean/declarations/nnnorm-rpow--35b5fed3b631d85ac9bf4271.md) | 65 | `result-track:35b5fed3b631d85ac9bf4271766d0b69103c43fe7e8a95cec290351bca49dd54` |
| 6 | `lemma` | [norm_rpow](../../../../mathematics/Analysis/Isometric/Variant3f47f3f7f553271b938e26270af3f5605ec54c2147c5ef12e24c5ce25ca0f10b.lean/declarations/norm-rpow--a1898e8da81420b67726c5fc.md) | 71 | `result-track:a1898e8da81420b67726c5fca7e99edc6c576a7b715b1cb38e3e8f2243f1e376` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
