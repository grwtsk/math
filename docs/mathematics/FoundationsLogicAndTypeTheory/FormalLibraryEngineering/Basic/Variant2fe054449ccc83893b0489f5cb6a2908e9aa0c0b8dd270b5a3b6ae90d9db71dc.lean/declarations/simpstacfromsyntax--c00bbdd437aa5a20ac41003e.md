# simpsTacFromSyntax

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:674130722586cad395fc359d77e2d2996c6cfc75da925d043341ada913e68652",
  "kind": "def",
  "lexical_name": "simpsTacFromSyntax",
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
  "slug": "simpstacfromsyntax--c00bbdd437aa5a20ac41003e",
  "source": {
    "blob": "897dc165e21c4f9ccbb731a2d0042e16e883e74b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1209,
    "line": 1200,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant2fe054449ccc83893b0489f5cb6a2908e9aa0c0b8dd270b5a3b6ae90d9db71dc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c00bbdd437aa5a20ac41003ee2624d78213bf7db436d2cc71f6839e0a31dada0",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant2fe054449ccc83893b0489f5cb6a2908e9aa0c0b8dd270b5a3b6ae90d9db71dc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:674130722586cad395fc359d77e2d2996c6cfc75da925d043341ada913e68652`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1200–1209.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def simpsTacFromSyntax (nm : Name) (stx : Syntax) : AttrM (Array Name) :=
  match stx with
  | `(attr| simps $[!%$bang]? $[?%$trc]? $c:optConfig $[$ids]*) => do
    let cfg ← liftCommandElabM <| elabSimpsConfig c
    let cfg := if bang.isNone then cfg else { cfg with rhsMd := .default, simpRhs := true }
    let ids := ids.map fun x => (x.getId.eraseMacroScopes.lastComponentAsString, x.raw)
    simpsTac stx nm cfg ids.toList trc.isSome
  | _ => throwUnsupportedSyntax

/-- The `simps` attribute. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant2fe054449ccc83893b0489f5cb6a2908e9aa0c0b8dd270b5a3b6ae90d9db71dc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant2fe054449ccc83893b0489f5cb6a2908e9aa0c0b8dd270b5a3b6ae90d9db71dc.lean#L1200).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `897dc165e21c4f9ccbb731a2d0042e16e883e74b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
