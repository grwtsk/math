# Verification target: GRWTSK.Algebra.Nilpotent.Variantaca52a57c22e973fc1e30fdddca3557314945e9a3b6b2416f9da9afa7f23105f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "59b27c6afab0fbc017090aa91f2a50cbc3bf7baa",
  "lexical_observation_count": 2,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Nilpotent/Variantaca52a57c22e973fc1e30fdddca3557314945e9a3b6b2416f9da9afa7f23105f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Nilpotent/Variantaca52a57c22e973fc1e30fdddca3557314945e9a3b6b2416f9da9afa7f23105f.lean/index.md) · [Full source](../../../../mathematics/Algebra/Nilpotent/Variantaca52a57c22e973fc1e30fdddca3557314945e9a3b6b2416f9da9afa7f23105f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `59b27c6afab0fbc017090aa91f2a50cbc3bf7baa`.

Source path: `GRWTSK/Algebra/Nilpotent/Variantaca52a57c22e973fc1e30fdddca3557314945e9a3b6b2416f9da9afa7f23105f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Nilpotent/Variantaca52a57c22e973fc1e30fdddca3557314945e9a3b6b2416f9da9afa7f23105f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Finiteness.Ideal` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Nilpotent.Lemmas` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Noetherian.Defs` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [IsNoetherianRing.isNilpotent_nilradical](../../../../mathematics/Algebra/Nilpotent/Variantaca52a57c22e973fc1e30fdddca3557314945e9a3b6b2416f9da9afa7f23105f.lean/declarations/isnoetherianring-isnilpotent-nilradical--4d0dbda3164361efc00f13c5.md) | 21 | `result-track:4d0dbda3164361efc00f13c528227637b936df1892ad4ee4c6941df278b9275a` |
| 2 | `lemma` | [Ideal.FG.isNilpotent_iff_le_nilradical](../../../../mathematics/Algebra/Nilpotent/Variantaca52a57c22e973fc1e30fdddca3557314945e9a3b6b2416f9da9afa7f23105f.lean/declarations/ideal-fg-isnilpotent-iff-le-nilradical--ba9978781295ce70c256ad57.md) | 26 | `result-track:ba9978781295ce70c256ad57de6985b643375a5cde0b15ae4e486efca402d10b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
