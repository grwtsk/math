# Verification target: GRWTSK.Algebra.LinearAlgebra.Lemmas.Variant548f0c1eeab137f05f55610a1629318edb20f0c83a5ac71071156cb8b4716621

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4321f4dc9829dcf0bab933761c83f55eb218fec1",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Lemmas/Variant548f0c1eeab137f05f55610a1629318edb20f0c83a5ac71071156cb8b4716621.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Lemmas/Variant548f0c1eeab137f05f55610a1629318edb20f0c83a5ac71071156cb8b4716621.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Lemmas/Variant548f0c1eeab137f05f55610a1629318edb20f0c83a5ac71071156cb8b4716621.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4321f4dc9829dcf0bab933761c83f55eb218fec1`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Lemmas/Variant548f0c1eeab137f05f55610a1629318edb20f0c83a5ac71071156cb8b4716621.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Lemmas/Variant548f0c1eeab137f05f55610a1629318edb20f0c83a5ac71071156cb8b4716621.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Matrix.ToLin` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Quotient.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.Maps` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Nilpotent.Defs` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [RingHom.ker_isRadical_iff_reduced_of_surjective](../../../../../mathematics/Algebra/LinearAlgebra/Lemmas/Variant548f0c1eeab137f05f55610a1629318edb20f0c83a5ac71071156cb8b4716621.lean/declarations/ringhom-ker-isradical-iff-reduced-of-surjective--b4dbd0c08481f3ff2cebf8b0.md) | 31 | `result-track:b4dbd0c08481f3ff2cebf8b0bd58087931080cd3189312e55299766eb2c22df8` |
| 2 | `theorem` | [isRadical_iff_span_singleton](../../../../../mathematics/Algebra/LinearAlgebra/Lemmas/Variant548f0c1eeab137f05f55610a1629318edb20f0c83a5ac71071156cb8b4716621.lean/declarations/isradical-iff-span-singleton--8842768ed7732b382330f76c.md) | 37 | `result-track:8842768ed7732b382330f76c2eadee28b1d94c7b91961ece6959921956218eef` |
| 3 | `theorem` | [isNilpotent_iff_zero_mem_powers](../../../../../mathematics/Algebra/LinearAlgebra/Lemmas/Variant548f0c1eeab137f05f55610a1629318edb20f0c83a5ac71071156cb8b4716621.lean/declarations/isnilpotent-iff-zero-mem-powers--fec7a26fc170b619f9985a94.md) | 42 | `result-track:fec7a26fc170b619f9985a94e4b9d0860b03d45c77cda7959804630f1bc8fd58` |
| 4 | `def` | [nilradical](../../../../../mathematics/Algebra/LinearAlgebra/Lemmas/Variant548f0c1eeab137f05f55610a1629318edb20f0c83a5ac71071156cb8b4716621.lean/declarations/nilradical--356dcc021b8283c4122b7cce.md) | 50 | `declaration-track:356dcc021b8283c4122b7cce20a6abbd9aa6086a57710d938fa53e10d2431306` |
| 5 | `theorem` | [mem_nilradical](../../../../../mathematics/Algebra/LinearAlgebra/Lemmas/Variant548f0c1eeab137f05f55610a1629318edb20f0c83a5ac71071156cb8b4716621.lean/declarations/mem-nilradical--709948aa3bf5a14cf00e774a.md) | 53 | `result-track:709948aa3bf5a14cf00e774a7ebb9209fe1d5474ac30bcf231c8dd6929b27214` |
| 6 | `theorem` | [nilradical_eq_sInf](../../../../../mathematics/Algebra/LinearAlgebra/Lemmas/Variant548f0c1eeab137f05f55610a1629318edb20f0c83a5ac71071156cb8b4716621.lean/declarations/nilradical-eq-sinf--488acc9f0a6e87c23b061b2e.md) | 56 | `result-track:488acc9f0a6e87c23b061b2ee4e99fee862d5320e460f78a57b1e190f16a771b` |
| 7 | `theorem` | [nilpotent_iff_mem_prime](../../../../../mathematics/Algebra/LinearAlgebra/Lemmas/Variant548f0c1eeab137f05f55610a1629318edb20f0c83a5ac71071156cb8b4716621.lean/declarations/nilpotent-iff-mem-prime--2f6d6dabb2c9f9ce87fe4232.md) | 60 | `result-track:2f6d6dabb2c9f9ce87fe4232650ed8a0102af87c481545b91874844832edfef9` |
| 8 | `theorem` | [nilradical_le_prime](../../../../../mathematics/Algebra/LinearAlgebra/Lemmas/Variant548f0c1eeab137f05f55610a1629318edb20f0c83a5ac71071156cb8b4716621.lean/declarations/nilradical-le-prime--430a366ed33468e1bd36d547.md) | 64 | `result-track:430a366ed33468e1bd36d54758c5d58df7d155a67b7d54ead201482f18aff1fc` |
| 9 | `theorem` | [nilradical_eq_zero](../../../../../mathematics/Algebra/LinearAlgebra/Lemmas/Variant548f0c1eeab137f05f55610a1629318edb20f0c83a5ac71071156cb8b4716621.lean/declarations/nilradical-eq-zero--ec5880fa76953140940b3891.md) | 68 | `result-track:ec5880fa76953140940b3891c0fe9138cd0e67f86e4c845f93a28cc3a47ab1fb` |
| 10 | `theorem` | [nilradical_eq_bot_iff](../../../../../mathematics/Algebra/LinearAlgebra/Lemmas/Variant548f0c1eeab137f05f55610a1629318edb20f0c83a5ac71071156cb8b4716621.lean/declarations/nilradical-eq-bot-iff--6cdedf2e36569b48d8d03447.md) | 71 | `result-track:6cdedf2e36569b48d8d0344797b031d20543bc5acc7878311ea01c399e57c0fe` |
| 11 | `theorem` | [isNilpotent_mulLeft_iff](../../../../../mathematics/Algebra/LinearAlgebra/Lemmas/Variant548f0c1eeab137f05f55610a1629318edb20f0c83a5ac71071156cb8b4716621.lean/declarations/isnilpotent-mulleft-iff--337e356f5ef9b9cd032715ce.md) | 81 | `result-track:337e356f5ef9b9cd032715ce532a1588bbb27573f8337716f5e951468e7f7988` |
| 12 | `theorem` | [isNilpotent_mulRight_iff](../../../../../mathematics/Algebra/LinearAlgebra/Lemmas/Variant548f0c1eeab137f05f55610a1629318edb20f0c83a5ac71071156cb8b4716621.lean/declarations/isnilpotent-mulright-iff--79688cc19d84db34b7f1dc24.md) | 87 | `result-track:79688cc19d84db34b7f1dc24e5f4718dd0bda61e4ad70591f7f94cd7f1bd313f` |
| 13 | `lemma` | [isNilpotent_toMatrix_iff](../../../../../mathematics/Algebra/LinearAlgebra/Lemmas/Variant548f0c1eeab137f05f55610a1629318edb20f0c83a5ac71071156cb8b4716621.lean/declarations/isnilpotent-tomatrix-iff--21e5efe3ff9a1685eff646d5.md) | 96 | `result-track:21e5efe3ff9a1685eff646d58a3ea9a4de515e63094c1c83fb203235a9218e18` |
| 14 | `lemma` | [isNilpotent_restrict_of_le](../../../../../mathematics/Algebra/LinearAlgebra/Lemmas/Variant548f0c1eeab137f05f55610a1629318edb20f0c83a5ac71071156cb8b4716621.lean/declarations/isnilpotent-restrict-of-le--a638e4b5d2d32957b4f765ef.md) | 110 | `result-track:a638e4b5d2d32957b4f765ef8a8c38ad2574e2e61194ae44dea0f6aaedc14875` |
| 15 | `lemma` | [isNilpotent.restrict](../../../../../mathematics/Algebra/LinearAlgebra/Lemmas/Variant548f0c1eeab137f05f55610a1629318edb20f0c83a5ac71071156cb8b4716621.lean/declarations/isnilpotent-restrict--b32074d4098cacbd8082e54b.md) | 122 | `result-track:b32074d4098cacbd8082e54bce3a9637a7b595265491b1a4e6cdaa6c555bcfa6` |
| 16 | `theorem` | [IsNilpotent.mapQ](../../../../../mathematics/Algebra/LinearAlgebra/Lemmas/Variant548f0c1eeab137f05f55610a1629318edb20f0c83a5ac71071156cb8b4716621.lean/declarations/isnilpotent-mapq--62ad69be707d33b1e3b5e3b9.md) | 134 | `result-track:62ad69be707d33b1e3b5e3b9720dad42e67d7febaff595022e3a36050c44e7c5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
