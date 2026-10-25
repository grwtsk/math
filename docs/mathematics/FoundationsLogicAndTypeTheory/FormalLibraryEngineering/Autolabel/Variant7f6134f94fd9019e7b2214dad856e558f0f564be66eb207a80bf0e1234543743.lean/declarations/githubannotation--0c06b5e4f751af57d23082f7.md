# githubAnnotation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:713b33704194bed278f552050dd7c3546106f40589e8a3c8dcecbda8e678b857",
  "kind": "def",
  "lexical_name": "githubAnnotation",
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
  "slug": "githubannotation--0c06b5e4f751af57d23082f7",
  "source": {
    "blob": "45006c206af42edc3ff94232edab7428e416e3a1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 258,
    "line": 240,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Autolabel/Variant7f6134f94fd9019e7b2214dad856e558f0f564be66eb207a80bf0e1234543743.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0c06b5e4f751af57d23082f7faa5c739c1146b28e33d56db608653d475626ac1",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Autolabel/Variant7f6134f94fd9019e7b2214dad856e558f0f564be66eb207a80bf0e1234543743.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:713b33704194bed278f552050dd7c3546106f40589e8a3c8dcecbda8e678b857`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 240–258.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def githubAnnotation (type file title message : String) : String :=
  s!"::{type} file={file},title={title}::{file}: {message}"

end AutoLabel

open IO AutoLabel in

/-- `args` is expected to have length 0 or 1, where the first argument is the PR number.

If a PR number is provided, the script requires GitHub CLI `gh` to be installed in order
to add the label to the PR.

## Exit codes:

- `0`: success
- `1`: invalid arguments provided
- `2`: invalid labels defined
- `3`: ~labels do not cover all of `Mathlib/`~ (unused; only emitting warning)
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Autolabel/Variant7f6134f94fd9019e7b2214dad856e558f0f564be66eb207a80bf0e1234543743.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Autolabel/Variant7f6134f94fd9019e7b2214dad856e558f0f564be66eb207a80bf0e1234543743.lean#L240).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `45006c206af42edc3ff94232edab7428e416e3a1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
