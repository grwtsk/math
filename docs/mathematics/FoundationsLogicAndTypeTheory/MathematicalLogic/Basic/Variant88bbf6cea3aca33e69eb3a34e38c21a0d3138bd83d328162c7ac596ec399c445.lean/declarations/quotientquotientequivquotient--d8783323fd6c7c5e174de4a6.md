# quotientQuotientEquivQuotient

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:53be441f6b600967b4fcc6e66fb2338ed607bdcbc684b20d68e578a45821ad84",
  "kind": "def",
  "lexical_name": "quotientQuotientEquivQuotient",
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
  "slug": "quotientquotientequivquotient--d8783323fd6c7c5e174de4a6",
  "source": {
    "blob": "ea54004a26d2b0266aa72d207b1fe98e62478eb5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 422,
    "line": 404,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant88bbf6cea3aca33e69eb3a34e38c21a0d3138bd83d328162c7ac596ec399c445.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d8783323fd6c7c5e174de4a6eefc2593cf2dc641f232a9454124ec77b82f54c5",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant88bbf6cea3aca33e69eb3a34e38c21a0d3138bd83d328162c7ac596ec399c445.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:53be441f6b600967b4fcc6e66fb2338ed607bdcbc684b20d68e578a45821ad84`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 404–422.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def quotientQuotientEquivQuotient (s : Setoid α) (h : r ≤ s) :
    Quotient (ker (Quot.mapRight h)) ≃ Quotient s where
  toFun x :=
    (Quotient.liftOn' x fun w =>
        (Quotient.liftOn' w (@Quotient.mk'' _ s)) fun _ _ H => Quotient.sound <| h H)
      fun x y => Quotient.inductionOn₂' x y fun _ _ H => show @Quot.mk _ _ _ = @Quot.mk _ _ _ from H
  invFun x :=
    (Quotient.liftOn' x fun w => @Quotient.mk'' _ (ker <| Quot.mapRight h) <| @Quotient.mk'' _ r w)
      fun _ _ H => Quotient.sound' <| show @Quot.mk _ _ _ = @Quot.mk _ _ _ from Quotient.sound H
  left_inv x :=
    Quotient.inductionOn' x fun y => Quotient.inductionOn' y fun w => by show ⟦_⟧ = _; rfl
  right_inv x := Quotient.inductionOn' x fun y => by show ⟦_⟧ = _; rfl

variable {r f}

open Quotient

/-- Given an equivalence relation `r` on `α`, the order-preserving bijection between the set of
equivalence relations containing `r` and the equivalence relations on the quotient of `α` by `r`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant88bbf6cea3aca33e69eb3a34e38c21a0d3138bd83d328162c7ac596ec399c445.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant88bbf6cea3aca33e69eb3a34e38c21a0d3138bd83d328162c7ac596ec399c445.lean#L404).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ea54004a26d2b0266aa72d207b1fe98e62478eb5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
