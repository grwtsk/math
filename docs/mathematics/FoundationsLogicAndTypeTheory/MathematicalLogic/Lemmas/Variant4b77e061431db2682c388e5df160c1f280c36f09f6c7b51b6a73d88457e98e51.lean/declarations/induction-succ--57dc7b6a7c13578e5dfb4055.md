# induction_succ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a8ce81a9-98bd-6406-9006-53c8ec338210",
  "kind": "theorem",
  "lexical_name": "induction_succ",
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
  "slug": "induction-succ--57dc7b6a7c13578e5dfb4055",
  "source": {
    "blob": "ce5976f7bd35fe22066289e875cb8c2d48472409",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 938,
    "line": 923,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Lemmas/Variant4b77e061431db2682c388e5df160c1f280c36f09f6c7b51b6a73d88457e98e51.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:57dc7b6a7c13578e5dfb40554c3d5a0b849cf0637f86b9f507b8e9772c1648d4",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Lemmas/Variant4b77e061431db2682c388e5df160c1f280c36f09f6c7b51b6a73d88457e98e51.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a8ce81a9-98bd-6406-9006-53c8ec338210`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 923–938.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp, grind =] theorem induction_succ {motive : Fin (n + 1) → Sort _} (zero : motive 0)
    (succ : ∀ i : Fin n, motive (castSucc i) → motive i.succ) (i : Fin n) :
    induction (motive := motive) zero succ i.succ = succ i (induction zero succ (castSucc i)) := rfl

/--
Proves a statement by induction on the underlying `Nat` value in a `Fin (n + 1)`.

For the induction:
 * `zero` is the base case, demonstrating `motive 0`.
 * `succ` is the inductive step, assuming the motive for `i : Fin n` (lifted to `Fin (n + 1)` with
   `Fin.castSucc`) and demonstrating it for `i.succ`.

`Fin.induction` is a version of this induction principle that takes the `Fin` as its last
parameter.
-/
-- FIXME: Performance review
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Lemmas/Variant4b77e061431db2682c388e5df160c1f280c36f09f6c7b51b6a73d88457e98e51.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Lemmas/Variant4b77e061431db2682c388e5df160c1f280c36f09f6c7b51b6a73d88457e98e51.lean#L923).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ce5976f7bd35fe22066289e875cb8c2d48472409` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
