# foo_ok

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:39074c38fbc384e69658456fc293cf116bd7ea92e0e24ac4b7aad12b3a107c7f",
  "kind": "def",
  "lexical_name": "foo_ok",
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
  "slug": "foo-ok--4a7ef52b52f32c8cf0b62afa",
  "source": {
    "blob": "04da23e5ba8012ac7df4647e5510f900755a2fdb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 39,
    "line": 28,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LintDocBlame/Variantc3d876298dc697b20c5d353af57fb904a2ff24fc3811775f1c5d6eac9a36b912.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4a7ef52b52f32c8cf0b62afae07132c42f4a6fbc6bb54c0aaec31b0d6615db17",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LintDocBlame/Variantc3d876298dc697b20c5d353af57fb904a2ff24fc3811775f1c5d6eac9a36b912.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:39074c38fbc384e69658456fc293cf116bd7ea92e0e24ac4b7aad12b3a107c7f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 28–39.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def foo_ok := 7 -- Doesn't (due to being private)

/--
error: /- The `docBlame` linter reports:
DEFINITIONS ARE MISSING DOCUMENTATION STRINGS:
This linter can be disabled with `@[nolint docBlame]`. -/
#check AtLeastThirtySeven /- inductive missing documentation string -/
#check AtLeastThirtySeven.val /- definition missing documentation string -/
#check foo_bad /- definition missing documentation string -/
-/
#guard_msgs in
#lint- only docBlame
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LintDocBlame/Variantc3d876298dc697b20c5d353af57fb904a2ff24fc3811775f1c5d6eac9a36b912.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LintDocBlame/Variantc3d876298dc697b20c5d353af57fb904a2ff24fc3811775f1c5d6eac9a36b912.lean#L28).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `04da23e5ba8012ac7df4647e5510f900755a2fdb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
