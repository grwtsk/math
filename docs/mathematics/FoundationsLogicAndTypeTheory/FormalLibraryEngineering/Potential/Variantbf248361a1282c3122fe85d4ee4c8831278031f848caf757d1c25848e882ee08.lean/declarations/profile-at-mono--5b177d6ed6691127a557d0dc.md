# profile_at_mono

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f577f1c7-1c23-08e1-272d-772c7898ae8f",
  "kind": "theorem",
  "lexical_name": "profile_at_mono",
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
  "slug": "profile-at-mono--5b177d6ed6691127a557d0dc",
  "source": {
    "blob": "0096b9b806212287bdcfa503838428ac60260fea",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 624,
    "line": 613,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Potential/Variantbf248361a1282c3122fe85d4ee4c8831278031f848caf757d1c25848e882ee08.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5b177d6ed6691127a557d0dc84332ce4153d8e03c43c179109698f210c1c8579",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Potential/Variantbf248361a1282c3122fe85d4ee4c8831278031f848caf757d1c25848e882ee08.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f577f1c7-1c23-08e1-272d-772c7898ae8f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 613–624.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem profile_at_mono {n m : Nat} {T : Expr S} {s : S}
    (ht : PureTypeSystem.HasType P (Ω.context n) (T.rename (Expr.reverseIndex n)) (.sort s))
    (h : n ≤ m) :
    Profile P (Ω.context m) (T.rename (Expr.reverseIndex m)) =
      Profile P (Ω.context n) (T.rename (Expr.reverseIndex n)) := by
  induction h with
  | refl => rfl
  | @step m h ih => exact (Ω.profile_at_next hw (Ω.at_mono (A := .sort s) ht h)).trans ih

open Classical in
/-- A single available sorting fixes the exact profile at every later
prefix. Extra sorting rules cannot appear merely by weakening. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Potential/Variantbf248361a1282c3122fe85d4ee4c8831278031f848caf757d1c25848e882ee08.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Potential/Variantbf248361a1282c3122fe85d4ee4c8831278031f848caf757d1c25848e882ee08.lean#L613).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0096b9b806212287bdcfa503838428ac60260fea` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
