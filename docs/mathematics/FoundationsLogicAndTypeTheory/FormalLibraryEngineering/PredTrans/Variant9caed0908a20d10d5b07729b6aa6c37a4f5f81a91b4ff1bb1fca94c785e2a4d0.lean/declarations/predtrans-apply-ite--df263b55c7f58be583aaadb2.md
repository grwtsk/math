# PredTrans.apply_ite

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fb2f0358-e443-6838-cfaf-20193ff02e5a",
  "kind": "theorem",
  "lexical_name": "PredTrans.apply_ite",
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
  "slug": "predtrans-apply-ite--df263b55c7f58be583aaadb2",
  "source": {
    "blob": "1fe856b7fd6659920cbfab29c5019a248d496b81",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 169,
    "line": 153,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PredTrans/Variant9caed0908a20d10d5b07729b6aa6c37a4f5f81a91b4ff1bb1fca94c785e2a4d0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:df263b55c7f58be583aaadb24e52289bf138ce1cab695cad804fdc70f1660f8b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PredTrans/Variant9caed0908a20d10d5b07729b6aa6c37a4f5f81a91b4ff1bb1fca94c785e2a4d0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fb2f0358-e443-6838-cfaf-20193ff02e5a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 153–169.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem PredTrans.apply_ite {Pred : Type u} {EPred : Type v}
    (c : Prop) [Decidable c]
    (t : PredTrans Pred EPred α) (e : PredTrans Pred EPred α)
    (post : α → Pred) (epost : EPred) :
    (if c then t else e).apply post epost =
      if c then t.apply post epost else e.apply post epost := by
  split <;> rfl

/-!
## Exception Handling

Definitions for pushing and lifting exception layers through predicate transformers.
-/

/-- Push an `Except ε α` result into separate normal and exception postconditions:
`ok a` uses `post a`, and `error e` uses `epost.head e`. -/
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PredTrans/Variant9caed0908a20d10d5b07729b6aa6c37a4f5f81a91b4ff1bb1fca94c785e2a4d0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PredTrans/Variant9caed0908a20d10d5b07729b6aa6c37a4f5f81a91b4ff1bb1fca94c785e2a4d0.lean#L153).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1fe856b7fd6659920cbfab29c5019a248d496b81` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
