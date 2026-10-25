# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.CharZero.Variant96ef35ab09627315471afb9f88613ceae69fa0693e80f5dbdf2e02be5e42430c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0cca702180a9e49fa6f1162a65bf0bf9c7a6aa6c",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/CharZero/Variant96ef35ab09627315471afb9f88613ceae69fa0693e80f5dbdf2e02be5e42430c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/FoundationsLogicAndTypeTheory/CharZero/Variant96ef35ab09627315471afb9f88613ceae69fa0693e80f5dbdf2e02be5e42430c.lean/index.md) · [Full source](../../../../mathematics/FoundationsLogicAndTypeTheory/CharZero/Variant96ef35ab09627315471afb9f88613ceae69fa0693e80f5dbdf2e02be5e42430c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0cca702180a9e49fa6f1162a65bf0bf9c7a6aa6c`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/CharZero/Variant96ef35ab09627315471afb9f88613ceae69fa0693e80f5dbdf2e02be5e42430c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/CharZero/Variant96ef35ab09627315471afb9f88613ceae69fa0693e80f5dbdf2e02be5e42430c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Support` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Int.Cast.Field` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Int.Cast.Lemmas` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Int.Cast.Pi` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [cast_div_charZero](../../../../mathematics/FoundationsLogicAndTypeTheory/CharZero/Variant96ef35ab09627315471afb9f88613ceae69fa0693e80f5dbdf2e02be5e42430c.lean/declarations/cast-div-charzero--750887422263d741ff5cbd49.md) | 31 | `result-track:750887422263d741ff5cbd497997e7a546d1849176fe2fcf922b9accb62bc3bf` |
| 2 | `theorem` | [cast_div_ofNat_charZero](../../../../mathematics/FoundationsLogicAndTypeTheory/CharZero/Variant96ef35ab09627315471afb9f88613ceae69fa0693e80f5dbdf2e02be5e42430c.lean/declarations/cast-div-ofnat-charzero--ef7ad032c68ee99d55cea1c8.md) | 39 | `result-track:ef7ad032c68ee99d55cea1c80a953f39805b14898b0d6521d911cf4a29520fd2` |
| 3 | `theorem` | [RingHom.injective_int](../../../../mathematics/FoundationsLogicAndTypeTheory/CharZero/Variant96ef35ab09627315471afb9f88613ceae69fa0693e80f5dbdf2e02be5e42430c.lean/declarations/ringhom-injective-int--a1b19fa675e60cfb56f8fe04.md) | 45 | `result-track:a1b19fa675e60cfb56f8fe040d02ae832649603144a9683dec74fd2ebcfbf2ea` |
| 4 | `lemma` | [support_intCast](../../../../mathematics/FoundationsLogicAndTypeTheory/CharZero/Variant96ef35ab09627315471afb9f88613ceae69fa0693e80f5dbdf2e02be5e42430c.lean/declarations/support-intcast--3e95eff4f502ff13aedd990e.md) | 52 | `result-track:3e95eff4f502ff13aedd990eb721ce274609bf4fdba2fa5a33a0656006fa15f4` |
| 5 | `lemma` | [mulSupport_intCast](../../../../mathematics/FoundationsLogicAndTypeTheory/CharZero/Variant96ef35ab09627315471afb9f88613ceae69fa0693e80f5dbdf2e02be5e42430c.lean/declarations/mulsupport-intcast--69a8e0d38a827254aa635e0d.md) | 55 | `result-track:69a8e0d38a827254aa635e0d2a650166f45e90eba8503536b0d39ceabcefd519` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
