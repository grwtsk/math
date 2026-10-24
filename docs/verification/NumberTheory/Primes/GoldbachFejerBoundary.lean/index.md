# Verification target: GRWTSK.NumberTheory.Primes.GoldbachFejerBoundary

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7265b7603e55cda94078bfe8bb5b40298c75fdb5",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Primes/GoldbachFejerBoundary.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Primes/GoldbachFejerBoundary.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Primes/GoldbachFejerBoundary.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7265b7603e55cda94078bfe8bb5b40298c75fdb5`.

Source path: `GRWTSK/NumberTheory/Primes/GoldbachFejerBoundary.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Primes/GoldbachFejerBoundary.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Primes.GoldbachFejerCoreLowerBound`](../../../../mathematics/NumberTheory/Primes/GoldbachFejerCoreLowerBound.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.NumberTheory.Primes.GoldbachFiniteSingularBoundary`](../../../../mathematics/NumberTheory/Primes/GoldbachFiniteSingularBoundary.lean/index.md) — import line 5; pinned internal source present.
- `Mathlib.Tactic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [goldbachDenominatorRange](../../../../mathematics/NumberTheory/Primes/GoldbachFejerBoundary.lean/declarations/goldbachdenominatorrange--7378696b79a07da3c6cbce7a.md) | 55 | `declaration-track:7378696b79a07da3c6cbce7af2d383b8e405f8de8cbebdbf98b98f85d6e0cb24` |
| 2 | `theorem` | [mem_goldbachDenominatorRange](../../../../mathematics/NumberTheory/Primes/GoldbachFejerBoundary.lean/declarations/mem-goldbachdenominatorrange--713485f7a6483e3b86c44bdb.md) | 59 | `result-track:713485f7a6483e3b86c44bdbb13ea9d37cc535c7de454e28229b065424acd382` |
| 3 | `theorem` | [goldbachRationalArcIndices_denominator_fiber](../../../../mathematics/NumberTheory/Primes/GoldbachFejerBoundary.lean/declarations/goldbachrationalarcindices-denominator-fiber--821768dec7840fabdae70f9d.md) | 67 | `result-track:821768dec7840fabdae70f9d0115b07b952ebe945698bb962aaa172bca141ce2` |
| 4 | `def` | [goldbachFejerDenominatorBlock](../../../../mathematics/NumberTheory/Primes/GoldbachFejerBoundary.lean/declarations/goldbachfejerdenominatorblock--810cd655943b8ff6aacdb166.md) | 99 | `declaration-track:810cd655943b8ff6aacdb1667684855ab17fad0ac8c88340e70927f3caaeb4a0` |
| 5 | `theorem` | [goldbachProgressionSymmetricWindowMajorSum_eq_denominatorSum](../../../../mathematics/NumberTheory/Primes/GoldbachFejerBoundary.lean/declarations/goldbachprogressionsymmetricwindowmajorsum-eq-denominatorsum--604302849e27a97c4ddae11d.md) | 105 | `result-track:604302849e27a97c4ddae11d6fff59ea62c9855ebfca0b22900de7bafe078c21` |
| 6 | `theorem` | [goldbachFejerDenominatorBlock_re](../../../../mathematics/NumberTheory/Primes/GoldbachFejerBoundary.lean/declarations/goldbachfejerdenominatorblock-re--c2d161384eaa23d03cb3ad56.md) | 162 | `result-track:c2d161384eaa23d03cb3ad56703bba2d0d54b6e000119010563ababc3e6c5752` |
| 7 | `def` | [goldbachFejerDenominatorLowerTerm](../../../../mathematics/NumberTheory/Primes/GoldbachFejerBoundary.lean/declarations/goldbachfejerdenominatorlowerterm--b8486a834535ed6b80c96ab6.md) | 175 | `declaration-track:b8486a834535ed6b80c96ab6b024e0f043e0880fed7f6ac2a295ffad1303d9fb` |
| 8 | `def` | [goldbachFejerDenominatorLowerSum](../../../../mathematics/NumberTheory/Primes/GoldbachFejerBoundary.lean/declarations/goldbachfejerdenominatorlowersum--0a538d7e9db7a936cbca2ef6.md) | 185 | `declaration-track:0a538d7e9db7a936cbca2ef68bfdab04e82d78022e99f116c73b0525075180f9` |
| 9 | `theorem` | [goldbachFejerDenominatorLowerTerm_le_block_re](../../../../mathematics/NumberTheory/Primes/GoldbachFejerBoundary.lean/declarations/goldbachfejerdenominatorlowerterm-le-block-re--34ce96b4b8175157f351bdab.md) | 191 | `result-track:34ce96b4b8175157f351bdab4faaf9ba8c01b32417ef2ecfbdea0303e7fbc6fa` |
| 10 | `theorem` | [goldbachFejerDenominatorLowerSum_le_symmetricMajor_re](../../../../mathematics/NumberTheory/Primes/GoldbachFejerBoundary.lean/declarations/goldbachfejerdenominatorlowersum-le-symmetricmajor-re--a4ec7d7a4298ce2b8e913855.md) | 225 | `result-track:a4ec7d7a4298ce2b8e91385560bed75958d35ab15fc7ffc1a3493482c0ee2857` |
| 11 | `theorem` | [goldbachFejerDenominatorLowerSum_le_factoredMajor_re](../../../../mathematics/NumberTheory/Primes/GoldbachFejerBoundary.lean/declarations/goldbachfejerdenominatorlowersum-le-factoredmajor-re--2b8c11b4978d0cbcf87d11b8.md) | 237 | `result-track:2b8c11b4978d0cbcf87d11b8fdf5c8312747cf04fbf67db46c32f9645fa72eed` |
| 12 | `theorem` | [goldbachCount_pos_of_fejerDenominator_progression_bounds](../../../../mathematics/NumberTheory/Primes/GoldbachFejerBoundary.lean/declarations/goldbachcount-pos-of-fejerdenominator-progression-bounds--b002b4a4cf06d3a14360ca8f.md) | 247 | `result-track:b002b4a4cf06d3a14360ca8f47baf1f3a420618a905fb52dc96bfc741c80b6af` |
| 13 | `theorem` | [goldbachCount_pos_of_fejerDenominator_coefficient_certificate](../../../../mathematics/NumberTheory/Primes/GoldbachFejerBoundary.lean/declarations/goldbachcount-pos-of-fejerdenominator-coefficient-certificate--361ae6fe38b24422250a2cd4.md) | 286 | `result-track:361ae6fe38b24422250a2cd404a59f918e8ca595f90e58d03610e54f0bab9497` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
