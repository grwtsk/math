# Verification target: GRWTSK.Algebra.Basic.Variant601bfc7d47821a4a0c17b54818f3c095b2e159d92eb26606d27d82e6d7d3938e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "66683c752a5edd4c5cff7b6f68e9177cb134dd64",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Basic/Variant601bfc7d47821a4a0c17b54818f3c095b2e159d92eb26606d27d82e6d7d3938e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Basic/Variant601bfc7d47821a4a0c17b54818f3c095b2e159d92eb26606d27d82e6d7d3938e.lean/index.md) · [Full source](../../../../mathematics/Algebra/Basic/Variant601bfc7d47821a4a0c17b54818f3c095b2e159d92eb26606d27d82e6d7d3938e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `66683c752a5edd4c5cff7b6f68e9177cb134dd64`.

Source path: `GRWTSK/Algebra/Basic/Variant601bfc7d47821a4a0c17b54818f3c095b2e159d92eb26606d27d82e6d7d3938e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Basic/Variant601bfc7d47821a4a0c17b54818f3c095b2e159d92eb26606d27d82e6d7d3938e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Init.Data.Int.CompLemmas` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.UniqueFactorizationDomain` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Localization.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [Away](../../../../mathematics/Algebra/Basic/Variant601bfc7d47821a4a0c17b54818f3c095b2e159d92eb26606d27d82e6d7d3938e.lean/declarations/away--5ddb153e10afc10120f090c3.md) | 54 | `declaration-track:5ddb153e10afc10120f090c3c8a0a28789ce762107cc0518a5a96bb4f23114e0` |
| 2 | `def` | [invSelf](../../../../mathematics/Algebra/Basic/Variant601bfc7d47821a4a0c17b54818f3c095b2e159d92eb26606d27d82e6d7d3938e.lean/declarations/invself--8ebf07a9985f0b685ad4e76b.md) | 63 | `declaration-track:8ebf07a9985f0b685ad4e76b83d53dc0110b9e496d4a5127f964cbeb9888dbb7` |
| 3 | `theorem` | [mul_invSelf](../../../../mathematics/Algebra/Basic/Variant601bfc7d47821a4a0c17b54818f3c095b2e159d92eb26606d27d82e6d7d3938e.lean/declarations/mul-invself--9fc1545d913088ce4fb8d994.md) | 68 | `result-track:9fc1545d913088ce4fb8d994a4202eccdb291f0f49f3d6b3239064186eb03ecd` |
| 4 | `def` | [lift](../../../../mathematics/Algebra/Basic/Variant601bfc7d47821a4a0c17b54818f3c095b2e159d92eb26606d27d82e6d7d3938e.lean/declarations/lift--fb50b0366317d5879a82e591.md) | 79 | `declaration-track:fb50b0366317d5879a82e591193598ca7f28d89f65280648b62b6335b321242f` |
| 5 | `theorem` | [AwayMap.lift_eq](../../../../mathematics/Algebra/Basic/Variant601bfc7d47821a4a0c17b54818f3c095b2e159d92eb26606d27d82e6d7d3938e.lean/declarations/awaymap-lift-eq--351bbfb442cb21bcbec83d76.md) | 88 | `result-track:351bbfb442cb21bcbec83d76e471f393e96dc17a47712b8dde1a324b0ab11e1b` |
| 6 | `theorem` | [AwayMap.lift_comp](../../../../mathematics/Algebra/Basic/Variant601bfc7d47821a4a0c17b54818f3c095b2e159d92eb26606d27d82e6d7d3938e.lean/declarations/awaymap-lift-comp--1e554d5fcc787d82d3e705fa.md) | 93 | `result-track:1e554d5fcc787d82d3e705fad7d069c5e0af387b9a01eed6aebfd5596f771aba` |
| 7 | `def` | [awayToAwayRight](../../../../mathematics/Algebra/Basic/Variant601bfc7d47821a4a0c17b54818f3c095b2e159d92eb26606d27d82e6d7d3938e.lean/declarations/awaytoawayright--a3104500c29396d0bbf82b01.md) | 99 | `declaration-track:a3104500c29396d0bbf82b012503f1b3a152258af06c0c0b594ba83f61e68680` |
| 8 | `def` | [map](../../../../mathematics/Algebra/Basic/Variant601bfc7d47821a4a0c17b54818f3c095b2e159d92eb26606d27d82e6d7d3938e.lean/declarations/map--9488dde693049505391030e1.md) | 109 | `declaration-track:9488dde693049505391030e1a33d7373ef812b17d738ae6633c6ec89891f7c42` |
| 9 | `def` | [atUnits](../../../../mathematics/Algebra/Basic/Variant601bfc7d47821a4a0c17b54818f3c095b2e159d92eb26606d27d82e6d7d3938e.lean/declarations/atunits--4ce1e9c4478953b03cb88aec.md) | 129 | `declaration-track:4ce1e9c4478953b03cb88aec2eb180567556d4fa624e36fb1371f9a882639b68` |
| 10 | `def` | [atUnit](../../../../mathematics/Algebra/Basic/Variant601bfc7d47821a4a0c17b54818f3c095b2e159d92eb26606d27d82e6d7d3938e.lean/declarations/atunit--1bdae9b1ea21591aa5c0acaa.md) | 145 | `declaration-track:1bdae9b1ea21591aa5c0acaac16a1ea5f2d02a54a2a489f4085a4cf1c34ddb6d` |
| 11 | `def` | [atOne](../../../../mathematics/Algebra/Basic/Variant601bfc7d47821a4a0c17b54818f3c095b2e159d92eb26606d27d82e6d7d3938e.lean/declarations/atone--c8b6ac9206dfd202bdebd8d7.md) | 155 | `declaration-track:c8b6ac9206dfd202bdebd8d766c95ccbe0a1584ad7053b2935ceaaae2a80d12a` |
| 12 | `theorem` | [away_of_isUnit_of_bijective](../../../../mathematics/Algebra/Basic/Variant601bfc7d47821a4a0c17b54818f3c095b2e159d92eb26606d27d82e6d7d3938e.lean/declarations/away-of-isunit-of-bijective--a3986c3e9704880e413a582b.md) | 159 | `result-track:a3986c3e9704880e413a582b314c11ce81bb5a3a99d13bfb95024fec8bacc4f1` |
| 13 | `abbrev` | [awayLift](../../../../mathematics/Algebra/Basic/Variant601bfc7d47821a4a0c17b54818f3c095b2e159d92eb26606d27d82e6d7d3938e.lean/declarations/awaylift--a87a58984f05d34ebcab1178.md) | 189 | `declaration-track:a87a58984f05d34ebcab1178a550533753250a282326f754fca8650d6c1106ef` |
| 14 | `abbrev` | [awayMap](../../../../mathematics/Algebra/Basic/Variant601bfc7d47821a4a0c17b54818f3c095b2e159d92eb26606d27d82e6d7d3938e.lean/declarations/awaymap--1b5cd8c004f7c2e05b97ef33.md) | 195 | `declaration-track:1b5cd8c004f7c2e05b97ef3373aec0cf11ad5b2e8d38aa7316e128fd1d2b47b3` |
| 15 | `def` | [selfZpow](../../../../mathematics/Algebra/Basic/Variant601bfc7d47821a4a0c17b54818f3c095b2e159d92eb26606d27d82e6d7d3938e.lean/declarations/selfzpow--9f65c7235c30325e372ad0b2.md) | 217 | `declaration-track:9f65c7235c30325e372ad0b2b72c2bf6ebe3ac1acf19a50ee36e88fc1b80a1af` |
| 16 | `theorem` | [selfZpow_of_nonneg](../../../../mathematics/Algebra/Basic/Variant601bfc7d47821a4a0c17b54818f3c095b2e159d92eb26606d27d82e6d7d3938e.lean/declarations/selfzpow-of-nonneg--4b2b6f32e92adaf8e689fb4e.md) | 221 | `result-track:4b2b6f32e92adaf8e689fb4ea81054a82723f5d4ff464d73a9840f5343c89d78` |
| 17 | `theorem` | [selfZpow_coe_nat](../../../../mathematics/Algebra/Basic/Variant601bfc7d47821a4a0c17b54818f3c095b2e159d92eb26606d27d82e6d7d3938e.lean/declarations/selfzpow-coe-nat--803934f3cb4638ccd0efc598.md) | 226 | `result-track:803934f3cb4638ccd0efc598992ffc56860f77e48340a0f923291fb52a360a4e` |
| 18 | `theorem` | [selfZpow_zero](../../../../mathematics/Algebra/Basic/Variant601bfc7d47821a4a0c17b54818f3c095b2e159d92eb26606d27d82e6d7d3938e.lean/declarations/selfzpow-zero--9e5443b23e97f6d5feed9a72.md) | 231 | `result-track:9e5443b23e97f6d5feed9a72537f438d26176dfc74ef3786f262b2aa292c43a3` |
| 19 | `theorem` | [selfZpow_of_neg](../../../../mathematics/Algebra/Basic/Variant601bfc7d47821a4a0c17b54818f3c095b2e159d92eb26606d27d82e6d7d3938e.lean/declarations/selfzpow-of-neg--844f7e37e13540078406256a.md) | 235 | `result-track:844f7e37e13540078406256ae659fdcb7eac07ee7d5f3caa52ea3dab37929e02` |
| 20 | `theorem` | [selfZpow_of_nonpos](../../../../mathematics/Algebra/Basic/Variant601bfc7d47821a4a0c17b54818f3c095b2e159d92eb26606d27d82e6d7d3938e.lean/declarations/selfzpow-of-nonpos--0b4fc452eebcc931fc00151f.md) | 240 | `result-track:0b4fc452eebcc931fc00151f593202e528c91ddebaab8686113399732082e4d2` |
| 21 | `theorem` | [selfZpow_neg_coe_nat](../../../../mathematics/Algebra/Basic/Variant601bfc7d47821a4a0c17b54818f3c095b2e159d92eb26606d27d82e6d7d3938e.lean/declarations/selfzpow-neg-coe-nat--0dabd9dcc80a6509d93cc4fa.md) | 248 | `result-track:0dabd9dcc80a6509d93cc4fae3a19aaa5872eed0a5252fd791f0981cb875c66d` |
| 22 | `theorem` | [selfZpow_sub_cast_nat](../../../../mathematics/Algebra/Basic/Variant601bfc7d47821a4a0c17b54818f3c095b2e159d92eb26606d27d82e6d7d3938e.lean/declarations/selfzpow-sub-cast-nat--a4b3512374c71c3c88ecfe0d.md) | 253 | `result-track:a4b3512374c71c3c88ecfe0d4ed4771dbcf25e87f3ea4d2d486ec44d6d7b2810` |
| 23 | `theorem` | [selfZpow_add](../../../../mathematics/Algebra/Basic/Variant601bfc7d47821a4a0c17b54818f3c095b2e159d92eb26606d27d82e6d7d3938e.lean/declarations/selfzpow-add--3b6084a548fc2c21d5460dd1.md) | 264 | `result-track:3b6084a548fc2c21d5460dd14fd565a409f98da200f4bdbf15a516aee33392a8` |
| 24 | `theorem` | [selfZpow_mul_neg](../../../../mathematics/Algebra/Basic/Variant601bfc7d47821a4a0c17b54818f3c095b2e159d92eb26606d27d82e6d7d3938e.lean/declarations/selfzpow-mul-neg--8a62ca002bb523fe81d75828.md) | 283 | `result-track:8a62ca002bb523fe81d75828c013558aa8093d1316b1387beb51afaeec631c34` |
| 25 | `theorem` | [selfZpow_neg_mul](../../../../mathematics/Algebra/Basic/Variant601bfc7d47821a4a0c17b54818f3c095b2e159d92eb26606d27d82e6d7d3938e.lean/declarations/selfzpow-neg-mul--7b05fe2c76c04e1e1ceca180.md) | 296 | `result-track:7b05fe2c76c04e1e1ceca180dd3bde833500e3b6bda54d02f4c4c72219b8e333` |
| 26 | `theorem` | [selfZpow_pow_sub](../../../../mathematics/Algebra/Basic/Variant601bfc7d47821a4a0c17b54818f3c095b2e159d92eb26606d27d82e6d7d3938e.lean/declarations/selfzpow-pow-sub--d7b552bd86ab7c88c5253435.md) | 300 | `result-track:d7b552bd86ab7c88c52534354d75aca8bcb990cee66c28c1ba4056b7605cab42` |
| 27 | `theorem` | [exists_reduced_fraction'](../../../../mathematics/Algebra/Basic/Variant601bfc7d47821a4a0c17b54818f3c095b2e159d92eb26606d27d82e6d7d3938e.lean/declarations/exists-reduced-fraction--23126a94d55b825f5706a88a.md) | 317 | `result-track:23126a94d55b825f5706a88a5186b28daa9bcf72f8bc7071e31451f068bab263` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
