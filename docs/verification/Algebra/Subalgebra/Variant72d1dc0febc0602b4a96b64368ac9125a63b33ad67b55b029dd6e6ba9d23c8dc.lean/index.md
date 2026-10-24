# Verification target: GRWTSK.Algebra.Subalgebra.Variant72d1dc0febc0602b4a96b64368ac9125a63b33ad67b55b029dd6e6ba9d23c8dc

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2af1809058e505b671d69a472f784d45817d1a9d",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Subalgebra/Variant72d1dc0febc0602b4a96b64368ac9125a63b33ad67b55b029dd6e6ba9d23c8dc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Subalgebra/Variant72d1dc0febc0602b4a96b64368ac9125a63b33ad67b55b029dd6e6ba9d23c8dc.lean/index.md) · [Full source](../../../../mathematics/Algebra/Subalgebra/Variant72d1dc0febc0602b4a96b64368ac9125a63b33ad67b55b029dd6e6ba9d23c8dc.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2af1809058e505b671d69a472f784d45817d1a9d`.

Source path: `GRWTSK/Algebra/Subalgebra/Variant72d1dc0febc0602b4a96b64368ac9125a63b33ad67b55b029dd6e6ba9d23c8dc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Subalgebra/Variant72d1dc0febc0602b4a96b64368ac9125a63b33ad67b55b029dd6e6ba9d23c8dc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Algebra.Subalgebra.Lattice` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Finiteness.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Finiteness.Bilinear` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [fg_bot_toSubmodule](../../../../mathematics/Algebra/Subalgebra/Variant72d1dc0febc0602b4a96b64368ac9125a63b33ad67b55b029dd6e6ba9d23c8dc.lean/declarations/fg-bot-tosubmodule--dc768ee095fd3b623e713759.md) | 23 | `result-track:dc768ee095fd3b623e713759b8181feae199499e0b06ec28a772c5dcdcc09390` |
| 2 | `instance` | [finite_bot](../../../../mathematics/Algebra/Subalgebra/Variant72d1dc0febc0602b4a96b64368ac9125a63b33ad67b55b029dd6e6ba9d23c8dc.lean/declarations/finite-bot--c82ed266807353a989ed78f3.md) | 26 | `declaration-track:c82ed266807353a989ed78f39037479508bfa51578c18e51ba12b52c95e06ca3` |
| 3 | `theorem` | [fg_unit](../../../../mathematics/Algebra/Subalgebra/Variant72d1dc0febc0602b4a96b64368ac9125a63b33ad67b55b029dd6e6ba9d23c8dc.lean/declarations/fg-unit--833fbb5f3f0758611814f51b.md) | 33 | `result-track:833fbb5f3f0758611814f51bbb12ba8f45c52350ce9a25d12594d650135b345f` |
| 4 | `theorem` | [fg_of_isUnit](../../../../mathematics/Algebra/Subalgebra/Variant72d1dc0febc0602b4a96b64368ac9125a63b33ad67b55b029dd6e6ba9d23c8dc.lean/declarations/fg-of-isunit--f69a2c2aae64e85470c873cf.md) | 42 | `result-track:f69a2c2aae64e85470c873cfd860faf623881dd39c9da5c541da0a6a8143dbc3` |
| 5 | `theorem` | [FG.mul](../../../../mathematics/Algebra/Subalgebra/Variant72d1dc0febc0602b4a96b64368ac9125a63b33ad67b55b029dd6e6ba9d23c8dc.lean/declarations/fg-mul--0620359598dcae974a9d2bd2.md) | 51 | `result-track:0620359598dcae974a9d2bd2f8846a11b57ee833eff472b86925047ce4d6ab59` |
| 6 | `theorem` | [FG.pow](../../../../mathematics/Algebra/Subalgebra/Variant72d1dc0febc0602b4a96b64368ac9125a63b33ad67b55b029dd6e6ba9d23c8dc.lean/declarations/fg-pow--07c1ba9e5f5a5ddbcda06b60.md) | 54 | `result-track:07c1ba9e5f5a5ddbcda06b60b2ffc31c734780a24054c4cf4a0426f0827ae72f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
