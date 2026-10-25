# github

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:00da14e508f24d8282b38c9de7de7eb2ea7da49378231d2ff775fe4ec33fcb99",
  "kind": "def",
  "lexical_name": "github",
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
  "slug": "github--d5ac74519000d2e2e40bfcba",
  "source": {
    "blob": "e619fc6d6768f4111a72696b4f560e163421056d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 42,
    "line": 25,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Svg/Variant08c7dc608d87fa9e1f882b4061305f518fd0980e1159c8d7bc95e6fee0ba4f5b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d5ac74519000d2e2e40bfcba09816824969f3beadb2b26dc00dd749200ed0339",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Svg/Variant08c7dc608d87fa9e1f882b4061305f518fd0980e1159c8d7bc95e6fee0ba4f5b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:00da14e508f24d8282b38c9de7de7eb2ea7da49378231d2ff775fe4ec33fcb99`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 25–42.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def github : Svg frame :=
  { elements :=
      #[
        circle (200.0, 245.0) (.px 175) |>.setFill (1.0, 1.0, 1.0),

        path "M195,25C99.3,25,20,104.3,20,200C20,276,70.4,340.9,140.8,370.2C151.9,372.2,155.4,365.4,155.4,359.4C155.4,354,155.2,338.7,155.1,320C104.7,332.6,92.9,296.4,92.9,296.4C83.9,270.7,70.5,263.9,70.5,263.9C53.4,250.3,71.8,250.5,71.8,250.5C90.8,251.8,101.2,272.8,101.2,272.8C118.1,305.3,146.8,297.2,155.8,291.4C157.7,277.2,162.7,267.4,168.2,261.9C128.5,256.3,86.7,237.4,86.7,170.8C86.7,148.4,94.3,130.2,101.6,116.2C99.4,110.5,92.7,85.9,103.9,56.8C103.9,56.8,119.7,49.7,154.7,73.9C169.4,68.3,185.2,65.4,200.9,65.2C216.6,65.4,232.5,68.3,247.2,73.9C282.1,49.7,297.9,56.8,297.9,56.8C309.1,85.9,302.4,110.5,300.2,116.2C307.5,130.2,315.1,148.4,315.1,170.8C315.1,237.6,273.2,256.2,233.3,261.7C240.4,268.5,246.7,282,246.7,302.5C246.7,332.5,246.4,352.2,246.4,359.4C246.4,365.5,249.8,372.3,261.2,370.1C331.4,340.8,381.7,276,381.7,200C381.7,104.3,302.4,25,206.7,25L195,25Z"
        |>.setFill (0.2, 0.2, 0.2),

        circle (160.0, 245.0) (.px 15) |>.setFill (0.2, 0.2, 0.2),

        circle (240.0, 245.0) (.px 15) |>.setFill (0.2, 0.2, 0.2),

        text (150.0, 340.0) "GitHub" (.px 36) |>.setFill (0.8, 0.8, 0.8)
      ]
  }

#html github.toHtml

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Svg/Variant08c7dc608d87fa9e1f882b4061305f518fd0980e1159c8d7bc95e6fee0ba4f5b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Svg/Variant08c7dc608d87fa9e1f882b4061305f518fd0980e1159c8d7bc95e6fee0ba4f5b.lean#L25).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e619fc6d6768f4111a72696b4f560e163421056d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
