# recEmptyOption

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1cc9174be760f01308b22727ab5ab0facdc28027bc3789b5f659a94e873ea990",
  "kind": "def",
  "lexical_name": "recEmptyOption",
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
  "slug": "recemptyoption--847cd63492f474aed6632d93",
  "source": {
    "blob": "a9d0df37c33750e31b378f9051558dac63145c0f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 63,
    "line": 43,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Option/Variant52fb1007a3f0018b7deb31995ea9bbf8dc6e07752fee27ee55d71b70af5b8677.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:847cd63492f474aed6632d931791e0b131e5f69737f92c0fc014c57e33d2924a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Option/Variant52fb1007a3f0018b7deb31995ea9bbf8dc6e07752fee27ee55d71b70af5b8677.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1cc9174be760f01308b22727ab5ab0facdc28027bc3789b5f659a94e873ea990`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 43–63.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def recEmptyOption {P : Type u → Sort v}
    (finChoice : (n : ℕ) → Fin (n + 1))
    (congr : {α β : Type u} → (_ : FinEnum α) → (_ : FinEnum β) → card β = card α → P α → P β)
    (empty : P PEmpty.{u + 1})
    (option : {α : Type u} → FinEnum α → P α → P (Option α))
    (α : Type u) [FinEnum α] :
    P α :=
  match cardeq : card α with
  | 0 => congr _ _ cardeq empty
  | n + 1 =>
    let fN := ULift.instFinEnum (α := Fin n)
    have : card (ULift.{u} <| Fin n) = n := card_ulift.trans card_fin
    congr (insertNone _ <| finChoice n) _
      (cardeq.trans <| congrArg Nat.succ this.symm) <|
        option fN (recEmptyOption finChoice congr empty option _)
termination_by card α

/--
For an empty type, the recursion principle evaluates to whatever `congr`
makes of the base case.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Option/Variant52fb1007a3f0018b7deb31995ea9bbf8dc6e07752fee27ee55d71b70af5b8677.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Option/Variant52fb1007a3f0018b7deb31995ea9bbf8dc6e07752fee27ee55d71b70af5b8677.lean#L43).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a9d0df37c33750e31b378f9051558dac63145c0f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
