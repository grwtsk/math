# recDiagAux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fd8eb4161e6ed5515e0a44f1e782e645eb6b064f6f2d1ddd02341dc813c1d9e9",
  "kind": "def",
  "lexical_name": "recDiagAux",
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
  "slug": "recdiagaux--09417af91097ffc277cdc018",
  "source": {
    "blob": "6128a80257bcebe488fb1ee00d7d40f215abc6e5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 59,
    "line": 47,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantfb7e0be57a2b499b3428e0fb7154e5fbc1c87e07f4cf6b0c99b6f5683c4b0fe5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:09417af91097ffc277cdc0184cabd02bbd44e4a272b34e01d8cf9707f485e60f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantfb7e0be57a2b499b3428e0fb7154e5fbc1c87e07f4cf6b0c99b6f5683c4b0fe5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fd8eb4161e6ed5515e0a44f1e782e645eb6b064f6f2d1ddd02341dc813c1d9e9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 47–59.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected def recDiagAux {motive : Nat → Nat → Sort _}
  (zero_left : ∀ n, motive 0 n)
  (zero_right : ∀ m, motive m 0)
  (succ_succ : ∀ m n, motive m n → motive (m+1) (n+1)) :
    (m n : Nat) → motive m n
  | 0, _ => zero_left _
  | _, 0 => zero_right _
  | _+1, _+1 => succ_succ _ _ (Nat.recDiagAux zero_left zero_right succ_succ _ _)

/--
  Diagonal recursor for `Nat`
-/
@[elab_as_elim]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantfb7e0be57a2b499b3428e0fb7154e5fbc1c87e07f4cf6b0c99b6f5683c4b0fe5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantfb7e0be57a2b499b3428e0fb7154e5fbc1c87e07f4cf6b0c99b6f5683c4b0fe5.lean#L47).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6128a80257bcebe488fb1ee00d7d40f215abc6e5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
