# Verification target: GRWTSK.Algebra.Reduced.Variant503e1e059c5be0c851ea966cac337ad41660304f174a8d3fff8170f844545f40

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c9a9acacb9a25f88081c69e5b22b70f098e0b320",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Reduced/Variant503e1e059c5be0c851ea966cac337ad41660304f174a8d3fff8170f844545f40.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Reduced/Variant503e1e059c5be0c851ea966cac337ad41660304f174a8d3fff8170f844545f40.lean/index.md) · [Full source](../../../../mathematics/Algebra/Reduced/Variant503e1e059c5be0c851ea966cac337ad41660304f174a8d3fff8170f844545f40.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c9a9acacb9a25f88081c69e5b22b70f098e0b320`.

Source path: `GRWTSK/Algebra/Reduced/Variant503e1e059c5be0c851ea966cac337ad41660304f174a8d3fff8170f844545f40.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Reduced/Variant503e1e059c5be0c851ea966cac337ad41660304f174a8d3fff8170f844545f40.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.CharP.Frobenius` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Nilpotent.Defs` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [iterateFrobenius_inj](../../../../mathematics/Algebra/Reduced/Variant503e1e059c5be0c851ea966cac337ad41660304f174a8d3fff8170f844545f40.lean/declarations/iteratefrobenius-inj--7221ba774963ba9ae8ae4e4a.md) | 20 | `result-track:7221ba774963ba9ae8ae4e4a3e256ba999725d1708cac92b45aa7172adf20b03` |
| 2 | `theorem` | [frobenius_inj](../../../../mathematics/Algebra/Reduced/Variant503e1e059c5be0c851ea966cac337ad41660304f174a8d3fff8170f844545f40.lean/declarations/frobenius-inj--3e702919e35ed3d6313ac393.md) | 25 | `result-track:3e702919e35ed3d6313ac393edac906dd5cfa5cc53fa53b8c43429ae60c34d6c` |
| 3 | `theorem` | [isSquare_of_charTwo'](../../../../mathematics/Algebra/Reduced/Variant503e1e059c5be0c851ea966cac337ad41660304f174a8d3fff8170f844545f40.lean/declarations/issquare-of-chartwo--1a1a2b446e80b43548c28032.md) | 32 | `result-track:1a1a2b446e80b43548c2803263f9992284b97f194a205586f41c7dad92b55dfb` |
| 4 | `theorem` | [ExpChar.pow_prime_pow_mul_eq_one_iff](../../../../mathematics/Algebra/Reduced/Variant503e1e059c5be0c851ea966cac337ad41660304f174a8d3fff8170f844545f40.lean/declarations/expchar-pow-prime-pow-mul-eq-one-iff--bb0d6c126009e94b1e35b8b8.md) | 42 | `result-track:bb0d6c126009e94b1e35b8b81cce65f6d174af604d3bea06e6888dbc4ab3db1e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
