# Verification target: GRWTSK.Algebra.Prime.Varianta41cb5b76d26c747c4bdd89c653da6b3d1e1c7a9dda5bc303c114ed210abebe8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f5e17a98bd2509992240576a4580d7c82d701470",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Prime/Varianta41cb5b76d26c747c4bdd89c653da6b3d1e1c7a9dda5bc303c114ed210abebe8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Prime/Varianta41cb5b76d26c747c4bdd89c653da6b3d1e1c7a9dda5bc303c114ed210abebe8.lean/index.md) · [Full source](../../../../mathematics/Algebra/Prime/Varianta41cb5b76d26c747c4bdd89c653da6b3d1e1c7a9dda5bc303c114ed210abebe8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f5e17a98bd2509992240576a4580d7c82d701470`.

Source path: `GRWTSK/Algebra/Prime/Varianta41cb5b76d26c747c4bdd89c653da6b3d1e1c7a9dda5bc303c114ed210abebe8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Prime/Varianta41cb5b76d26c747c4bdd89c653da6b3d1e1c7a9dda5bc303c114ed210abebe8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Ideal.Lattice` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [IsPrime](../../../../mathematics/Algebra/Prime/Varianta41cb5b76d26c747c4bdd89c653da6b3d1e1c7a9dda5bc303c114ed210abebe8.lean/declarations/isprime--e318a60c5acdf40df587ab69.md) | 35 | `declaration-track:e318a60c5acdf40df587ab69c9e388cd0eedf1056078bc8c5ad407e64d837f33` |
| 2 | `theorem` | [isPrime_iff](../../../../mathematics/Algebra/Prime/Varianta41cb5b76d26c747c4bdd89c653da6b3d1e1c7a9dda5bc303c114ed210abebe8.lean/declarations/isprime-iff--fbcafe0f8e5240ca723b4532.md) | 41 | `result-track:fbcafe0f8e5240ca723b4532cc803755676f4bef748a5d906d127c5b17ec3cde` |
| 3 | `theorem` | [IsPrime.ne_top](../../../../mathematics/Algebra/Prime/Varianta41cb5b76d26c747c4bdd89c653da6b3d1e1c7a9dda5bc303c114ed210abebe8.lean/declarations/isprime-ne-top--41b658291df768a311778fe6.md) | 44 | `result-track:41b658291df768a311778fe60bad5de5ead18c4f464d56ffad38b8c41f385c5f` |
| 4 | `theorem` | [IsPrime.mem_or_mem](../../../../mathematics/Algebra/Prime/Varianta41cb5b76d26c747c4bdd89c653da6b3d1e1c7a9dda5bc303c114ed210abebe8.lean/declarations/isprime-mem-or-mem--1674a905d39b0302d4c6878e.md) | 47 | `result-track:1674a905d39b0302d4c6878eb4dcef3c2a5686354b03381a3d84c1dfe33a6bab` |
| 5 | `theorem` | [IsPrime.mul_notMem](../../../../mathematics/Algebra/Prime/Varianta41cb5b76d26c747c4bdd89c653da6b3d1e1c7a9dda5bc303c114ed210abebe8.lean/declarations/isprime-mul-notmem--9009383904ec9fda49952050.md) | 50 | `result-track:9009383904ec9fda499520509985c26d278aa63750a981b3b65d7af0f6c12c2b` |
| 6 | `theorem` | [IsPrime.mem_or_mem_of_mul_eq_zero](../../../../mathematics/Algebra/Prime/Varianta41cb5b76d26c747c4bdd89c653da6b3d1e1c7a9dda5bc303c114ed210abebe8.lean/declarations/isprime-mem-or-mem-of-mul-eq-zero--76c0596ed8d6d4134fa4be58.md) | 56 | `result-track:76c0596ed8d6d4134fa4be581b49b2aeb9477e2421429caf59954074f7dfc53d` |
| 7 | `theorem` | [IsPrime.mem_of_pow_mem](../../../../mathematics/Algebra/Prime/Varianta41cb5b76d26c747c4bdd89c653da6b3d1e1c7a9dda5bc303c114ed210abebe8.lean/declarations/isprime-mem-of-pow-mem--ab2562f7c46372b1679137ef.md) | 60 | `result-track:ab2562f7c46372b1679137effd790a6b28668276daad9f667fc2895632fda7a7` |
| 8 | `theorem` | [not_isPrime_iff](../../../../mathematics/Algebra/Prime/Varianta41cb5b76d26c747c4bdd89c653da6b3d1e1c7a9dda5bc303c114ed210abebe8.lean/declarations/not-isprime-iff--56bbb3a0f4d96cc6f339d7b5.md) | 70 | `result-track:56bbb3a0f4d96cc6f339d7b5856480bf3086db782dd9d584e569339778dcfd80` |
| 9 | `theorem` | [bot_prime](../../../../mathematics/Algebra/Prime/Varianta41cb5b76d26c747c4bdd89c653da6b3d1e1c7a9dda5bc303c114ed210abebe8.lean/declarations/bot-prime--c7f8edb335c0b2e73c860151.md) | 78 | `result-track:c7f8edb335c0b2e73c860151f371bf1fc1bcd79fa3651e057e136d3cf5ca077a` |
| 10 | `theorem` | [IsPrime.mul_mem_iff_mem_or_mem](../../../../mathematics/Algebra/Prime/Varianta41cb5b76d26c747c4bdd89c653da6b3d1e1c7a9dda5bc303c114ed210abebe8.lean/declarations/isprime-mul-mem-iff-mem-or-mem--aaa82ffd535e827d01807967.md) | 82 | `result-track:aaa82ffd535e827d0180796735651e849d5340c7db81018953f6086c0c4b564e` |
| 11 | `theorem` | [IsPrime.pow_mem_iff_mem](../../../../mathematics/Algebra/Prime/Varianta41cb5b76d26c747c4bdd89c653da6b3d1e1c7a9dda5bc303c114ed210abebe8.lean/declarations/isprime-pow-mem-iff-mem--c479ff87d58228812d46d2e8.md) | 88 | `result-track:c479ff87d58228812d46d2e8e9b2499bcd02dc9e5df7324865642fedcb9c5302` |
| 12 | `def` | [primeCompl](../../../../mathematics/Algebra/Prime/Varianta41cb5b76d26c747c4bdd89c653da6b3d1e1c7a9dda5bc303c114ed210abebe8.lean/declarations/primecompl--6e9cef692c12ffeca6948a6c.md) | 93 | `declaration-track:6e9cef692c12ffeca6948a6c16b9aad28abc64c8c80a4c11aa441f6b98cbbf7c` |
| 13 | `theorem` | [IsDomain.of_bot_isPrime](../../../../mathematics/Algebra/Prime/Varianta41cb5b76d26c747c4bdd89c653da6b3d1e1c7a9dda5bc303c114ed210abebe8.lean/declarations/isdomain-of-bot-isprime--5d45bb714fda660834a6c742.md) | 104 | `result-track:5d45bb714fda660834a6c74235562c85c793f504b117c7d7a6204015e306f751` |
| 14 | `theorem` | [eq_bot_of_prime](../../../../mathematics/Algebra/Prime/Varianta41cb5b76d26c747c4bdd89c653da6b3d1e1c7a9dda5bc303c114ed210abebe8.lean/declarations/eq-bot-of-prime--8a207f9e43c3e84267a042a6.md) | 116 | `result-track:8a207f9e43c3e84267a042a68b97cb968339a0394d9cdde99c775e31d823598d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
