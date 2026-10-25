# scopeCandidates

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a0c21f088a57af4db0e89439ecc8c078ebbafc3b410f354fcadfc2839fc32144",
  "kind": "def",
  "lexical_name": "scopeCandidates",
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
  "slug": "scopecandidates--a9520f10f54acda5029fcf7c",
  "source": {
    "blob": "be4468a5e62c43146fbd5b78a1cf45d11acf8bc0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 50,
    "line": 36,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AmbiguousOpen/Variant284dd3ed9e846e3812acf91494bd6d1174fca965d179a9f018bb9182978e31be.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a9520f10f54acda5029fcf7c182cec3992401b43091977bf8edeb57ab0f0457b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AmbiguousOpen/Variant284dd3ed9e846e3812acf91494bd6d1174fca965d179a9f018bb9182978e31be.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a0c21f088a57af4db0e89439ecc8c078ebbafc3b410f354fcadfc2839fc32144`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 36–50.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def scopeCandidates (env : Environment) (id : Name) : Name → List Name
  | ns@(.str p _) =>
    let rest := scopeCandidates env id p
    if env.isNamespace (ns ++ id) then (ns ++ id) :: rest else rest
  | _ =>
    let id := id.replacePrefix rootNamespace .anonymous
    if env.isNamespace id then [id] else []

/--
Warns if the namespace identifier `nsStx` of an `open` declaration can also be interpreted as an
existing namespace that the `open` declaration silently does not open. `resolved` must be the
interpretations the `open` declaration actually uses, as returned by `resolveNamespace`.
Shadowed interpretations whose declarations are accessible anyway — because the namespace is
already opened without exceptions or encloses the current scope — are not reported.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AmbiguousOpen/Variant284dd3ed9e846e3812acf91494bd6d1174fca965d179a9f018bb9182978e31be.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AmbiguousOpen/Variant284dd3ed9e846e3812acf91494bd6d1174fca965d179a9f018bb9182978e31be.lean#L36).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `be4468a5e62c43146fbd5b78a1cf45d11acf8bc0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
