# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:cb97e550aa95e7f6b5bf29ca030ee804717fa6ea78a9d31fc2d0fd5b1eb3203d",
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
  "slug": "instance--c42b10dfe983f6c11a303bf2",
  "source": {
    "blob": "6036037b103571cfd185b41fdd6aa327d7ab532c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 147,
    "line": 131,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant4ef9761c57a80850ba6776e15eab03f76cb7412a23f52eb03ebfc34ae7e8e97b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c42b10dfe983f6c11a303bf279ed127d0c4932275205315292defbb2737b0264",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant4ef9761c57a80850ba6776e15eab03f76cb7412a23f52eb03ebfc34ae7e8e97b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:cb97e550aa95e7f6b5bf29ca030ee804717fa6ea78a9d31fc2d0fd5b1eb3203d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 131–147.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance : IsTrichotomous Game LF :=
  ⟨by
    rintro ⟨x⟩ ⟨y⟩
    change _ ∨ ⟦x⟧ = ⟦y⟧ ∨ _
    rw [Quotient.eq]
    apply lf_or_equiv_or_gf⟩

/-! It can be useful to use these lemmas to turn `PGame` inequalities into `Game` inequalities, as
the `AddCommGroup` structure on `Game` often simplifies many proofs. -/

end Game

namespace PGame

-- Porting note: In a lot of places, I had to add explicitly that the quotient element was a Game.
-- In Lean4, quotients don't have the setoid as an instance argument,
-- but as an explicit argument, see https://leanprover.zulipchat.com/#narrow/stream/113489-new-members/topic/confusion.20between.20equivalence.20and.20instance.20setoid/near/360822354
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant4ef9761c57a80850ba6776e15eab03f76cb7412a23f52eb03ebfc34ae7e8e97b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant4ef9761c57a80850ba6776e15eab03f76cb7412a23f52eb03ebfc34ae7e8e97b.lean#L131).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6036037b103571cfd185b41fdd6aa327d7ab532c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
