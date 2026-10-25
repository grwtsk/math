# algebraizeGetParam

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fff7316a4baac0539d99f23e1e4f0bb0ca697b46662a4b472d28a169a20f58fd",
  "kind": "def",
  "lexical_name": "algebraizeGetParam",
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
  "slug": "algebraizegetparam--2091322569df2a9d0879f0f1",
  "source": {
    "blob": "cb667ee7dcdc55e2ae527fe820eb4009e02907ea",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 109,
    "line": 82,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Algebraize/Variantb74ad8d66a35b522f528054862348c4050b85d3758759cc18f658d8b503e3b69.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2091322569df2a9d0879f0f1ae672f05f0297fe4e19a4143f61eda4d2c2c3b2d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Algebraize/Variantb74ad8d66a35b522f528054862348c4050b85d3758759cc18f658d8b503e3b69.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fff7316a4baac0539d99f23e1e4f0bb0ca697b46662a4b472d28a169a20f58fd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 82–109.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def algebraizeGetParam (thm : Name) (stx : Syntax) : AttrM Name := do
  match stx with
  | `(attr| algebraize $name:ident) => return name.getId
  /- If no argument is provided, assume `thm` is of the form `RingHom.Property`,
  and return `Algebra.Property` -/
  | `(attr| algebraize) =>
    match thm with
    | .str `RingHom t => return .str `Algebra t
    | _ =>
      throwError "theorem name must be of the form `RingHom.Property` if no argument is provided"
  | _ => throwError "unexpected algebraize argument"

/-- A user attribute that is used to tag `RingHom` properties that can be converted to `Algebra`
properties. Using an (optional) parameter, it will also generate a `Name` of a declaration which
will help the `algebraize` tactic access the corresponding `Algebra` property.

There are two cases for what declaration corresponding to this `Name` can be.

1. An inductive type (i.e. the `Algebra` property itself), in this case it is assumed that the
`RingHom` and the `Algebra` property are definitionally the same, and the tactic will construct the
`Algebra` property by giving the `RingHom` property as a term.
2. A lemma (or constructor) proving the `Algebra` property from the `RingHom` property. In this case
it is assumed that the `RingHom` property is the final argument, and that no other explicit argument
is needed. The tactic then constructs the `Algebra` property by applying the lemma or constructor.

Finally, if no argument is provided to the `algebraize` attribute, it is assumed that the tagged
declaration has name `RingHom.Property` and that the corresponding `Algebra` property has name
`Algebra.Property`. The attribute then returns `Algebra.Property` (so assume case 1 above). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Algebraize/Variantb74ad8d66a35b522f528054862348c4050b85d3758759cc18f658d8b503e3b69.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Algebraize/Variantb74ad8d66a35b522f528054862348c4050b85d3758759cc18f658d8b503e3b69.lean#L82).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cb667ee7dcdc55e2ae527fe820eb4009e02907ea` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
