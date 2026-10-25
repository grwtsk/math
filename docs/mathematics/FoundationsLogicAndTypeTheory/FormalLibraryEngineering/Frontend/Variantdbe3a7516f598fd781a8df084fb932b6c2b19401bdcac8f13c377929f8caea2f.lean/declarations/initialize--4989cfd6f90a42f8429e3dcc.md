# Anonymous initialize

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d4dade50f1cbed83aa3ba9ad56251c1d8a23be5bba9ea8ca6d2abc8cbd87fb15",
  "kind": "initialize",
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
  "slug": "initialize--4989cfd6f90a42f8429e3dcc",
  "source": {
    "blob": "b2935c698dfe72503e695031eab3ae2f71a0671a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 414,
    "line": 403,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variantdbe3a7516f598fd781a8df084fb932b6c2b19401bdcac8f13c377929f8caea2f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4989cfd6f90a42f8429e3dcc7c7728edad9cc30b2b326415dbab2c14c7d44ee5",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variantdbe3a7516f598fd781a8df084fb932b6c2b19401bdcac8f13c377929f8caea2f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `initialize` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d4dade50f1cbed83aa3ba9ad56251c1d8a23be5bba9ea8ca6d2abc8cbd87fb15`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 403–414.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
initialize ignoreArgsAttr : NameMapExtension (List Nat) ←
  registerNameMapAttribute {
    name  := `to_additive_ignore_args
    descr :=
      "Auxiliary attribute for `to_additive` stating that certain arguments are not additivized."
    add   := fun _ stx ↦ do
        let ids ← match stx with
          | `(attr| to_additive_ignore_args $[$ids:num]*) => pure <| ids.map (·.1.isNatLit?.get!)
          | _ => throwUnsupportedSyntax
        return ids.toList }

@[inherit_doc to_additive_reorder]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variantdbe3a7516f598fd781a8df084fb932b6c2b19401bdcac8f13c377929f8caea2f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variantdbe3a7516f598fd781a8df084fb932b6c2b19401bdcac8f13c377929f8caea2f.lean#L403).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b2935c698dfe72503e695031eab3ae2f71a0671a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
