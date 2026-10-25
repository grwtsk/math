# Anonymous example

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b8e8b06146323434ae42dcc7bd597dffef6b066c87fa0f35b91652ec8e575eff",
  "kind": "example",
  "lexical_name": null,
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
  "slug": "example--01f0045990ab53f83b9bfdd1",
  "source": {
    "blob": "c26c86c1bd8752cf64b7b7ab86297417a902eb36",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 240,
    "line": 221,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LintStyle/Variantd430096527d5f24680d4d255c974d310a08ceb178108cde7a6f5816660edaaad.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:01f0045990ab53f83b9bfdd1946caaffbe2abf86a1d5b169b13dd28768638bb3",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LintStyle/Variantd430096527d5f24680d4d255c974d310a08ceb178108cde7a6f5816660edaaad.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `example` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b8e8b06146323434ae42dcc7bd597dffef6b066c87fa0f35b91652ec8e575eff`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 221–240.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
example : True := by
  have : Nat := by
    -- This is how code should look: no error.
    · -- comment
      exact 37
  trivial

end cdotLinter
set_option linter.style.dollarSyntax true

set_option linter.globalAttributeIn false in
/--
warning: Please use '<|' instead of '$' for the pipe operator.
note: this linter can be disabled with `set_option linter.style.dollarSyntax false`
---
warning: Please use '<|' instead of '$' for the pipe operator.
note: this linter can be disabled with `set_option linter.style.dollarSyntax false`
-/
#guard_msgs in
attribute [instance] Int.add in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LintStyle/Variantd430096527d5f24680d4d255c974d310a08ceb178108cde7a6f5816660edaaad.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LintStyle/Variantd430096527d5f24680d4d255c974d310a08ceb178108cde7a6f5816660edaaad.lean#L221).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c26c86c1bd8752cf64b7b7ab86297417a902eb36` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
