# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7f15ea10e3bcd9a08cdf2f6c8597f34eddbfe8f198c357a567b5621c17ac0b07",
  "kind": "instance",
  "lexical_name": null,
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "instance--af3690abd7bca128eb9bda94",
  "source": {
    "blob": "bd1c9b0b3ac42b9b20a837d6e7397998ec386bf9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 427,
    "line": 414,
    "path": "GRWTSK/Algebra/UniversalAlgebra/WithTop/Variant6065bbebb446cf72b2e0f717dc24de885ee919425d50b3acb6737febd3cbdcb0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:af3690abd7bca128eb9bda9428d2523dfbdd4b0571188ef5d87a495813640d4f",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/WithTop/Variant6065bbebb446cf72b2e0f717dc24de885ee919425d50b3acb6737febd3cbdcb0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7f15ea10e3bcd9a08cdf2f6c8597f34eddbfe8f198c357a567b5621c17ac0b07`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 414–427.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance [MulZeroClass α] [Preorder α] [MulPosMonoRev α] : MulPosMonoRev (WithBot α) :=
  ⟨by
    intro ⟨x, x0⟩ a b h
    simp only [Subtype.coe_mk] at h
    lift x to α using x0.ne_bot
    induction a using WithBot.recBotCoe
    · exact bot_le
    induction b using WithBot.recBotCoe
    · rw [bot_mul x0.ne.symm, ← coe_mul] at h
      exact absurd h (bot_lt_coe _).not_le
    simp only [← coe_mul, coe_le_coe] at *
    norm_cast at x0
    exact le_of_mul_le_mul_right h x0 ⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/WithTop/Variant6065bbebb446cf72b2e0f717dc24de885ee919425d50b3acb6737febd3cbdcb0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/WithTop/Variant6065bbebb446cf72b2e0f717dc24de885ee919425d50b3acb6737febd3cbdcb0.lean#L414).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bd1c9b0b3ac42b9b20a837d6e7397998ec386bf9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
