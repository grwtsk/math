# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.CharZero.Variant9028e2f04c1ac95a96891e0653b77bee9174591f9850fa5f21d0c753bcc0c3f5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2580be563498e91e4d37bb9d51c7e9674190d71d",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/CharZero/Variant9028e2f04c1ac95a96891e0653b77bee9174591f9850fa5f21d0c753bcc0c3f5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/FoundationsLogicAndTypeTheory/CharZero/Variant9028e2f04c1ac95a96891e0653b77bee9174591f9850fa5f21d0c753bcc0c3f5.lean/index.md) · [Full source](../../../../mathematics/FoundationsLogicAndTypeTheory/CharZero/Variant9028e2f04c1ac95a96891e0653b77bee9174591f9850fa5f21d0c753bcc0c3f5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2580be563498e91e4d37bb9d51c7e9674190d71d`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/CharZero/Variant9028e2f04c1ac95a96891e0653b77bee9174591f9850fa5f21d0c753bcc0c3f5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/CharZero/Variant9028e2f04c1ac95a96891e0653b77bee9174591f9850fa5f21d0c753bcc0c3f5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Support` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Int.Cast.Field` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Int.Cast.Lemmas` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Int.Cast.Pi` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [cast_div_charZero](../../../../mathematics/FoundationsLogicAndTypeTheory/CharZero/Variant9028e2f04c1ac95a96891e0653b77bee9174591f9850fa5f21d0c753bcc0c3f5.lean/declarations/cast-div-charzero--9cb70e635719464e608fb80e.md) | 23 | `result-track:9cb70e635719464e608fb80ecb4dd13733672bad80d3a2a237671f66912da2a6` |
| 2 | `theorem` | [cast_div_ofNat_charZero](../../../../mathematics/FoundationsLogicAndTypeTheory/CharZero/Variant9028e2f04c1ac95a96891e0653b77bee9174591f9850fa5f21d0c753bcc0c3f5.lean/declarations/cast-div-ofnat-charzero--748d4918e4d18a1e4f872115.md) | 31 | `result-track:748d4918e4d18a1e4f8721152b3d30174a6ac429482c4352c2eaff340c0c217f` |
| 3 | `theorem` | [RingHom.injective_int](../../../../mathematics/FoundationsLogicAndTypeTheory/CharZero/Variant9028e2f04c1ac95a96891e0653b77bee9174591f9850fa5f21d0c753bcc0c3f5.lean/declarations/ringhom-injective-int--ce0a35cc9f461893aa54b29b.md) | 37 | `result-track:ce0a35cc9f461893aa54b29b431e9cbd8763d5b05415903f5b69177176678fc1` |
| 4 | `lemma` | [support_intCast](../../../../mathematics/FoundationsLogicAndTypeTheory/CharZero/Variant9028e2f04c1ac95a96891e0653b77bee9174591f9850fa5f21d0c753bcc0c3f5.lean/declarations/support-intcast--8862ac2b5bb63df16fa078c4.md) | 44 | `result-track:8862ac2b5bb63df16fa078c47b474e082e5da5cb5ea4360e85ac8f6e4261c8fb` |
| 5 | `lemma` | [mulSupport_intCast](../../../../mathematics/FoundationsLogicAndTypeTheory/CharZero/Variant9028e2f04c1ac95a96891e0653b77bee9174591f9850fa5f21d0c753bcc0c3f5.lean/declarations/mulsupport-intcast--d2f802e9ba9b95b879dfc898.md) | 47 | `result-track:d2f802e9ba9b95b879dfc89894325241dbe7d687609cbc8dbf8bc03dfc8bdd6d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
