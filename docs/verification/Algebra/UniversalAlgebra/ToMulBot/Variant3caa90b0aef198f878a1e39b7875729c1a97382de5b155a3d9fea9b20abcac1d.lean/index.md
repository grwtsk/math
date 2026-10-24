# Verification target: GRWTSK.Algebra.UniversalAlgebra.ToMulBot.Variant3caa90b0aef198f878a1e39b7875729c1a97382de5b155a3d9fea9b20abcac1d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "79f4fd7e4a107239521be7c67e60d38eae6c6b49",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/ToMulBot/Variant3caa90b0aef198f878a1e39b7875729c1a97382de5b155a3d9fea9b20abcac1d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/ToMulBot/Variant3caa90b0aef198f878a1e39b7875729c1a97382de5b155a3d9fea9b20abcac1d.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/ToMulBot/Variant3caa90b0aef198f878a1e39b7875729c1a97382de5b155a3d9fea9b20abcac1d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `79f4fd7e4a107239521be7c67e60d38eae6c6b49`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/ToMulBot/Variant3caa90b0aef198f878a1e39b7875729c1a97382de5b155a3d9fea9b20abcac1d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/ToMulBot/Variant3caa90b0aef198f878a1e39b7875729c1a97382de5b155a3d9fea9b20abcac1d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.GroupWithZero.Canonical` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Monoid.Unbundled.TypeTags` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Equiv.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Monoid.Unbundled.WithTop` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [toMulBot](../../../../../mathematics/Algebra/UniversalAlgebra/ToMulBot/Variant3caa90b0aef198f878a1e39b7875729c1a97382de5b155a3d9fea9b20abcac1d.lean/declarations/tomulbot--fd3e6ea34e52dc407c430786.md) | 27 | `declaration-track:fd3e6ea34e52dc407c4307862d6c085dbe15a532ea14007f3b1f3abcf0d392ba` |
| 2 | `theorem` | [toMulBot_zero](../../../../../mathematics/Algebra/UniversalAlgebra/ToMulBot/Variant3caa90b0aef198f878a1e39b7875729c1a97382de5b155a3d9fea9b20abcac1d.lean/declarations/tomulbot-zero--ca6927e0dcb064f596544755.md) | 31 | `result-track:ca6927e0dcb064f596544755d54a67b57f5511a736bafab54ec1911f0a19b016` |
| 3 | `theorem` | [toMulBot_coe](../../../../../mathematics/Algebra/UniversalAlgebra/ToMulBot/Variant3caa90b0aef198f878a1e39b7875729c1a97382de5b155a3d9fea9b20abcac1d.lean/declarations/tomulbot-coe--ee0473134f7135b8d10cad31.md) | 35 | `result-track:ee0473134f7135b8d10cad311fb1061b883f8aacc50acee2fe8f7b77fd68e3da` |
| 4 | `theorem` | [toMulBot_symm_bot](../../../../../mathematics/Algebra/UniversalAlgebra/ToMulBot/Variant3caa90b0aef198f878a1e39b7875729c1a97382de5b155a3d9fea9b20abcac1d.lean/declarations/tomulbot-symm-bot--7f238fafcd44756e0a761a55.md) | 40 | `result-track:7f238fafcd44756e0a761a55496f491d5bea1370fc39c9d697954a0b8ab784ac` |
| 5 | `theorem` | [toMulBot_coe_ofAdd](../../../../../mathematics/Algebra/UniversalAlgebra/ToMulBot/Variant3caa90b0aef198f878a1e39b7875729c1a97382de5b155a3d9fea9b20abcac1d.lean/declarations/tomulbot-coe-ofadd--b63ddb4b93c8a3ea4a68ddc8.md) | 44 | `result-track:b63ddb4b93c8a3ea4a68ddc874852e620168cd837d25a77433828b5f96d1c973` |
| 6 | `theorem` | [toMulBot_strictMono](../../../../../mathematics/Algebra/UniversalAlgebra/ToMulBot/Variant3caa90b0aef198f878a1e39b7875729c1a97382de5b155a3d9fea9b20abcac1d.lean/declarations/tomulbot-strictmono--10a6a9d07db3638e66c6ed29.md) | 50 | `result-track:10a6a9d07db3638e66c6ed29108a1e9b46dcd6fe66d2a1ffdf435842e919a6df` |
| 7 | `theorem` | [toMulBot_le](../../../../../mathematics/Algebra/UniversalAlgebra/ToMulBot/Variant3caa90b0aef198f878a1e39b7875729c1a97382de5b155a3d9fea9b20abcac1d.lean/declarations/tomulbot-le--b17e1026254712ea282b75fb.md) | 53 | `result-track:b17e1026254712ea282b75fb51241efa438e20d5493b9582f4bdc9ee77712767` |
| 8 | `theorem` | [toMulBot_lt](../../../../../mathematics/Algebra/UniversalAlgebra/ToMulBot/Variant3caa90b0aef198f878a1e39b7875729c1a97382de5b155a3d9fea9b20abcac1d.lean/declarations/tomulbot-lt--8d1b17778b6b9d029d16e63d.md) | 57 | `result-track:8d1b17778b6b9d029d16e63d3825362cdcc360d01aedeaa44d98741c93923649` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
