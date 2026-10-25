# LeanProcessingM.run

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0cd2af2e20a6468e75ad101d757a35bb950b7d27172a963dd1450761b7eb635a",
  "kind": "def",
  "lexical_name": "LeanProcessingM.run",
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
  "slug": "leanprocessingm-run--8bfb4498b2bb87f6935212dd",
  "source": {
    "blob": "c5acf0b35b3e0d7add7d10fab9f81f78151290e3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 277,
    "line": 268,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lean/Variantdfdb754af37a2ce08be47f610b8501a1b8eda6e4575abc4cc39abba56edfd093.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8bfb4498b2bb87f6935212dd22b0904c50b097e2fa4bb3843d437a16d3a9763e",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lean/Variantdfdb754af37a2ce08be47f610b8501a1b8eda6e4575abc4cc39abba56edfd093.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0cd2af2e20a6468e75ad101d757a35bb950b7d27172a963dd1450761b7eb635a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 268–277.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def LeanProcessingM.run (act : LeanProcessingM α) (oldInputCtx? : Option InputContext) :
    ProcessingM α := do
  -- compute position of syntactic change once
  let firstDiffPos? := oldInputCtx?.map (·.inputString.firstDiffPos (← read).inputString)
  ReaderT.adapt ({ · with firstDiffPos? }) act

/--
Returns true if there was a previous run and the given position is before any textual change
compared to it.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lean/Variantdfdb754af37a2ce08be47f610b8501a1b8eda6e4575abc4cc39abba56edfd093.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lean/Variantdfdb754af37a2ce08be47f610b8501a1b8eda6e4575abc4cc39abba56edfd093.lean#L268).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c5acf0b35b3e0d7add7d10fab9f81f78151290e3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
