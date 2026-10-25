# Pattern.decodeToml

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e625e9a4762eb0443c060d818c2cedd1f23cba2faff2f38b288e881891f1f126",
  "kind": "def",
  "lexical_name": "Pattern.decodeToml",
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
  "slug": "pattern-decodetoml--4c4f29c9021bd919387e3c97",
  "source": {
    "blob": "6f71007adf3d52a827763c246fd0f0ba924699bb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 208,
    "line": 189,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Toml/Variantb9cfc30a6d6d5fcdbcf03a2f5c0294433b67f9080aca93154957bd0690b9c182.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4c4f29c9021bd919387e3c97a0c070f51182170f7eb18540546419744bfe7f7e",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Toml/Variantb9cfc30a6d6d5fcdbcf03a2f5c0294433b67f9080aca93154957bd0690b9c182.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e625e9a4762eb0443c060d818c2cedd1f23cba2faff2f38b288e881891f1f126`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 189–208.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public partial def Pattern.decodeToml
  [IsPattern β α] [DecodeToml β] (v : Value) (presets : NameMap (Pattern α β) := {})
: EDecodeM (Pattern α β) :=
  have : DecodeToml (PatternDescr α β) := ⟨PatternDescr.decodeToml⟩
  match v with
  | .string _ s =>
    if s == "*" then
      return .star
    else
      .ofDescr <$> decodeToml v
  | .table r t => do
    if let some name ← t.decode? `preset then
      if let some preset := presets.find? name then
        return preset
      else
        throwDecodeErrorAt r s!"unknown preset '{name}'"
    else
      .ofDescr <$> decodeToml v
  | v => .ofDescr <$> decodeToml v

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Toml/Variantb9cfc30a6d6d5fcdbcf03a2f5c0294433b67f9080aca93154957bd0690b9c182.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Toml/Variantb9cfc30a6d6d5fcdbcf03a2f5c0294433b67f9080aca93154957bd0690b9c182.lean#L189).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6f71007adf3d52a827763c246fd0f0ba924699bb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
