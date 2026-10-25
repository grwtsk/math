# receiptJson

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4fdb8178d547ab6bb7089caa53ce9da2a97e54d2cd3283eefa815f36edc3ab54",
  "kind": "def",
  "lexical_name": "receiptJson",
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
  "slug": "receiptjson--a39322dc08a00faf231facc6",
  "source": {
    "blob": "34938c037e581f70059238df4e2cb3c0214c13e3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 73,
    "line": 50,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfaceReceiptMain/Varianta7b502acb830cf1af304083007a1bf073b3f2a6268ebc15f38a9bfb34d83ce38.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a39322dc08a00faf231facc603127bbf13bd5fab687758f10394c72b5715d739",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfaceReceiptMain/Varianta7b502acb830cf1af304083007a1bf073b3f2a6268ebc15f38a9bfb34d83ce38.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4fdb8178d547ab6bb7089caa53ce9da2a97e54d2cd3283eefa815f36edc3ab54`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 50–73.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def receiptJson
    (env : Environment)
    (declarationName : Name)
    (normalizedType : String)
    (axioms : List Name)
    (ranges : Option DeclarationRanges) : String :=
  let typeHash := digestString normalizedType
  let moduleName := declarationModule env declarationName
  let body :=
    "{\"schema\":" ++ jsonString kernelReceiptSchema ++
    ",\"declaration_name\":" ++ jsonString declarationName.toString ++
    ",\"normalized_type\":" ++ jsonString normalizedType ++
    ",\"declaration_range\":" ++ declarationRangesJson ranges ++
    ",\"type_hash\":" ++ jsonString (toString typeHash) ++
    ",\"statement_hash\":" ++ jsonString (toString typeHash) ++
    ",\"module\":" ++ jsonString moduleName.toString ++
    ",\"axiom_closure\":" ++ jsonNames axioms ++
    ",\"environment_fingerprint\":" ++
      jsonString (toString (environmentFingerprint env)) ++
    ",\"hash_algorithm\":\"surface-string-digest-noncryptographic.v1\""
  let payload := body ++ "}"
  let receiptHash := digestString payload
  body ++ ",\"receipt_hash\":" ++ jsonString (toString receiptHash) ++ "}"

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfaceReceiptMain/Varianta7b502acb830cf1af304083007a1bf073b3f2a6268ebc15f38a9bfb34d83ce38.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfaceReceiptMain/Varianta7b502acb830cf1af304083007a1bf073b3f2a6268ebc15f38a9bfb34d83ce38.lean#L50).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `34938c037e581f70059238df4e2cb3c0214c13e3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
