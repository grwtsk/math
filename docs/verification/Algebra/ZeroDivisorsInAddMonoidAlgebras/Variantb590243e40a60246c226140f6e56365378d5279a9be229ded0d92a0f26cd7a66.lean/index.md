# Verification target: GRWTSK.Algebra.ZeroDivisorsInAddMonoidAlgebras.Variantb590243e40a60246c226140f6e56365378d5279a9be229ded0d92a0f26cd7a66

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1a63ad49b59892eb9b3e9748d953b96e76029ef3",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/ZeroDivisorsInAddMonoidAlgebras/Variantb590243e40a60246c226140f6e56365378d5279a9be229ded0d92a0f26cd7a66.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/ZeroDivisorsInAddMonoidAlgebras/Variantb590243e40a60246c226140f6e56365378d5279a9be229ded0d92a0f26cd7a66.lean/index.md) · [Full source](../../../../mathematics/Algebra/ZeroDivisorsInAddMonoidAlgebras/Variantb590243e40a60246c226140f6e56365378d5279a9be229ded0d92a0f26cd7a66.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1a63ad49b59892eb9b3e9748d953b96e76029ef3`.

Source path: `GRWTSK/Algebra/ZeroDivisorsInAddMonoidAlgebras/Variantb590243e40a60246c226140f6e56365378d5279a9be229ded0d92a0f26cd7a66.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/ZeroDivisorsInAddMonoidAlgebras/Variantb590243e40a60246c226140f6e56365378d5279a9be229ded0d92a0f26cd7a66.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.GeomSum` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.UniqueProds.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.MonoidAlgebra.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finsupp.Lex` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Data.ZMod.Basic` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [zero_divisors_of_periodic](../../../../mathematics/Algebra/ZeroDivisorsInAddMonoidAlgebras/Variantb590243e40a60246c226140f6e56365378d5279a9be229ded0d92a0f26cd7a66.lean/declarations/zero-divisors-of-periodic--b8c1d88772e75de30f4a49a3.md) | 66 | `result-track:b8c1d88772e75de30f4a49a3fdf9e1104bb2585c5c0ed9e38a4b385ab8545bfd` |
| 2 | `theorem` | [single_zero_one](../../../../mathematics/Algebra/ZeroDivisorsInAddMonoidAlgebras/Variantb590243e40a60246c226140f6e56365378d5279a9be229ded0d92a0f26cd7a66.lean/declarations/single-zero-one--bd7252678f3cf172482c0d4e.md) | 74 | `result-track:bd7252678f3cf172482c0d4efb98842ad0b9aeb22d84b5a5b832116dd022c2ac` |
| 3 | `theorem` | [zero_divisors_of_torsion](../../../../mathematics/Algebra/ZeroDivisorsInAddMonoidAlgebras/Variantb590243e40a60246c226140f6e56365378d5279a9be229ded0d92a0f26cd7a66.lean/declarations/zero-divisors-of-torsion--71fdc315e48510e9ea56bced.md) | 86 | `result-track:71fdc315e48510e9ea56bced70c1d12c47d174eae57b75d7cd8fbca613637b77` |
| 4 | `example` | [(anonymous)](../../../../mathematics/Algebra/ZeroDivisorsInAddMonoidAlgebras/Variantb590243e40a60246c226140f6e56365378d5279a9be229ded0d92a0f26cd7a66.lean/declarations/example--6ec54fad4388edb5744c72b6.md) | 113 | `declaration-track:6ec54fad4388edb5744c72b6253648ff93204a70e15fdb520c0948544b570f0d` |
| 5 | `inductive` | [F](../../../../mathematics/Algebra/ZeroDivisorsInAddMonoidAlgebras/Variantb590243e40a60246c226140f6e56365378d5279a9be229ded0d92a0f26cd7a66.lean/declarations/f--5c580c988ea21b57be5d95cf.md) | 119 | `declaration-track:5c580c988ea21b57be5d95cf5e5dad31d92901209264db9dc704d7830b5ba058` |
| 6 | `def` | [List.dropUntil](../../../../mathematics/Algebra/ZeroDivisorsInAddMonoidAlgebras/Variantb590243e40a60246c226140f6e56365378d5279a9be229ded0d92a0f26cd7a66.lean/declarations/list-dropuntil--a6e49f885aa4a0cf2c50e53b.md) | 130 | `declaration-track:a6e49f885aa4a0cf2c50e53b0034d2bef44b15664ed08f07a6ed96a264110c3d` |
| 7 | `elab` | [(anonymous)](../../../../mathematics/Algebra/ZeroDivisorsInAddMonoidAlgebras/Variantb590243e40a60246c226140f6e56365378d5279a9be229ded0d92a0f26cd7a66.lean/declarations/elab--98ac3124fdd30eea2128dd0a.md) | 145 | `declaration-track:98ac3124fdd30eea2128dd0a7440cf64f5dfedf7f85bb39184300a72dee1a13b` |
| 8 | `instance` | [(anonymous)](../../../../mathematics/Algebra/ZeroDivisorsInAddMonoidAlgebras/Variantb590243e40a60246c226140f6e56365378d5279a9be229ded0d92a0f26cd7a66.lean/declarations/instance--905217d60e43cb49c57af680.md) | 159 | `declaration-track:905217d60e43cb49c57af6801832f7b7af62c40e091f520aa6d460913b6adab8` |
| 9 | `instance` | [(anonymous)](../../../../mathematics/Algebra/ZeroDivisorsInAddMonoidAlgebras/Variantb590243e40a60246c226140f6e56365378d5279a9be229ded0d92a0f26cd7a66.lean/declarations/instance--5794b46ebffff919c31c39e5.md) | 163 | `declaration-track:5794b46ebffff919c31c39e59c07a34394186503909a1d95f3e484e3eca1cdeb` |
| 10 | `macro` | [(anonymous)](../../../../mathematics/Algebra/ZeroDivisorsInAddMonoidAlgebras/Variantb590243e40a60246c226140f6e56365378d5279a9be229ded0d92a0f26cd7a66.lean/declarations/macro--5167deb1ca7d9e36bf31a129.md) | 167 | `declaration-track:5167deb1ca7d9e36bf31a129e7715db531dade8226f222f7691315c3a3a45147` |
| 11 | `def` | [val](../../../../mathematics/Algebra/ZeroDivisorsInAddMonoidAlgebras/Variantb590243e40a60246c226140f6e56365378d5279a9be229ded0d92a0f26cd7a66.lean/declarations/val--f5c294b9cb4510d0a70013f8.md) | 171 | `declaration-track:f5c294b9cb4510d0a70013f83f9a16203312786c55e1e61cbaa8e13c7b8a6d8e` |
| 12 | `instance` | [(anonymous)](../../../../mathematics/Algebra/ZeroDivisorsInAddMonoidAlgebras/Variantb590243e40a60246c226140f6e56365378d5279a9be229ded0d92a0f26cd7a66.lean/declarations/instance--6798663e31d8fbf56552ef47.md) | 175 | `declaration-track:6798663e31d8fbf56552ef477fa2f155840a216e8b380db023d260778aade84d` |
| 13 | `theorem` | [z01](../../../../mathematics/Algebra/ZeroDivisorsInAddMonoidAlgebras/Variantb590243e40a60246c226140f6e56365378d5279a9be229ded0d92a0f26cd7a66.lean/declarations/z01--a04ee0218ea6c09e9ed74db1.md) | 179 | `result-track:a04ee0218ea6c09e9ed74db10d188ce45b65a0d204fba446e5f67a5c9b60089a` |
| 14 | `instance` | [(anonymous)](../../../../mathematics/Algebra/ZeroDivisorsInAddMonoidAlgebras/Variantb590243e40a60246c226140f6e56365378d5279a9be229ded0d92a0f26cd7a66.lean/declarations/instance--19dea102ca2f7471d216966c.md) | 181 | `declaration-track:19dea102ca2f7471d216966ce705cc9cb3dea90f5cc0060629d704e8b9e58799` |
| 15 | `instance` | [(anonymous)](../../../../mathematics/Algebra/ZeroDivisorsInAddMonoidAlgebras/Variantb590243e40a60246c226140f6e56365378d5279a9be229ded0d92a0f26cd7a66.lean/declarations/instance--3f8c448f5f517fc967067b23.md) | 185 | `declaration-track:3f8c448f5f517fc967067b2398efa765e12e9e29dd29667352c0259385e8762d` |
| 16 | `instance` | [addLeftMono](../../../../mathematics/Algebra/ZeroDivisorsInAddMonoidAlgebras/Variantb590243e40a60246c226140f6e56365378d5279a9be229ded0d92a0f26cd7a66.lean/declarations/addleftmono--3576f7b3c71e4c88434cfc6c.md) | 194 | `declaration-track:3576f7b3c71e4c88434cfc6c70ffcd914bb14dbe885da3e6dd4226a9bacdaea6` |
| 17 | `example` | [(anonymous)](../../../../mathematics/Algebra/ZeroDivisorsInAddMonoidAlgebras/Variantb590243e40a60246c226140f6e56365378d5279a9be229ded0d92a0f26cd7a66.lean/declarations/example--a36e4717aac32e4316c59f20.md) | 197 | `declaration-track:a36e4717aac32e4316c59f20c81971a61b86fd52ef10b4a60f630beab019aec5` |
| 18 | `example` | [(anonymous)](../../../../mathematics/Algebra/ZeroDivisorsInAddMonoidAlgebras/Variantb590243e40a60246c226140f6e56365378d5279a9be229ded0d92a0f26cd7a66.lean/declarations/example--46539e6feba6f9ce62179905.md) | 201 | `declaration-track:46539e6feba6f9ce62179905e784f10b520ff415e4f3a663a58b4f0a66159a69` |
| 19 | `example` | [(anonymous)](../../../../mathematics/Algebra/ZeroDivisorsInAddMonoidAlgebras/Variantb590243e40a60246c226140f6e56365378d5279a9be229ded0d92a0f26cd7a66.lean/declarations/example--75596ba99b9d2daa0446f15f.md) | 203 | `declaration-track:75596ba99b9d2daa0446f15fb2aefa4877d8cb61e6dbe03faa252c0dc3aaa491` |
| 20 | `example` | [(anonymous)](../../../../mathematics/Algebra/ZeroDivisorsInAddMonoidAlgebras/Variantb590243e40a60246c226140f6e56365378d5279a9be229ded0d92a0f26cd7a66.lean/declarations/example--ca02ed5ef0798e355758c113.md) | 206 | `declaration-track:ca02ed5ef0798e355758c113133007374052cd39b2121da0a0f1c7d020d6e41a` |
| 21 | `theorem` | [f1](../../../../mathematics/Algebra/ZeroDivisorsInAddMonoidAlgebras/Variantb590243e40a60246c226140f6e56365378d5279a9be229ded0d92a0f26cd7a66.lean/declarations/f1--a8ad8f73ba9beaca33d55cd7.md) | 211 | `result-track:a8ad8f73ba9beaca33d55cd79fdbd7d35c24463365d0138aa703acc970c65808` |
| 22 | `theorem` | [f011](../../../../mathematics/Algebra/ZeroDivisorsInAddMonoidAlgebras/Variantb590243e40a60246c226140f6e56365378d5279a9be229ded0d92a0f26cd7a66.lean/declarations/f011--d396cd6c3c7fd4a8c55aeaee.md) | 214 | `result-track:d396cd6c3c7fd4a8c55aeaee4267ad15d3237f3ef8374f22e80fab872562f9fe` |
| 23 | `theorem` | [f010](../../../../mathematics/Algebra/ZeroDivisorsInAddMonoidAlgebras/Variantb590243e40a60246c226140f6e56365378d5279a9be229ded0d92a0f26cd7a66.lean/declarations/f010--6bab40fe45614843def1d9ee.md) | 218 | `result-track:6bab40fe45614843def1d9ee7275a4457d4ab9578a4115b2614450e2dfaa5ea5` |
| 24 | `theorem` | [f111](../../../../mathematics/Algebra/ZeroDivisorsInAddMonoidAlgebras/Variantb590243e40a60246c226140f6e56365378d5279a9be229ded0d92a0f26cd7a66.lean/declarations/f111--a9871b08f443d37803818a38.md) | 222 | `result-track:a9871b08f443d37803818a38b2f43135130abffa054da52e31cf78ec409d1248` |
| 25 | `theorem` | [f110](../../../../mathematics/Algebra/ZeroDivisorsInAddMonoidAlgebras/Variantb590243e40a60246c226140f6e56365378d5279a9be229ded0d92a0f26cd7a66.lean/declarations/f110--f4d974f413a94e4f23bef412.md) | 226 | `result-track:f4d974f413a94e4f23bef412b866642268c5308b776bcf92ccf2f09328fe19aa` |
| 26 | `example` | [(anonymous)](../../../../mathematics/Algebra/ZeroDivisorsInAddMonoidAlgebras/Variantb590243e40a60246c226140f6e56365378d5279a9be229ded0d92a0f26cd7a66.lean/declarations/example--524dfdc28e2a56b7d0303cb5.md) | 232 | `declaration-track:524dfdc28e2a56b7d0303cb56ac1d962632bb2f88f32466555010c7dbe94ca61` |
| 27 | `example` | [(anonymous)](../../../../mathematics/Algebra/ZeroDivisorsInAddMonoidAlgebras/Variantb590243e40a60246c226140f6e56365378d5279a9be229ded0d92a0f26cd7a66.lean/declarations/example--3e09a4ad5f34255d76bc7016.md) | 240 | `declaration-track:3e09a4ad5f34255d76bc701635045611e5b5f6257e0e5773fed6922ea5bd0a5c` |
| 28 | `example` | [(anonymous)](../../../../mathematics/Algebra/ZeroDivisorsInAddMonoidAlgebras/Variantb590243e40a60246c226140f6e56365378d5279a9be229ded0d92a0f26cd7a66.lean/declarations/example--5f25de916c043147dc06512d.md) | 243 | `declaration-track:5f25de916c043147dc06512d4f4c1c7e6b32b714e56769665947863d51a5113b` |
| 29 | `example` | [(anonymous)](../../../../mathematics/Algebra/ZeroDivisorsInAddMonoidAlgebras/Variantb590243e40a60246c226140f6e56365378d5279a9be229ded0d92a0f26cd7a66.lean/declarations/example--4951b7c3e954011b5e11291e.md) | 251 | `declaration-track:4951b7c3e954011b5e11291e6a379cb97753d1d7aeb80eb652c837d7fde6e2c6` |
| 30 | `example` | [(anonymous)](../../../../mathematics/Algebra/ZeroDivisorsInAddMonoidAlgebras/Variantb590243e40a60246c226140f6e56365378d5279a9be229ded0d92a0f26cd7a66.lean/declarations/example--cc03f8945d1480039d116324.md) | 257 | `declaration-track:cc03f8945d1480039d116324e474b7bba6691e3e3f982f80acbf70cf5b7bccf1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
