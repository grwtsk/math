# Verification target: GRWTSK.Algebra.UniversalAlgebra.Opposite.Variante9f688eb33f4b0bdaaaf04c68bd825f2d90f51febad860c471285690f36ad79c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "672ac9ee79371e74d3d32b0a9f22d2b71d7ca1fb",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Opposite/Variante9f688eb33f4b0bdaaaf04c68bd825f2d90f51febad860c471285690f36ad79c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/Opposite/Variante9f688eb33f4b0bdaaaf04c68bd825f2d90f51febad860c471285690f36ad79c.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/Opposite/Variante9f688eb33f4b0bdaaaf04c68bd825f2d90f51febad860c471285690f36ad79c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `672ac9ee79371e74d3d32b0a9f22d2b71d7ca1fb`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Opposite/Variante9f688eb33f4b0bdaaaf04c68bd825f2d90f51febad860c471285690f36ad79c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Opposite/Variante9f688eb33f4b0bdaaaf04c68bd825f2d90f51febad860c471285690f36ad79c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Opposite` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Monoid.Defs` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Opposite/Variante9f688eb33f4b0bdaaaf04c68bd825f2d90f51febad860c471285690f36ad79c.lean/declarations/instance--b85d8c22f66f1422e7cf51b3.md) | 22 | `declaration-track:b85d8c22f66f1422e7cf51b3e4637822b6baeb6213c008a6f9a3821872c6b1b3` |
| 2 | `lemma` | [unop_le_unop](../../../../../mathematics/Algebra/UniversalAlgebra/Opposite/Variante9f688eb33f4b0bdaaaf04c68bd825f2d90f51febad860c471285690f36ad79c.lean/declarations/unop-le-unop--c1b06290b090f7edaeafd2c9.md) | 24 | `result-track:c1b06290b090f7edaeafd2c93b1b4f27bc395898c622c601c4d3351bcfb2a439` |
| 3 | `lemma` | [op_le_op](../../../../../mathematics/Algebra/UniversalAlgebra/Opposite/Variante9f688eb33f4b0bdaaaf04c68bd825f2d90f51febad860c471285690f36ad79c.lean/declarations/op-le-op--01f79339e566c9480dcff857.md) | 25 | `result-track:01f79339e566c9480dcff8572ebf57669efd9f61fd82dee19aecca807efada80` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Opposite/Variante9f688eb33f4b0bdaaaf04c68bd825f2d90f51febad860c471285690f36ad79c.lean/declarations/instance--c464eea8be9f9cee3a79e7f4.md) | 29 | `declaration-track:c464eea8be9f9cee3a79e7f43109d74a639745cfef5b6663e4ac8004d430d2c7` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Opposite/Variante9f688eb33f4b0bdaaaf04c68bd825f2d90f51febad860c471285690f36ad79c.lean/declarations/instance--9948bbbc9460cf6e6c069f3d.md) | 34 | `declaration-track:9948bbbc9460cf6e6c069f3d9937a5a04c7d177112af3c157dac4a297fb652c4` |
| 6 | `lemma` | [unop_le_one](../../../../../mathematics/Algebra/UniversalAlgebra/Opposite/Variante9f688eb33f4b0bdaaaf04c68bd825f2d90f51febad860c471285690f36ad79c.lean/declarations/unop-le-one--7461421bbc44c40602eaa455.md) | 37 | `result-track:7461421bbc44c40602eaa455d90aed8bc8381f4f70d04ae347cf0e62c83dc6b4` |
| 7 | `lemma` | [one_le_unop](../../../../../mathematics/Algebra/UniversalAlgebra/Opposite/Variante9f688eb33f4b0bdaaaf04c68bd825f2d90f51febad860c471285690f36ad79c.lean/declarations/one-le-unop--257251b01ec60900cfc2fed3.md) | 38 | `result-track:257251b01ec60900cfc2fed39764312746b0eba570d2fa873176d23002f9866d` |
| 8 | `lemma` | [op_le_one](../../../../../mathematics/Algebra/UniversalAlgebra/Opposite/Variante9f688eb33f4b0bdaaaf04c68bd825f2d90f51febad860c471285690f36ad79c.lean/declarations/op-le-one--936fe2f1e3ed5b9888d553e6.md) | 39 | `result-track:936fe2f1e3ed5b9888d553e6844914cbed28e2ff9b99a33a9bde6c5b9e2ae49c` |
| 9 | `lemma` | [one_le_op](../../../../../mathematics/Algebra/UniversalAlgebra/Opposite/Variante9f688eb33f4b0bdaaaf04c68bd825f2d90f51febad860c471285690f36ad79c.lean/declarations/one-le-op--605ce575264f2bec9d7b6f4e.md) | 40 | `result-track:605ce575264f2bec9d7b6f4ec03d60548827f58461c7e739364eb5bed65785fd` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Opposite/Variante9f688eb33f4b0bdaaaf04c68bd825f2d90f51febad860c471285690f36ad79c.lean/declarations/instance--862e16c0ee7596af69e24e54.md) | 47 | `declaration-track:862e16c0ee7596af69e24e54fc1d116101c4f1f901007f9096efe106502b84ef` |
| 11 | `lemma` | [unop_nonpos](../../../../../mathematics/Algebra/UniversalAlgebra/Opposite/Variante9f688eb33f4b0bdaaaf04c68bd825f2d90f51febad860c471285690f36ad79c.lean/declarations/unop-nonpos--86506ed06aa30080b82db85d.md) | 50 | `result-track:86506ed06aa30080b82db85d901352589e39107be0c7978a547925e5c031c05d` |
| 12 | `lemma` | [unop_nonneg](../../../../../mathematics/Algebra/UniversalAlgebra/Opposite/Variante9f688eb33f4b0bdaaaf04c68bd825f2d90f51febad860c471285690f36ad79c.lean/declarations/unop-nonneg--a4dc90b1ca43401e12eba013.md) | 51 | `result-track:a4dc90b1ca43401e12eba01332f7040ec2d94ecd0c84e59e57246b0ca29cdd23` |
| 13 | `lemma` | [op_nonpos](../../../../../mathematics/Algebra/UniversalAlgebra/Opposite/Variante9f688eb33f4b0bdaaaf04c68bd825f2d90f51febad860c471285690f36ad79c.lean/declarations/op-nonpos--0b73dbcc4144ec3d1a1603a0.md) | 52 | `result-track:0b73dbcc4144ec3d1a1603a0e71b29b092c22f0468d092acadf4b14d2cb23b99` |
| 14 | `lemma` | [op_nonneg](../../../../../mathematics/Algebra/UniversalAlgebra/Opposite/Variante9f688eb33f4b0bdaaaf04c68bd825f2d90f51febad860c471285690f36ad79c.lean/declarations/op-nonneg--5d5926b85d1f91465938f27d.md) | 53 | `result-track:5d5926b85d1f91465938f27df7d9000515fe72fc697d676c861354fc77f392c5` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Opposite/Variante9f688eb33f4b0bdaaaf04c68bd825f2d90f51febad860c471285690f36ad79c.lean/declarations/instance--019bb31de0226d4fa09e4458.md) | 63 | `declaration-track:019bb31de0226d4fa09e44581ef8ac92b4c8c65088574efe12f8cd0aa733533e` |
| 16 | `lemma` | [unop_le_one](../../../../../mathematics/Algebra/UniversalAlgebra/Opposite/Variante9f688eb33f4b0bdaaaf04c68bd825f2d90f51febad860c471285690f36ad79c.lean/declarations/unop-le-one--c7d7707b6ff556887e509702.md) | 66 | `result-track:c7d7707b6ff556887e5097021b867b6a14bcb775a44ff2cee6e1f97d5072b207` |
| 17 | `lemma` | [one_le_unop](../../../../../mathematics/Algebra/UniversalAlgebra/Opposite/Variante9f688eb33f4b0bdaaaf04c68bd825f2d90f51febad860c471285690f36ad79c.lean/declarations/one-le-unop--f6d01e8fdbc0852a5e804ce3.md) | 67 | `result-track:f6d01e8fdbc0852a5e804ce3190921d841f11e8dc5bdd21ef52f7e7559d24975` |
| 18 | `lemma` | [op_le_one](../../../../../mathematics/Algebra/UniversalAlgebra/Opposite/Variante9f688eb33f4b0bdaaaf04c68bd825f2d90f51febad860c471285690f36ad79c.lean/declarations/op-le-one--4dac071e7664712a452664e9.md) | 68 | `result-track:4dac071e7664712a452664e99c7c2144994c00f9eeb863af0fc7639d2a72366e` |
| 19 | `lemma` | [one_le_op](../../../../../mathematics/Algebra/UniversalAlgebra/Opposite/Variante9f688eb33f4b0bdaaaf04c68bd825f2d90f51febad860c471285690f36ad79c.lean/declarations/one-le-op--3565b86c00de845ea90fc338.md) | 69 | `result-track:3565b86c00de845ea90fc3386dccb0a6297bb78f6e01b3e77f6ff76c6d9065d7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
