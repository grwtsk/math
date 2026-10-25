# unexpandMkArray8

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:19b7539b37091546a59f499c06ceace870849286d7ae988a65c38810534f9869",
  "kind": "def",
  "lexical_name": "unexpandMkArray8",
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
  "slug": "unexpandmkarray8--7bc5f6ec1c0ad277df46f583",
  "source": {
    "blob": "954aa9578f911c0b355900e09750668166f6dfb0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 286,
    "line": 270,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NotationExtra/Variante4e55faea7d5190c80a8b54424b7dc67b0c46f4f78f3680ad6f6f07637e9c679.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7bc5f6ec1c0ad277df46f583acf78cd2a770515a2bf7a63753aa3b69aec1b339",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NotationExtra/Variante4e55faea7d5190c80a8b54424b7dc67b0c46f4f78f3680ad6f6f07637e9c679.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:19b7539b37091546a59f499c06ceace870849286d7ae988a65c38810534f9869`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 270–286.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
@[app_unexpander Array.mkArray8] meta def unexpandMkArray8 : Lean.PrettyPrinter.Unexpander
  | `($(_) $a1 $a2 $a3 $a4 $a5 $a6 $a7 $a8) => `(#[$a1, $a2, $a3, $a4, $a5, $a6, $a7, $a8])
  | _ => throw ()

/--
Apply function extensionality and introduce new hypotheses.
The tactic `funext` will keep applying the `funext` lemma until the goal target is not reducible to
```
  |-  ((fun x => ...) = (fun x => ...))
```
The variant `funext h₁ ... hₙ` applies `funext` `n` times, and uses the given identifiers to name the new hypotheses.
Patterns can be used like in the `intro` tactic. Example, given a goal
```
  |-  ((fun x : Nat × Bool => ...) = (fun x => ...))
```
`funext (a, b)` applies `funext` once and performs pattern matching on the newly introduced pair.
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NotationExtra/Variante4e55faea7d5190c80a8b54424b7dc67b0c46f4f78f3680ad6f6f07637e9c679.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NotationExtra/Variante4e55faea7d5190c80a8b54424b7dc67b0c46f4f78f3680ad6f6f07637e9c679.lean#L270).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `954aa9578f911c0b355900e09750668166f6dfb0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
