# Verification target: GRWTSK.NumberTheory.ElementaryNumberTheory.Divisibility.Variant1a773d2e5a5b60dd3ecec7d09a45fbae346e37c48ae65f386eabf94a5c5ceaeb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ade99a6e2bb892a6d7de0f1257e4d3b39817ec1d",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Divisibility/Variant1a773d2e5a5b60dd3ecec7d09a45fbae346e37c48ae65f386eabf94a5c5ceaeb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Divisibility/Variant1a773d2e5a5b60dd3ecec7d09a45fbae346e37c48ae65f386eabf94a5c5ceaeb.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Divisibility/Variant1a773d2e5a5b60dd3ecec7d09a45fbae346e37c48ae65f386eabf94a5c5ceaeb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ade99a6e2bb892a6d7de0f1257e4d3b39817ec1d`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/Divisibility/Variant1a773d2e5a5b60dd3ecec7d09a45fbae346e37c48ae65f386eabf94a5c5ceaeb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/Divisibility/Variant1a773d2e5a5b60dd3ecec7d09a45fbae346e37c48ae65f386eabf94a5c5ceaeb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.IsPrimePow` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.SetTheory.Cardinal.Arithmetic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.WLOG` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [isUnit_iff](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Divisibility/Variant1a773d2e5a5b60dd3ecec7d09a45fbae346e37c48ae65f386eabf94a5c5ceaeb.lean/declarations/isunit-iff--b318fa4dd242f1a1c76255e1.md) | 47 | `result-track:b318fa4dd242f1a1c76255e1581e63d61204eb0455b07db945ab67cc5a96bbaa` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Divisibility/Variant1a773d2e5a5b60dd3ecec7d09a45fbae346e37c48ae65f386eabf94a5c5ceaeb.lean/declarations/instance--e527bf5eda0d3acaeadbfcbb.md) | 64 | `declaration-track:e527bf5eda0d3acaeadbfcbbaae62208d3a80a899d1dc4ce22469d0013960c18` |
| 3 | `theorem` | [le_of_dvd](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Divisibility/Variant1a773d2e5a5b60dd3ecec7d09a45fbae346e37c48ae65f386eabf94a5c5ceaeb.lean/declarations/le-of-dvd--53d74007e4b49b8620fe0e9f.md) | 68 | `result-track:53d74007e4b49b8620fe0e9ff858370349b53039541e78c81fe30b513d803695` |
| 4 | `theorem` | [dvd_of_le_of_aleph0_le](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Divisibility/Variant1a773d2e5a5b60dd3ecec7d09a45fbae346e37c48ae65f386eabf94a5c5ceaeb.lean/declarations/dvd-of-le-of-aleph0-le--4c2956e1e92c4e9f7cefb1e4.md) | 73 | `result-track:4c2956e1e92c4e9f7cefb1e4016094e46c15231c6c6381b8873ed4037d07d6e5` |
| 5 | `theorem` | [prime_of_aleph0_le](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Divisibility/Variant1a773d2e5a5b60dd3ecec7d09a45fbae346e37c48ae65f386eabf94a5c5ceaeb.lean/declarations/prime-of-aleph0-le--bdb8f6df5685c247cef23566.md) | 77 | `result-track:bdb8f6df5685c247cef235663382cce92edaf92513ea5f5903bf23e937d3c3f3` |
| 6 | `theorem` | [not_irreducible_of_aleph0_le](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Divisibility/Variant1a773d2e5a5b60dd3ecec7d09a45fbae346e37c48ae65f386eabf94a5c5ceaeb.lean/declarations/not-irreducible-of-aleph0-le--c100cfba05a3728397f41f4c.md) | 92 | `result-track:c100cfba05a3728397f41f4c93d9ab952f813c696ef1fae3dc0364f12f926edb` |
| 7 | `theorem` | [nat_coe_dvd_iff](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Divisibility/Variant1a773d2e5a5b60dd3ecec7d09a45fbae346e37c48ae65f386eabf94a5c5ceaeb.lean/declarations/nat-coe-dvd-iff--1450d485b4c8eb399e011cfb.md) | 99 | `result-track:1450d485b4c8eb399e011cfb289a5f4885c98d4fd289b3e500ee5ff0b97f30d3` |
| 8 | `theorem` | [nat_is_prime_iff](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Divisibility/Variant1a773d2e5a5b60dd3ecec7d09a45fbae346e37c48ae65f386eabf94a5c5ceaeb.lean/declarations/nat-is-prime-iff--52b3d7105e36bdf67e4b2d51.md) | 110 | `result-track:52b3d7105e36bdf67e4b2d51cff500dc94defb5a38595a6f1c484e4d94936851` |
| 9 | `theorem` | [is_prime_iff](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Divisibility/Variant1a773d2e5a5b60dd3ecec7d09a45fbae346e37c48ae65f386eabf94a5c5ceaeb.lean/declarations/is-prime-iff--b2b3f4580c8abc83f6089b27.md) | 134 | `result-track:b2b3f4580c8abc83f6089b2783ab462eafa3608e121a5e4631be58b918d1f72e` |
| 10 | `theorem` | [isPrimePow_iff](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Divisibility/Variant1a773d2e5a5b60dd3ecec7d09a45fbae346e37c48ae65f386eabf94a5c5ceaeb.lean/declarations/isprimepow-iff--6dddf6db330dd501c78c8ea1.md) | 140 | `result-track:6dddf6db330dd501c78c8ea17a1056bf5e076e09b58062ce6ed4e140138adef6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
