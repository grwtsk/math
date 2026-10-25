# collectTokens

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e37c0874bca957d7399ff5a52ebec6971ed69dec9b8e96d8fbd3c41786a29d33",
  "kind": "def",
  "lexical_name": "collectTokens",
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
  "slug": "collecttokens--62fd87e8e8ae523218139ace",
  "source": {
    "blob": "6a336016a14864955e8a238cb50f9683d76b7b65",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 180,
    "line": 161,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/SurfaceSyntaxExportMain/Varianta4c859b91c3534cbceffbb942a3457acb8060bfdaa9d455babc28e6f9bcd9015.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:62fd87e8e8ae523218139ace442d099d6beffad6fca7821fbc4271f135dd2fd9",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/ModelTheory/SurfaceSyntaxExportMain/Varianta4c859b91c3534cbceffbb942a3457acb8060bfdaa9d455babc28e6f9bcd9015.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e37c0874bca957d7399ff5a52ebec6971ed69dec9b8e96d8fbd3c41786a29d33`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 161–180.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def collectTokens (sourceBytes : Nat) (stx : Syntax)
    (tokens : Array RawToken := #[]) : Array RawToken :=
  match stx with
  | .missing => tokens
  | .node _ _ arguments =>
      arguments.foldl (fun current child => collectTokens sourceBytes child current) tokens
  | .atom _ value =>
      let flags := if delimiterToken value then 8 else if literalToken value then 2 else 0
      tokens.push {
        tokenKind := 2
        flags
        text := value
        span := syntaxSpan sourceBytes stx }
  | .ident _ rawValue _ _ =>
      tokens.push {
        tokenKind := 1
        flags := 1
        text := rawValue.toString
        span := syntaxSpan sourceBytes stx }

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/ModelTheory/SurfaceSyntaxExportMain/Varianta4c859b91c3534cbceffbb942a3457acb8060bfdaa9d455babc28e6f9bcd9015.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/SurfaceSyntaxExportMain/Varianta4c859b91c3534cbceffbb942a3457acb8060bfdaa9d455babc28e6f9bcd9015.lean#L161).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6a336016a14864955e8a238cb50f9683d76b7b65` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
