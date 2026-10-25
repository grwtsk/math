# inductive

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ab83129f41efbef5d1fe811b67bd8841f0e585e36e84bd8ef955bff57f6b9cd2",
  "kind": "class",
  "lexical_name": "inductive",
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
  "slug": "inductive--df8e272a488e5714dcdaba30",
  "source": {
    "blob": "46338420fb53817e401c0ce946e6c05cc9b07f10",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 169,
    "line": 161,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Short/Variantddc8ab022c13685fba620dcf81b7029454f2a249815898ca5f4323ad5f244203.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:df8e272a488e5714dcdaba305c3244ce15ec9a40f933480f4a432e35d934c158",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/Short/Variantddc8ab022c13685fba620dcf81b7029454f2a249815898ca5f4323ad5f244203.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ab83129f41efbef5d1fe811b67bd8841f0e585e36e84bd8ef955bff57f6b9cd2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 161–169.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class inductive ListShort : List PGame.{u} → Type (u + 1)
  | nil : ListShort []
  -- Porting note: We introduce `cons` as a separate instance because attempting to use
  -- `[ListShort tl]` as a constructor argument errors saying that `ListShort tl` is not a class.
  -- Is this a bug in `class inductive`?
  | cons' {hd : PGame.{u}} {tl : List PGame.{u}} : Short hd → ListShort tl → ListShort (hd::tl)

attribute [instance] ListShort.nil

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/Short/Variantddc8ab022c13685fba620dcf81b7029454f2a249815898ca5f4323ad5f244203.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Short/Variantddc8ab022c13685fba620dcf81b7029454f2a249815898ca5f4323ad5f244203.lean#L161).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `46338420fb53817e401c0ce946e6c05cc9b07f10` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
