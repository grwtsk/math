# DecorationsOf

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:219fc2ba5ef814dbfa87f800ca75b9c52fa9fe9a62d08af0f061d9195708447f",
  "kind": "abbrev",
  "lexical_name": "DecorationsOf",
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
  "slug": "decorationsof--d305430419bc5e0753d00efa",
  "source": {
    "blob": "8ef01fc0035c3961511f754303bce04f57738070",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 524,
    "line": 510,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Testable/Variant6dabff0077ddf5ddee597ed374c36551c7269f9f72fa0884c1aa6983a9e23400.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d305430419bc5e0753d00efa3aad537a30f0a8bf23ea02d4c777507185ff0f71",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Testable/Variant6dabff0077ddf5ddee597ed374c36551c7269f9f72fa0884c1aa6983a9e23400.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:219fc2ba5ef814dbfa87f800ca75b9c52fa9fe9a62d08af0f061d9195708447f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 510–524.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
abbrev DecorationsOf (_p : Prop) := Prop

open Elab.Tactic
open Meta

/-- In a goal of the shape `⊢ DecorationsOf p`, `mk_decoration` examines
the syntax of `p` and adds `NamedBinder` around universal quantifications
to improve error messages. This tool can be used in the declaration of a
function as follows:
```lean
def foo (p : Prop) (p' : Decorations.DecorationsOf p := by mk_decorations) [Testable p'] : ...
```
`p` is the parameter given by the user, `p'` is a definitionally equivalent
proposition where the quantifiers are annotated with `NamedBinder`.
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Testable/Variant6dabff0077ddf5ddee597ed374c36551c7269f9f72fa0884c1aa6983a9e23400.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Testable/Variant6dabff0077ddf5ddee597ed374c36551c7269f9f72fa0884c1aa6983a9e23400.lean#L510).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8ef01fc0035c3961511f754303bce04f57738070` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
