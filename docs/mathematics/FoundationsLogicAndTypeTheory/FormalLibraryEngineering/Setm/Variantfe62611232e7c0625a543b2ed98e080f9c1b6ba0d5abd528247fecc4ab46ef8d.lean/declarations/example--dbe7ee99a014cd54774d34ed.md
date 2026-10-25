# Anonymous example

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:614f7b1def0a68cdf7fbc76acf3822bdf5c99086f2543965798ad9ddebefdb9c",
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
  "slug": "example--dbe7ee99a014cd54774d34ed",
  "source": {
    "blob": "bfd3b41dbbc9a969ccc7e7aadf37ed8ebe05f041",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 93,
    "line": 83,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Setm/Variantfe62611232e7c0625a543b2ed98e080f9c1b6ba0d5abd528247fecc4ab46ef8d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:dbe7ee99a014cd54774d34ed23ce67f3532fe8eeab28e2f27abb48b365250cb7",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Setm/Variantfe62611232e7c0625a543b2ed98e080f9c1b6ba0d5abd528247fecc4ab46ef8d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `example` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:614f7b1def0a68cdf7fbc76acf3822bdf5c99086f2543965798ad9ddebefdb9c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 83–93.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
example (h1 : 1 + 1 = 5) (h2 : 1 + 3 = 5) (h3 : 1 + 2 = 5) : True := by
  setm ?a + _ = ?b using h1 at h1 h2 h3
  guard_hyp a :=ₛ 1
  guard_hyp b :=ₛ 5
  guard_hyp h1 :ₛ a + a = b
  guard_hyp h2 :ₛ a + 3 = b
  guard_hyp h3 :ₛ a + 2 = b
  trivial

/- `at *` replaces all occurrences of the matched expressions, ignoring hypotheses that don't
include any of them. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Setm/Variantfe62611232e7c0625a543b2ed98e080f9c1b6ba0d5abd528247fecc4ab46ef8d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Setm/Variantfe62611232e7c0625a543b2ed98e080f9c1b6ba0d5abd528247fecc4ab46ef8d.lean#L83).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bfd3b41dbbc9a969ccc7e7aadf37ed8ebe05f041` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
