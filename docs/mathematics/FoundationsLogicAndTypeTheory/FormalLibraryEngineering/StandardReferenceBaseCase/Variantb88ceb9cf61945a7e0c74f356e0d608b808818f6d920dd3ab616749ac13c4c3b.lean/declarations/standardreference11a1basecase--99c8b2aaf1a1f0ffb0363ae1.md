# standardReference11a1BaseCase

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f0310d0434b1bd2722e46223c286aecbaea254b14a4a7cfff72c3ef33d79e418",
  "kind": "def",
  "lexical_name": "standardReference11a1BaseCase",
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
  "slug": "standardreference11a1basecase--99c8b2aaf1a1f0ffb0363ae1",
  "source": {
    "blob": "cef5d0795d568e75b3228babb02704f5bd5dadb0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 326,
    "line": 315,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StandardReferenceBaseCase/Variantb88ceb9cf61945a7e0c74f356e0d608b808818f6d920dd3ab616749ac13c4c3b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:99c8b2aaf1a1f0ffb0363ae1e100d4038dec14617281493956a92d3633ad57f8",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StandardReferenceBaseCase/Variantb88ceb9cf61945a7e0c74f356e0d608b808818f6d920dd3ab616749ac13c4c3b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f0310d0434b1bd2722e46223c286aecbaea254b14a4a7cfff72c3ef33d79e418`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 315–326.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def standardReference11a1BaseCase :
    BaseCaseIndexAnchor standardMellKTheory where
  baseIndex := standardReference11a1BaseCaseDerivedIndex
  kIndex := standardReference11a1KTheoryIndex
  euler_realizes_kIndex := True
  euler_realizes_kIndex_certified := trivial
  kIndexNonzero := by
    intro h
    change ToyKClass.one = ToyKClass.zero at h
    cases h
  sourceLabel := "11a1 standard-reference base-case index anchor"

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StandardReferenceBaseCase/Variantb88ceb9cf61945a7e0c74f356e0d608b808818f6d920dd3ab616749ac13c4c3b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StandardReferenceBaseCase/Variantb88ceb9cf61945a7e0c74f356e0d608b808818f6d920dd3ab616749ac13c4c3b.lean#L315).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cef5d0795d568e75b3228babb02704f5bd5dadb0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
