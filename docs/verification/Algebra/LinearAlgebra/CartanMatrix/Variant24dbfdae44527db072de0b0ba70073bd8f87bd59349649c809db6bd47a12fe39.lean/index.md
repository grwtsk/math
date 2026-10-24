# Verification target: GRWTSK.Algebra.LinearAlgebra.CartanMatrix.Variant24dbfdae44527db072de0b0ba70073bd8f87bd59349649c809db6bd47a12fe39

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "228bf45005b9b0ba907740b000d36ce9f9392e53",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/CartanMatrix/Variant24dbfdae44527db072de0b0ba70073bd8f87bd59349649c809db6bd47a12fe39.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/CartanMatrix/Variant24dbfdae44527db072de0b0ba70073bd8f87bd59349649c809db6bd47a12fe39.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/CartanMatrix/Variant24dbfdae44527db072de0b0ba70073bd8f87bd59349649c809db6bd47a12fe39.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `228bf45005b9b0ba907740b000d36ce9f9392e53`.

Source path: `GRWTSK/Algebra/LinearAlgebra/CartanMatrix/Variant24dbfdae44527db072de0b0ba70073bd8f87bd59349649c809db6bd47a12fe39.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/CartanMatrix/Variant24dbfdae44527db072de0b0ba70073bd8f87bd59349649c809db6bd47a12fe39.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Lie.Free` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Lie.Quotient` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Matrix.Notation` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [Generators](../../../../../mathematics/Algebra/LinearAlgebra/CartanMatrix/Variant24dbfdae44527db072de0b0ba70073bd8f87bd59349649c809db6bd47a12fe39.lean/declarations/generators--88465a3f5af7876998822014.md) | 107 | `declaration-track:88465a3f5af7876998822014a2d51744bd9382eba0fdf1ac2481272536988e17` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/CartanMatrix/Variant24dbfdae44527db072de0b0ba70073bd8f87bd59349649c809db6bd47a12fe39.lean/declarations/instance--e5a9cf7962aa5e808d4bf80b.md) | 113 | `declaration-track:e5a9cf7962aa5e808d4bf80bf5880320de9693ad9dac353ff4823ced13cdfaa9` |
| 3 | `def` | [HH](../../../../../mathematics/Algebra/LinearAlgebra/CartanMatrix/Variant24dbfdae44527db072de0b0ba70073bd8f87bd59349649c809db6bd47a12fe39.lean/declarations/hh--2a3021e94d2a5031983469a3.md) | 128 | `declaration-track:2a3021e94d2a5031983469a349ff4dd13522b4d26021bca07ff353711d64464c` |
| 4 | `def` | [EF](../../../../../mathematics/Algebra/LinearAlgebra/CartanMatrix/Variant24dbfdae44527db072de0b0ba70073bd8f87bd59349649c809db6bd47a12fe39.lean/declarations/ef--e77e0aa11a717f102590eaef.md) | 133 | `declaration-track:e77e0aa11a717f102590eaef6eb31313cd9b9eaebedb15ef161e344fe242c7cd` |
| 5 | `def` | [HE](../../../../../mathematics/Algebra/LinearAlgebra/CartanMatrix/Variant24dbfdae44527db072de0b0ba70073bd8f87bd59349649c809db6bd47a12fe39.lean/declarations/he--4401a9e732f33405729f715f.md) | 138 | `declaration-track:4401a9e732f33405729f715f37556f7e08339ec5d682a7cdd412d33f09574458` |
| 6 | `def` | [HF](../../../../../mathematics/Algebra/LinearAlgebra/CartanMatrix/Variant24dbfdae44527db072de0b0ba70073bd8f87bd59349649c809db6bd47a12fe39.lean/declarations/hf--84b1b0238ad716fb9f66c582.md) | 143 | `declaration-track:84b1b0238ad716fb9f66c5821418a209e28bf6390c0ef1d8cbb691ff160d26fa` |
| 7 | `def` | [adE](../../../../../mathematics/Algebra/LinearAlgebra/CartanMatrix/Variant24dbfdae44527db072de0b0ba70073bd8f87bd59349649c809db6bd47a12fe39.lean/declarations/ade--8cc1b99cc8271c093b7e8aca.md) | 152 | `declaration-track:8cc1b99cc8271c093b7e8aca9e1200f14b2d4718568f581bec2d49819e9c447a` |
| 8 | `def` | [adF](../../../../../mathematics/Algebra/LinearAlgebra/CartanMatrix/Variant24dbfdae44527db072de0b0ba70073bd8f87bd59349649c809db6bd47a12fe39.lean/declarations/adf--38b197f14bd6cdd2cbb7ccf1.md) | 159 | `declaration-track:38b197f14bd6cdd2cbb7ccf143c8dfd39229752111a1ca2d77aba914e9236d27` |
| 9 | `theorem` | [adE_of_eq_eq_zero](../../../../../mathematics/Algebra/LinearAlgebra/CartanMatrix/Variant24dbfdae44527db072de0b0ba70073bd8f87bd59349649c809db6bd47a12fe39.lean/declarations/ade-of-eq-eq-zero--945f865dedddcf6c1e2b97ad.md) | 163 | `result-track:945f865dedddcf6c1e2b97ad48413160d2db5b810265dc435cddfa9bdeabdf2a` |
| 10 | `theorem` | [adF_of_eq_eq_zero](../../../../../mathematics/Algebra/LinearAlgebra/CartanMatrix/Variant24dbfdae44527db072de0b0ba70073bd8f87bd59349649c809db6bd47a12fe39.lean/declarations/adf-of-eq-eq-zero--07536fdd86ad90d3d41f0bcc.md) | 167 | `result-track:07536fdd86ad90d3d41f0bcc74782d016aa078a409d95671e44e3055f02d47b8` |
| 11 | `def` | [toSet](../../../../../mathematics/Algebra/LinearAlgebra/CartanMatrix/Variant24dbfdae44527db072de0b0ba70073bd8f87bd59349649c809db6bd47a12fe39.lean/declarations/toset--cd968011546ea818118330b9.md) | 172 | `declaration-track:cd968011546ea818118330b9e007bfd0df41065399750d244663e0f5ea4e6ce8` |
| 12 | `def` | [toIdeal](../../../../../mathematics/Algebra/LinearAlgebra/CartanMatrix/Variant24dbfdae44527db072de0b0ba70073bd8f87bd59349649c809db6bd47a12fe39.lean/declarations/toideal--7ae1595989de983af42e8d03.md) | 179 | `declaration-track:7ae1595989de983af42e8d03ad6c277e95a01256b2c2e6009d0a948e4ab57bda` |
| 13 | `def` | [Matrix.ToLieAlgebra](../../../../../mathematics/Algebra/LinearAlgebra/CartanMatrix/Variant24dbfdae44527db072de0b0ba70073bd8f87bd59349649c809db6bd47a12fe39.lean/declarations/matrix-toliealgebra--a69ab102b59c1295ea23cb3e.md) | 191 | `declaration-track:a69ab102b59c1295ea23cb3eb1f0c68f62bab4c6f02a40b00aa21ec3e956bfe0` |
| 14 | `instance` | [Matrix.ToLieAlgebra.instLieRing](../../../../../mathematics/Algebra/LinearAlgebra/CartanMatrix/Variant24dbfdae44527db072de0b0ba70073bd8f87bd59349649c809db6bd47a12fe39.lean/declarations/matrix-toliealgebra-instliering--ea03c22661dcc614671a2421.md) | 196 | `declaration-track:ea03c22661dcc614671a2421f9e7315a2adcab3ea5c7c323caf1745fc3e8c7fe` |
| 15 | `instance` | [Matrix.ToLieAlgebra.instInhabited](../../../../../mathematics/Algebra/LinearAlgebra/CartanMatrix/Variant24dbfdae44527db072de0b0ba70073bd8f87bd59349649c809db6bd47a12fe39.lean/declarations/matrix-toliealgebra-instinhabited--52ac5f0bb415fa1f4fb25fc1.md) | 200 | `declaration-track:52ac5f0bb415fa1f4fb25fc11766abc4b89d97e4a1a3f38497f3c4e400c1e7f8` |
| 16 | `instance` | [Matrix.ToLieAlgebra.instLieAlgebra](../../../../../mathematics/Algebra/LinearAlgebra/CartanMatrix/Variant24dbfdae44527db072de0b0ba70073bd8f87bd59349649c809db6bd47a12fe39.lean/declarations/matrix-toliealgebra-instliealgebra--e28596d82498a774e70f78c8.md) | 204 | `declaration-track:e28596d82498a774e70f78c8d8e33e1c204765568c12347cf9002f2934cfd7f3` |
| 17 | `def` | [E₆](../../../../../mathematics/Algebra/LinearAlgebra/CartanMatrix/Variant24dbfdae44527db072de0b0ba70073bd8f87bd59349649c809db6bd47a12fe39.lean/declarations/e--45b857c076cc521970e95a8e.md) | 219 | `declaration-track:45b857c076cc521970e95a8eb9651bcafc182827194925684ba11ea9928e583d` |
| 18 | `def` | [E₇](../../../../../mathematics/Algebra/LinearAlgebra/CartanMatrix/Variant24dbfdae44527db072de0b0ba70073bd8f87bd59349649c809db6bd47a12fe39.lean/declarations/e--bc2874d228d771f1afe87e59.md) | 237 | `declaration-track:bc2874d228d771f1afe87e59be10d2f0d6dc3eaf77209c5022001b994a0451fb` |
| 19 | `def` | [E₈](../../../../../mathematics/Algebra/LinearAlgebra/CartanMatrix/Variant24dbfdae44527db072de0b0ba70073bd8f87bd59349649c809db6bd47a12fe39.lean/declarations/e--8a5a21ae48e1475de461e663.md) | 256 | `declaration-track:8a5a21ae48e1475de461e6637e85252619b0dd4dd03c0cfe8c37fd528d1f8286` |
| 20 | `def` | [F₄](../../../../../mathematics/Algebra/LinearAlgebra/CartanMatrix/Variant24dbfdae44527db072de0b0ba70073bd8f87bd59349649c809db6bd47a12fe39.lean/declarations/f--263f1a08854249f856388dea.md) | 274 | `declaration-track:263f1a08854249f856388dea53fc28c778df90b86d68da83aa11657650a8ed3a` |
| 21 | `def` | [G₂](../../../../../mathematics/Algebra/LinearAlgebra/CartanMatrix/Variant24dbfdae44527db072de0b0ba70073bd8f87bd59349649c809db6bd47a12fe39.lean/declarations/g--951a7db01789af06d9317634.md) | 286 | `declaration-track:951a7db01789af06d93176349723d998672682928029f538be264df311ba841a` |
| 22 | `abbrev` | [e₆](../../../../../mathematics/Algebra/LinearAlgebra/CartanMatrix/Variant24dbfdae44527db072de0b0ba70073bd8f87bd59349649c809db6bd47a12fe39.lean/declarations/e--7406b5375a6e03613c8dc574.md) | 295 | `declaration-track:7406b5375a6e03613c8dc574818b27be118e022134f14f2fff441f7256014577` |
| 23 | `abbrev` | [e₇](../../../../../mathematics/Algebra/LinearAlgebra/CartanMatrix/Variant24dbfdae44527db072de0b0ba70073bd8f87bd59349649c809db6bd47a12fe39.lean/declarations/e--4ff3bf1edd2ba5511abfc49c.md) | 300 | `declaration-track:4ff3bf1edd2ba5511abfc49c4534c08e04f9ce22f933d60f3ce9975ba8049582` |
| 24 | `abbrev` | [e₈](../../../../../mathematics/Algebra/LinearAlgebra/CartanMatrix/Variant24dbfdae44527db072de0b0ba70073bd8f87bd59349649c809db6bd47a12fe39.lean/declarations/e--2b143a3c1bec3ad2411d4c99.md) | 305 | `declaration-track:2b143a3c1bec3ad2411d4c995619eca32ee726509ead0c3e0c8e63a5018f3b62` |
| 25 | `abbrev` | [f₄](../../../../../mathematics/Algebra/LinearAlgebra/CartanMatrix/Variant24dbfdae44527db072de0b0ba70073bd8f87bd59349649c809db6bd47a12fe39.lean/declarations/f--0ff6a69a561f01e2b19aa676.md) | 310 | `declaration-track:0ff6a69a561f01e2b19aa676f4ee2b7e1d2d3df65c3e4cabadf074fade0bdca1` |
| 26 | `abbrev` | [g₂](../../../../../mathematics/Algebra/LinearAlgebra/CartanMatrix/Variant24dbfdae44527db072de0b0ba70073bd8f87bd59349649c809db6bd47a12fe39.lean/declarations/g--b07da4712786b24fe0beee3c.md) | 315 | `declaration-track:b07da4712786b24fe0beee3c234d41806aaafd2be12608ded7889d1fddf4fd7f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
