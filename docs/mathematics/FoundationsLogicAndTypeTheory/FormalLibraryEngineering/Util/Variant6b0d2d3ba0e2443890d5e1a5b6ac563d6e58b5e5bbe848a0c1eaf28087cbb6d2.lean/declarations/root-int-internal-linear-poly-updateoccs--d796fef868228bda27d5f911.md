# _root_.Int.Internal.Linear.Poly.updateOccs

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:708dbd94720eb49a4d09326752d8491a782bc62c883784b995a8addbded89923",
  "kind": "def",
  "lexical_name": "_root_.Int.Internal.Linear.Poly.updateOccs",
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
  "slug": "root-int-internal-linear-poly-updateoccs--d796fef868228bda27d5f911",
  "source": {
    "blob": "fa90253619764b918a6205846518b01cb035fdf4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 179,
    "line": 169,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variant6b0d2d3ba0e2443890d5e1a5b6ac563d6e58b5e5bbe848a0c1eaf28087cbb6d2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d796fef868228bda27d5f911e361aacabacaa038041bfab6770a2572d0005a82",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variant6b0d2d3ba0e2443890d5e1a5b6ac563d6e58b5e5bbe848a0c1eaf28087cbb6d2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:708dbd94720eb49a4d09326752d8491a782bc62c883784b995a8addbded89923`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 169–179.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def _root_.Int.Internal.Linear.Poly.updateOccs (p : Poly) : GoalM Unit := do
  let .add _ y p := p | throwError "`grind` internal error, unexpected constant polynomial"
  let rec go (p : Poly) : GoalM Unit := do
    let .add _ x p := p | return ()
    addOcc x y; go p
  go p

/--
Tries to evaluate the polynomial `p` using the partial model/assignment built so far.
The result is `none` if the polynomial contains variables that have not been assigned.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variant6b0d2d3ba0e2443890d5e1a5b6ac563d6e58b5e5bbe848a0c1eaf28087cbb6d2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variant6b0d2d3ba0e2443890d5e1a5b6ac563d6e58b5e5bbe848a0c1eaf28087cbb6d2.lean#L169).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fa90253619764b918a6205846518b01cb035fdf4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
