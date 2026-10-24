# Verification target: GRWTSK.Algebra.GroupTheory.Idempotent.Variant0f9f0a974b293222b49567b474d676087a346d70643dc1b73c986b0f5eeae421

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ca16f07769118d6174a5553c3e8a0f15951720e9",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Idempotent/Variant0f9f0a974b293222b49567b474d676087a346d70643dc1b73c986b0f5eeae421.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Idempotent/Variant0f9f0a974b293222b49567b474d676087a346d70643dc1b73c986b0f5eeae421.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Idempotent/Variant0f9f0a974b293222b49567b474d676087a346d70643dc1b73c986b0f5eeae421.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ca16f07769118d6174a5553c3e8a0f15951720e9`.

Source path: `GRWTSK/Algebra/GroupTheory/Idempotent/Variant0f9f0a974b293222b49567b474d676087a346d70643dc1b73c986b0f5eeae421.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Idempotent/Variant0f9f0a974b293222b49567b474d676087a346d70643dc1b73c986b0f5eeae421.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Commute.Defs` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Hom.Defs` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Units.Defs` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Subtype` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Conv` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsIdempotentElem](../../../../../mathematics/Algebra/GroupTheory/Idempotent/Variant0f9f0a974b293222b49567b474d676087a346d70643dc1b73c986b0f5eeae421.lean/declarations/isidempotentelem--15b1c8fb19259eda9f963eb0.md) | 34 | `declaration-track:15b1c8fb19259eda9f963eb0d4eed8a1bb8759c433ac9866733d164845c5372d` |
| 2 | `lemma` | [of_isIdempotent](../../../../../mathematics/Algebra/GroupTheory/Idempotent/Variant0f9f0a974b293222b49567b474d676087a346d70643dc1b73c986b0f5eeae421.lean/declarations/of-isidempotent--c9e6bd820bd173f870b0daa8.md) | 40 | `result-track:c9e6bd820bd173f870b0daa8a1d3505cee5a783f6b59a486faaf5e9af8902fc7` |
| 3 | `lemma` | [eq](../../../../../mathematics/Algebra/GroupTheory/Idempotent/Variant0f9f0a974b293222b49567b474d676087a346d70643dc1b73c986b0f5eeae421.lean/declarations/eq--261f2f174aa3ec9779913cf4.md) | 43 | `result-track:261f2f174aa3ec9779913cf438fbc5439d875c3bf429c877247a6604d6016b78` |
| 4 | `lemma` | [mul_of_commute](../../../../../mathematics/Algebra/GroupTheory/Idempotent/Variant0f9f0a974b293222b49567b474d676087a346d70643dc1b73c986b0f5eeae421.lean/declarations/mul-of-commute--2e700931a185637d7192eaf2.md) | 50 | `result-track:2e700931a185637d7192eaf2a1621121f997fdfe1179f9cab8aed2cfe8586a40` |
| 5 | `lemma` | [mul](../../../../../mathematics/Algebra/GroupTheory/Idempotent/Variant0f9f0a974b293222b49567b474d676087a346d70643dc1b73c986b0f5eeae421.lean/declarations/mul--cbd322ec71028414f897b597.md) | 58 | `result-track:cbd322ec71028414f897b59728fddca255e77ac344f067bc6cfe765a7c786399` |
| 6 | `lemma` | [one](../../../../../mathematics/Algebra/GroupTheory/Idempotent/Variant0f9f0a974b293222b49567b474d676087a346d70643dc1b73c986b0f5eeae421.lean/declarations/one--973449d6054a8e05ea007bbf.md) | 66 | `result-track:973449d6054a8e05ea007bbfb4e7a3f34142a1c61a8df7917b3a56c59cd5bbd9` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Idempotent/Variant0f9f0a974b293222b49567b474d676087a346d70643dc1b73c986b0f5eeae421.lean/declarations/instance--1ac6a4f784642fd0d924de22.md) | 68 | `declaration-track:1ac6a4f784642fd0d924de220d58e3937a6f61b2cbaad037c3e90622f7567ba6` |
| 8 | `lemma` | [coe_one](../../../../../mathematics/Algebra/GroupTheory/Idempotent/Variant0f9f0a974b293222b49567b474d676087a346d70643dc1b73c986b0f5eeae421.lean/declarations/coe-one--2395097456362e61b4290234.md) | 70 | `result-track:2395097456362e61b42902347035f9345836196e5d3d30ff4f19a7743a8fee21` |
| 9 | `lemma` | [pow](../../../../../mathematics/Algebra/GroupTheory/Idempotent/Variant0f9f0a974b293222b49567b474d676087a346d70643dc1b73c986b0f5eeae421.lean/declarations/pow--b4d89ed21d4a0e9c2168b06d.md) | 77 | `result-track:b4d89ed21d4a0e9c2168b06d8b52f82433cc7c3d2bb472fbebbfd7141a92eb31` |
| 10 | `lemma` | [pow_succ_eq](../../../../../mathematics/Algebra/GroupTheory/Idempotent/Variant0f9f0a974b293222b49567b474d676087a346d70643dc1b73c986b0f5eeae421.lean/declarations/pow-succ-eq--890b90b576b3ce5bc298a6b1.md) | 83 | `result-track:890b90b576b3ce5bc298a6b164b1a03b8d73efe0b3c51ffb9245e12c038901f7` |
| 11 | `theorem` | [iff_eq_one_of_isUnit](../../../../../mathematics/Algebra/GroupTheory/Idempotent/Variant0f9f0a974b293222b49567b474d676087a346d70643dc1b73c986b0f5eeae421.lean/declarations/iff-eq-one-of-isunit--0ce8dc04a5716ab23edfe717.md) | 86 | `result-track:0ce8dc04a5716ab23edfe7173b2e77dbdd35329d06dd604ca9d84f131405935d` |
| 12 | `lemma` | [iff_eq_one](../../../../../mathematics/Algebra/GroupTheory/Idempotent/Variant0f9f0a974b293222b49567b474d676087a346d70643dc1b73c986b0f5eeae421.lean/declarations/iff-eq-one--cd2d135b8c686496c3d4b807.md) | 97 | `result-track:cd2d135b8c686496c3d4b807799dde11a130270a4c858f84d393fe6ec15ae0d1` |
| 13 | `lemma` | [map](../../../../../mathematics/Algebra/GroupTheory/Idempotent/Variant0f9f0a974b293222b49567b474d676087a346d70643dc1b73c986b0f5eeae421.lean/declarations/map--ef3a80b4990c3a3743598737.md) | 101 | `result-track:ef3a80b4990c3a3743598737be778de5421a90dbc819823405798e30975861e0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
