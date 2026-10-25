# Glues

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:146e83f9857fa05c82c976ace14241befd1250a50587c3ba79482721cd2d5c3c",
  "kind": "def",
  "lexical_name": "Glues",
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
  "slug": "glues--cf4c12cec1db678d00eb3c59",
  "source": {
    "blob": "bc1e72fa7ca8a3787afff396b79dcee191f44e8b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 31,
    "line": 24,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Gluing/Variant29a473efbf89f8194bb9320ba3f276b332002e6bf180bed7e476983c3b00d01c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cf4c12cec1db678d00eb3c591c60667ca3a51b7df2782c2f14f8ee202fc08883",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Gluing/Variant29a473efbf89f8194bb9320ba3f276b332002e6bf180bed7e476983c3b00d01c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:146e83f9857fa05c82c976ace14241befd1250a50587c3ba79482721cd2d5c3c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 24–31.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Glues
  {C : FinCat} {V : C.Obj}
  (F : Presheaf C)
  (c : Cover C V)
  (s : (i : c.I) → F.Sec (c.U i))
  (g : F.Sec V) : Prop :=
  ∀ i, F.res (c.map i) g = s i

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Gluing/Variant29a473efbf89f8194bb9320ba3f276b332002e6bf180bed7e476983c3b00d01c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Gluing/Variant29a473efbf89f8194bb9320ba3f276b332002e6bf180bed7e476983c3b00d01c.lean#L24).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bc1e72fa7ca8a3787afff396b79dcee191f44e8b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
