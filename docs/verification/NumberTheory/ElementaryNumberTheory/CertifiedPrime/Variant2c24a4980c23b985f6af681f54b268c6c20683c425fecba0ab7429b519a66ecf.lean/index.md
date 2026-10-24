# Verification target: GRWTSK.NumberTheory.ElementaryNumberTheory.CertifiedPrime.Variant2c24a4980c23b985f6af681f54b268c6c20683c425fecba0ab7429b519a66ecf

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c4a73f02029c334d08cdf38433f13bbc97d996f7",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/CertifiedPrime/Variant2c24a4980c23b985f6af681f54b268c6c20683c425fecba0ab7429b519a66ecf.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/CertifiedPrime/Variant2c24a4980c23b985f6af681f54b268c6c20683c425fecba0ab7429b519a66ecf.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/CertifiedPrime/Variant2c24a4980c23b985f6af681f54b268c6c20683c425fecba0ab7429b519a66ecf.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c4a73f02029c334d08cdf38433f13bbc97d996f7`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/CertifiedPrime/Variant2c24a4980c23b985f6af681f54b268c6c20683c425fecba0ab7429b519a66ecf.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/CertifiedPrime/Variant2c24a4980c23b985f6af681f54b268c6c20683c425fecba0ab7429b519a66ecf.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.Homology.Event` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Prime.Basic` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [CertifiedPrime](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/CertifiedPrime/Variant2c24a4980c23b985f6af681f54b268c6c20683c425fecba0ab7429b519a66ecf.lean/declarations/certifiedprime--3cb0b8191d2458e351d615c2.md) | 15 | `declaration-track:3cb0b8191d2458e351d615c25616b67cb6afc11b3afe11c8acbd881d9cdbfbe9` |
| 2 | `theorem` | [two_le](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/CertifiedPrime/Variant2c24a4980c23b985f6af681f54b268c6c20683c425fecba0ab7429b519a66ecf.lean/declarations/two-le--81ef08541b17aa599e786f47.md) | 24 | `result-track:81ef08541b17aa599e786f4738aba41c047292470b21a8fccb7beabbe76b888b` |
| 3 | `theorem` | [ne_zero](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/CertifiedPrime/Variant2c24a4980c23b985f6af681f54b268c6c20683c425fecba0ab7429b519a66ecf.lean/declarations/ne-zero--2899ccaa231c5e3e77b2ef1a.md) | 27 | `result-track:2899ccaa231c5e3e77b2ef1ada32219a899d704c3061379b39297d588a90cae4` |
| 4 | `theorem` | [ne_one](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/CertifiedPrime/Variant2c24a4980c23b985f6af681f54b268c6c20683c425fecba0ab7429b519a66ecf.lean/declarations/ne-one--dca7c5838d3bdb85258811de.md) | 30 | `result-track:dca7c5838d3bdb85258811def8310acc59188adc7cc05da5cca2fc77727fae9a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
