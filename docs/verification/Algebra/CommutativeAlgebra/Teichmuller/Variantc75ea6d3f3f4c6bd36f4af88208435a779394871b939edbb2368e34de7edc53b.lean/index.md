# Verification target: GRWTSK.Algebra.CommutativeAlgebra.Teichmuller.Variantc75ea6d3f3f4c6bd36f4af88208435a779394871b939edbb2368e34de7edc53b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d90c9006aefbaf62e0529b08d219a4d7be20478a",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Teichmuller/Variantc75ea6d3f3f4c6bd36f4af88208435a779394871b939edbb2368e34de7edc53b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/Teichmuller/Variantc75ea6d3f3f4c6bd36f4af88208435a779394871b939edbb2368e34de7edc53b.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/Teichmuller/Variantc75ea6d3f3f4c6bd36f4af88208435a779394871b939edbb2368e34de7edc53b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d90c9006aefbaf62e0529b08d219a4d7be20478a`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Teichmuller/Variantc75ea6d3f3f4c6bd36f4af88208435a779394871b939edbb2368e34de7edc53b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Teichmuller/Variantc75ea6d3f3f4c6bd36f4af88208435a779394871b939edbb2368e34de7edc53b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.WittVector.Basic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [teichmullerFun](../../../../../mathematics/Algebra/CommutativeAlgebra/Teichmuller/Variantc75ea6d3f3f4c6bd36f4af88208435a779394871b939edbb2368e34de7edc53b.lean/declarations/teichmullerfun--ff0fdaff1d0c8daebe5ad97b.md) | 40 | `declaration-track:ff0fdaff1d0c8daebe5ad97b979c645a7da210f7e25553f6cb7d82846fb9b6e9` |
| 2 | `theorem` | [ghostComponent_teichmullerFun](../../../../../mathematics/Algebra/CommutativeAlgebra/Teichmuller/Variantc75ea6d3f3f4c6bd36f4af88208435a779394871b939edbb2368e34de7edc53b.lean/declarations/ghostcomponent-teichmullerfun--96ee42511e10750f2cb41211.md) | 58 | `result-track:96ee42511e10750f2cb412110299115592d936db5e6d9f7112164d859785d414` |
| 3 | `theorem` | [map_teichmullerFun](../../../../../mathematics/Algebra/CommutativeAlgebra/Teichmuller/Variantc75ea6d3f3f4c6bd36f4af88208435a779394871b939edbb2368e34de7edc53b.lean/declarations/map-teichmullerfun--64b65ab1933dbe684decbe1d.md) | 67 | `result-track:64b65ab1933dbe684decbe1dd9af791b28ba45825f71fddfc5de77b3f0515730` |
| 4 | `theorem` | [teichmuller_mul_aux₁](../../../../../mathematics/Algebra/CommutativeAlgebra/Teichmuller/Variantc75ea6d3f3f4c6bd36f4af88208435a779394871b939edbb2368e34de7edc53b.lean/declarations/teichmuller-mul-aux--2920282d6001b1ce4ebed39c.md) | 73 | `result-track:2920282d6001b1ce4ebed39c2235e4d5d35293bd295bc1fca5aba2a2a38c37ae` |
| 5 | `theorem` | [teichmuller_mul_aux₂](../../../../../mathematics/Algebra/CommutativeAlgebra/Teichmuller/Variantc75ea6d3f3f4c6bd36f4af88208435a779394871b939edbb2368e34de7edc53b.lean/declarations/teichmuller-mul-aux--2a9dc620a9b5df61a4fd82db.md) | 80 | `result-track:2a9dc620a9b5df61a4fd82dbcde131425d25b061e3ebe48e5fdd4b6b4557aa8d` |
| 6 | `def` | [teichmuller](../../../../../mathematics/Algebra/CommutativeAlgebra/Teichmuller/Variantc75ea6d3f3f4c6bd36f4af88208435a779394871b939edbb2368e34de7edc53b.lean/declarations/teichmuller--a414f8d2cc17b4dfa25328a0.md) | 89 | `declaration-track:a414f8d2cc17b4dfa25328a0cb7c732db6dc53cda6d813173337db155bb822d8` |
| 7 | `theorem` | [teichmuller_coeff_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Teichmuller/Variantc75ea6d3f3f4c6bd36f4af88208435a779394871b939edbb2368e34de7edc53b.lean/declarations/teichmuller-coeff-zero--22356c85e5e21d2510bdafd2.md) | 102 | `result-track:22356c85e5e21d2510bdafd295bc0670206e67c117c4b031a557259a9569d3f8` |
| 8 | `theorem` | [teichmuller_coeff_pos](../../../../../mathematics/Algebra/CommutativeAlgebra/Teichmuller/Variantc75ea6d3f3f4c6bd36f4af88208435a779394871b939edbb2368e34de7edc53b.lean/declarations/teichmuller-coeff-pos--d639cffc4ee3824ae0550569.md) | 106 | `result-track:d639cffc4ee3824ae0550569dd79d0ca07c94c1a76861e3a469837b67fd59a16` |
| 9 | `theorem` | [teichmuller_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Teichmuller/Variantc75ea6d3f3f4c6bd36f4af88208435a779394871b939edbb2368e34de7edc53b.lean/declarations/teichmuller-zero--84553b0bc0252e2310665186.md) | 110 | `result-track:84553b0bc0252e23106651860488894caa8251311da135b9762a48f5c947b227` |
| 10 | `theorem` | [map_teichmuller](../../../../../mathematics/Algebra/CommutativeAlgebra/Teichmuller/Variantc75ea6d3f3f4c6bd36f4af88208435a779394871b939edbb2368e34de7edc53b.lean/declarations/map-teichmuller--1b167b26a4c401d816596029.md) | 115 | `result-track:1b167b26a4c401d81659602942f66c696b8ee0653c40bddd61208d8790b8c865` |
| 11 | `theorem` | [ghostComponent_teichmuller](../../../../../mathematics/Algebra/CommutativeAlgebra/Teichmuller/Variantc75ea6d3f3f4c6bd36f4af88208435a779394871b939edbb2368e34de7edc53b.lean/declarations/ghostcomponent-teichmuller--497d94db7b84a9befbe36f63.md) | 120 | `result-track:497d94db7b84a9befbe36f636b59c4357f8be26a239fad2668fc2c7e98061ee9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
