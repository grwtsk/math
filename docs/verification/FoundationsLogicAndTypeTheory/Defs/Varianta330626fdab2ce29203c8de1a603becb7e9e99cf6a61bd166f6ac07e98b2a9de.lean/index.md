# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.Defs.Varianta330626fdab2ce29203c8de1a603becb7e9e99cf6a61bd166f6ac07e98b2a9de

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7693c5de31ddf81bd142821db98e75bad892d086",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/Defs/Varianta330626fdab2ce29203c8de1a603becb7e9e99cf6a61bd166f6ac07e98b2a9de.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/FoundationsLogicAndTypeTheory/Defs/Varianta330626fdab2ce29203c8de1a603becb7e9e99cf6a61bd166f6ac07e98b2a9de.lean/index.md) · [Full source](../../../../mathematics/FoundationsLogicAndTypeTheory/Defs/Varianta330626fdab2ce29203c8de1a603becb7e9e99cf6a61bd166f6ac07e98b2a9de.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7693c5de31ddf81bd142821db98e75bad892d086`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/Defs/Varianta330626fdab2ce29203c8de1a603becb7e9e99cf6a61bd166f6ac07e98b2a9de.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/Defs/Varianta330626fdab2ce29203c8de1a603becb7e9e99cf6a61bd166f6ac07e98b2a9de.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Nat.Fib.Basic` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Data.ZMod.Basic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [lucasUPair](../../../../mathematics/FoundationsLogicAndTypeTheory/Defs/Varianta330626fdab2ce29203c8de1a603becb7e9e99cf6a61bd166f6ac07e98b2a9de.lean/declarations/lucasupair--4a14069065f60e8440821b29.md) | 34 | `declaration-track:4a14069065f60e8440821b29189baf62c8abb98f1661e8eec24a9762678c5c23` |
| 2 | `def` | [lucasU](../../../../mathematics/FoundationsLogicAndTypeTheory/Defs/Varianta330626fdab2ce29203c8de1a603becb7e9e99cf6a61bd166f6ac07e98b2a9de.lean/declarations/lucasu--8a1a21adca55d008d258b1dd.md) | 41 | `declaration-track:8a1a21adca55d008d258b1ddd3782f2d0f510ea8d862880b7947351c8664cda7` |
| 3 | `def` | [lucasVPair](../../../../mathematics/FoundationsLogicAndTypeTheory/Defs/Varianta330626fdab2ce29203c8de1a603becb7e9e99cf6a61bd166f6ac07e98b2a9de.lean/declarations/lucasvpair--fbe9f5a1a2a6d411635ab476.md) | 45 | `declaration-track:fbe9f5a1a2a6d411635ab476a1296292429d1efea464171d2f637426cd0eb1ab` |
| 4 | `def` | [lucasV](../../../../mathematics/FoundationsLogicAndTypeTheory/Defs/Varianta330626fdab2ce29203c8de1a603becb7e9e99cf6a61bd166f6ac07e98b2a9de.lean/declarations/lucasv--89e4070153f39c428960db68.md) | 52 | `declaration-track:89e4070153f39c428960db688aef53931fad2c83b3be019a6e8b0af1e64078bf` |
| 5 | `def` | [lucasUPairMod](../../../../mathematics/FoundationsLogicAndTypeTheory/Defs/Varianta330626fdab2ce29203c8de1a603becb7e9e99cf6a61bd166f6ac07e98b2a9de.lean/declarations/lucasupairmod--c4c8693527a2c88e778d0ae4.md) | 58 | `declaration-track:c4c8693527a2c88e778d0ae47bf43ce2a9ba3be415e08d1262ac4a47692eae9d` |
| 6 | `def` | [lucasUMod](../../../../mathematics/FoundationsLogicAndTypeTheory/Defs/Varianta330626fdab2ce29203c8de1a603becb7e9e99cf6a61bd166f6ac07e98b2a9de.lean/declarations/lucasumod--94569717812033c14309461c.md) | 65 | `declaration-track:94569717812033c14309461c99979a72573c4c1733d4661ff77086406722dd13` |
| 7 | `theorem` | [lucasUPair_zero](../../../../mathematics/FoundationsLogicAndTypeTheory/Defs/Varianta330626fdab2ce29203c8de1a603becb7e9e99cf6a61bd166f6ac07e98b2a9de.lean/declarations/lucasupair-zero--bb59c129c28f10a8aff90dff.md) | 70 | `result-track:bb59c129c28f10a8aff90dff4ecf15edc0d438455ff85399c52eef2ca61af1b2` |
| 8 | `theorem` | [lucasUPair_succ](../../../../mathematics/FoundationsLogicAndTypeTheory/Defs/Varianta330626fdab2ce29203c8de1a603becb7e9e99cf6a61bd166f6ac07e98b2a9de.lean/declarations/lucasupair-succ--4150a4b461f41f07f2b31389.md) | 72 | `result-track:4150a4b461f41f07f2b3138963d72c58bfef51769b93e869b95b3d3e769f8e78` |
| 9 | `theorem` | [lucasU_zero](../../../../mathematics/FoundationsLogicAndTypeTheory/Defs/Varianta330626fdab2ce29203c8de1a603becb7e9e99cf6a61bd166f6ac07e98b2a9de.lean/declarations/lucasu-zero--877e34951c2beb6dc62a0ef8.md) | 77 | `result-track:877e34951c2beb6dc62a0ef8cdc682f6e50832034dd06a481746f12af7cbca09` |
| 10 | `theorem` | [lucasU_one](../../../../mathematics/FoundationsLogicAndTypeTheory/Defs/Varianta330626fdab2ce29203c8de1a603becb7e9e99cf6a61bd166f6ac07e98b2a9de.lean/declarations/lucasu-one--27e2afbd58daa8865540ff8f.md) | 79 | `result-track:27e2afbd58daa8865540ff8fda9f90c2fbfcce13addf3d9d41052fcaa96e19f0` |
| 11 | `theorem` | [lucasU_succ_succ](../../../../mathematics/FoundationsLogicAndTypeTheory/Defs/Varianta330626fdab2ce29203c8de1a603becb7e9e99cf6a61bd166f6ac07e98b2a9de.lean/declarations/lucasu-succ-succ--453b2c919af29ed9bbf3f6e2.md) | 81 | `result-track:453b2c919af29ed9bbf3f6e205ed03c6225264e928b4cb6657de1fc9ebd13592` |
| 12 | `theorem` | [lucasU_fib](../../../../mathematics/FoundationsLogicAndTypeTheory/Defs/Varianta330626fdab2ce29203c8de1a603becb7e9e99cf6a61bd166f6ac07e98b2a9de.lean/declarations/lucasu-fib--0efa7971e50a0ab2d6a0ef6f.md) | 87 | `result-track:0efa7971e50a0ab2d6a0ef6f461c5bb2d456052a5952eba326350bae47699be2` |
| 13 | `theorem` | [lucasUPairMod_eq_mod](../../../../mathematics/FoundationsLogicAndTypeTheory/Defs/Varianta330626fdab2ce29203c8de1a603becb7e9e99cf6a61bd166f6ac07e98b2a9de.lean/declarations/lucasupairmod-eq-mod--3e16dffc8cfd6f4b7941ce10.md) | 102 | `result-track:3e16dffc8cfd6f4b7941ce107807020d744ae80185b9e9f34863858266f98550` |
| 14 | `theorem` | [lucasUMod_eq_mod](../../../../mathematics/FoundationsLogicAndTypeTheory/Defs/Varianta330626fdab2ce29203c8de1a603becb7e9e99cf6a61bd166f6ac07e98b2a9de.lean/declarations/lucasumod-eq-mod--d57a94634062e1f278234486.md) | 119 | `result-track:d57a94634062e1f2782344860e9215b51c78f9322d478996fcf13a1cdce99503` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
