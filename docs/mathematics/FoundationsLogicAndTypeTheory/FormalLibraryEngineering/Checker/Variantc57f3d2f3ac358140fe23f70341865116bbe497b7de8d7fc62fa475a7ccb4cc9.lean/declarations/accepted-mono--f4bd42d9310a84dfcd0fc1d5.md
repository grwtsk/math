# accepted_mono

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:08fa967c-6542-4b76-9157-2b3f124c2f6b",
  "kind": "theorem",
  "lexical_name": "accepted_mono",
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
  "slug": "accepted-mono--f4bd42d9310a84dfcd0fc1d5",
  "source": {
    "blob": "4a63224e63ddce47b3b400e1e525b6a8ba2c7f14",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 96,
    "line": 84,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Checker/Variantc57f3d2f3ac358140fe23f70341865116bbe497b7de8d7fc62fa475a7ccb4cc9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f4bd42d9310a84dfcd0fc1d584bb6c6dd5fb0f0cf069fdd52ba17a9ab4fb4d88",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Checker/Variantc57f3d2f3ac358140fe23f70341865116bbe497b7de8d7fc62fa475a7ccb4cc9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:08fa967c-6542-4b76-9157-2b3f124c2f6b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 84–96.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem accepted_mono
    [DecidableEq Proof]
    (checker : TrustedChecker Obligation Proof)
    {left right : Obligation → Finset Proof}
    (extension : ∀ obligation, left obligation ⊆ right obligation)
    (obligation : Obligation) :
    accepted checker left obligation ⊆
      accepted checker right obligation := by
  intro proof member
  have parts := Finset.mem_filter.mp member
  exact Finset.mem_filter.mpr
    ⟨extension obligation parts.1, parts.2⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Checker/Variantc57f3d2f3ac358140fe23f70341865116bbe497b7de8d7fc62fa475a7ccb4cc9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Checker/Variantc57f3d2f3ac358140fe23f70341865116bbe497b7de8d7fc62fa475a7ccb4cc9.lean#L84).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4a63224e63ddce47b3b400e1e525b6a8ba2c7f14` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
