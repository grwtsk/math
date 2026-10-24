# Verification target: GRWTSK.NumberTheory.ElementaryNumberTheory.Divisibility.Variant34a4c1d7adf292a069ba9a6408df62cc344d4a6f8d51bfcef7c8bcfd559bc8f4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "466ce1cf2d323594886f58fcdb148923be5add4c",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Divisibility/Variant34a4c1d7adf292a069ba9a6408df62cc344d4a6f8d51bfcef7c8bcfd559bc8f4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Divisibility/Variant34a4c1d7adf292a069ba9a6408df62cc344d4a6f8d51bfcef7c8bcfd559bc8f4.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Divisibility/Variant34a4c1d7adf292a069ba9a6408df62cc344d4a6f8d51bfcef7c8bcfd559bc8f4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `466ce1cf2d323594886f58fcdb148923be5add4c`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/Divisibility/Variant34a4c1d7adf292a069ba9a6408df62cc344d4a6f8d51bfcef7c8bcfd559bc8f4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/Divisibility/Variant34a4c1d7adf292a069ba9a6408df62cc344d4a6f8d51bfcef7c8bcfd559bc8f4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.IsPrimePow` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.SetTheory.Cardinal.Arithmetic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.WLOG` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [isUnit_iff](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Divisibility/Variant34a4c1d7adf292a069ba9a6408df62cc344d4a6f8d51bfcef7c8bcfd559bc8f4.lean/declarations/isunit-iff--e35cf81bc6a0133070e76bfb.md) | 39 | `result-track:e35cf81bc6a0133070e76bfbd06ee311ce454efcd0dddc94b044208a3636fb40` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Divisibility/Variant34a4c1d7adf292a069ba9a6408df62cc344d4a6f8d51bfcef7c8bcfd559bc8f4.lean/declarations/instance--af358502fa3f5f58d0c425f0.md) | 56 | `declaration-track:af358502fa3f5f58d0c425f04dcf6e8846b1f5f4d9f528a0883a44552cbe6fde` |
| 3 | `theorem` | [le_of_dvd](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Divisibility/Variant34a4c1d7adf292a069ba9a6408df62cc344d4a6f8d51bfcef7c8bcfd559bc8f4.lean/declarations/le-of-dvd--36cff1eb16762fc2152a9bb4.md) | 60 | `result-track:36cff1eb16762fc2152a9bb49a21a1a90e073f494907d14fba0bd3cffe4e25a3` |
| 4 | `theorem` | [dvd_of_le_of_aleph0_le](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Divisibility/Variant34a4c1d7adf292a069ba9a6408df62cc344d4a6f8d51bfcef7c8bcfd559bc8f4.lean/declarations/dvd-of-le-of-aleph0-le--39f91d129a5526caeb9340d6.md) | 65 | `result-track:39f91d129a5526caeb9340d6ea2e5308a79a30fe20e13dcbabb702ad8b9fbea9` |
| 5 | `theorem` | [prime_of_aleph0_le](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Divisibility/Variant34a4c1d7adf292a069ba9a6408df62cc344d4a6f8d51bfcef7c8bcfd559bc8f4.lean/declarations/prime-of-aleph0-le--e76382baccd8bbe857232189.md) | 69 | `result-track:e76382baccd8bbe8572321891a4651d860b59f6da9b6535a9abbf68ebf111497` |
| 6 | `theorem` | [not_irreducible_of_aleph0_le](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Divisibility/Variant34a4c1d7adf292a069ba9a6408df62cc344d4a6f8d51bfcef7c8bcfd559bc8f4.lean/declarations/not-irreducible-of-aleph0-le--028e24db3dffe9420176b7f1.md) | 84 | `result-track:028e24db3dffe9420176b7f158502014084bf6170238d625390985d323f11408` |
| 7 | `theorem` | [nat_coe_dvd_iff](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Divisibility/Variant34a4c1d7adf292a069ba9a6408df62cc344d4a6f8d51bfcef7c8bcfd559bc8f4.lean/declarations/nat-coe-dvd-iff--dd6507481a92e438278f10f4.md) | 91 | `result-track:dd6507481a92e438278f10f40e0d3813122b900353f04aa3ae69d5a48b7cef34` |
| 8 | `theorem` | [nat_is_prime_iff](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Divisibility/Variant34a4c1d7adf292a069ba9a6408df62cc344d4a6f8d51bfcef7c8bcfd559bc8f4.lean/declarations/nat-is-prime-iff--8617459c7f40fe5fc839f275.md) | 102 | `result-track:8617459c7f40fe5fc839f2759592d902efe29dd52742e2fd078aee862106b089` |
| 9 | `theorem` | [is_prime_iff](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Divisibility/Variant34a4c1d7adf292a069ba9a6408df62cc344d4a6f8d51bfcef7c8bcfd559bc8f4.lean/declarations/is-prime-iff--e0dfd86ad841a219838bac2c.md) | 126 | `result-track:e0dfd86ad841a219838bac2c99c7228eab7d36ae0796c3ab91db37480ece4ff0` |
| 10 | `theorem` | [isPrimePow_iff](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Divisibility/Variant34a4c1d7adf292a069ba9a6408df62cc344d4a6f8d51bfcef7c8bcfd559bc8f4.lean/declarations/isprimepow-iff--9e207a917e4b9a4bde8e98f5.md) | 132 | `result-track:9e207a917e4b9a4bde8e98f5156f98384f370fd308faa0e42281e5bdb67dacd5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
