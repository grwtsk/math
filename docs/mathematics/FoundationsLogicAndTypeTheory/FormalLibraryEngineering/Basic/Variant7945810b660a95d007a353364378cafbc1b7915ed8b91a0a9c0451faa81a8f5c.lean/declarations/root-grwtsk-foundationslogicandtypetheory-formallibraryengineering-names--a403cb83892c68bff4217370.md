# _root_.GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.NameStruct.Variantdd4e666e3ca08122c0e7e41278fa5e49a15b1a2aa9c3ede251b8bdfa212ca063.Lean.Expr.instantiateLambdasOrApps

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:69ba4cd5024ba8e1660b750df008b07ec3a45dfebadedc2b796b79ce6440f28b",
  "kind": "def",
  "lexical_name": "_root_.GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.NameStruct.Variantdd4e666e3ca08122c0e7e41278fa5e49a15b1a2aa9c3ede251b8bdfa212ca063.Lean.Expr.instantiateLambdasOrApps",
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
  "slug": "root-grwtsk-foundationslogicandtypetheory-formallibraryengineering-names--a403cb83892c68bff4217370",
  "source": {
    "blob": "373c37e1ed79c058cc173787d3c0450d7deb1f15",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 958,
    "line": 931,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant7945810b660a95d007a353364378cafbc1b7915ed8b91a0a9c0451faa81a8f5c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a403cb83892c68bff4217370213833013b8104e441d283c4a58cf3970a3ba845",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant7945810b660a95d007a353364378cafbc1b7915ed8b91a0a9c0451faa81a8f5c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:69ba4cd5024ba8e1660b750df008b07ec3a45dfebadedc2b796b79ce6440f28b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 931–958.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
partial def _root_.GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.NameStruct.Variantdd4e666e3ca08122c0e7e41278fa5e49a15b1a2aa9c3ede251b8bdfa212ca063.Lean.Expr.instantiateLambdasOrApps (es : Array Expr) (e : Expr) : Expr :=
  e.betaRev es.reverse true -- check if this is what I want

/-- Get the projections of a structure used by `@[simps]` applied to the appropriate arguments.
Returns a list of tuples
```
(corresponding right-hand-side, given projection name, projection Expression,
  future projection numbers, used by default, is prefix)
```
(where all fields except the first are packed in a `ProjectionData` structure)
one for each projection. The given projection name is the name for the projection used by the user
used to generate (and parse) projection names. For example, in the structure

  Example 1: ``getProjectionExprs env `(α × β) `(⟨x, y⟩)`` will give the output
  ```
    [(`(x), `fst, `(@Prod.fst.{u v} α β), [], true, false),
     (`(y), `snd, `(@Prod.snd.{u v} α β), [], true, false)]
  ```

  Example 2: ``getProjectionExprs env `(α ≃ α) `(⟨id, id, fun _ ↦ rfl, fun _ ↦ rfl⟩)``
  will give the output
  ```
    [(`(id), `apply, (Equiv.toFun), [], true, false),
     (`(id), `symm_apply, (fun e ↦ e.symm.toFun), [], true, false),
     ...,
     ...]
  ```
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant7945810b660a95d007a353364378cafbc1b7915ed8b91a0a9c0451faa81a8f5c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant7945810b660a95d007a353364378cafbc1b7915ed8b91a0a9c0451faa81a8f5c.lean#L931).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `373c37e1ed79c058cc173787d3c0450d7deb1f15` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
