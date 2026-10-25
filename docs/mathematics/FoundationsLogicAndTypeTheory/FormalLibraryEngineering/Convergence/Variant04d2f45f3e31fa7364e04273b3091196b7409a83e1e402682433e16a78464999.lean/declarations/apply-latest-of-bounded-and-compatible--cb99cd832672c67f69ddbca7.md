# apply_latest_of_bounded_and_compatible

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0c2358fde374166ec62f19f199a1f9303f4c17d6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 250,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/04/04d2f45f3e31fa7364e04273b3091196b7409a83e1e402682433e16a78464999.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:be3f4fad-a83a-6213-9d5d-4e06ea4990e7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c2c1a1ad-7962-1efd-431a-e5efa380dd75",
  "kind": "theorem",
  "lexical_name": "apply_latest_of_bounded_and_compatible",
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
  "slug": "apply-latest-of-bounded-and-compatible--cb99cd832672c67f69ddbca7",
  "source": {
    "blob": "0c2358fde374166ec62f19f199a1f9303f4c17d6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 277,
    "line": 250,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Convergence/Variant04d2f45f3e31fa7364e04273b3091196b7409a83e1e402682433e16a78464999.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cb99cd832672c67f69ddbca7c61064bf2f040c202b3280dd19de578e945cf371",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Convergence/Variant04d2f45f3e31fa7364e04273b3091196b7409a83e1e402682433e16a78464999.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c2c1a1ad-7962-1efd-431a-e5efa380dd75`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 250–277.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem apply_latest_of_bounded_and_compatible
    (register : LwwRegister xyzFormatV1)
    (latest : RevisionedXYZ xyzFormatV1)
    (bounded : RevisionBounded latest register)
    (equalRevisionCompatible : ∀ current,
      register.current = some current →
      latest.revision = current.revision →
      latest.value = current.value) :
    (LwwRegister.apply register latest).current = some latest := by
  cases register with
  | mk current? =>
      cases current? with
      | none => simp [LwwRegister.apply, merge, MergeDecision.result]
      | some current =>
          have currentBound : current.revision ≤ latest.revision :=
            bounded current rfl
          have notStale : ¬ latest.revision < current.revision :=
            not_lt_of_ge currentBound
          by_cases sameRevision : latest.revision = current.revision
          · have sameValue : latest.value = current.value :=
              equalRevisionCompatible current rfl sameRevision
            have same : latest = current :=
              revisionedXYZ_eq sameRevision sameValue
            subst current
            simp [LwwRegister.apply, merge, MergeDecision.result]
          · simp [LwwRegister.apply, merge, notStale, sameRevision,
              MergeDecision.result]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Convergence/Variant04d2f45f3e31fa7364e04273b3091196b7409a83e1e402682433e16a78464999.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Convergence/Variant04d2f45f3e31fa7364e04273b3091196b7409a83e1e402682433e16a78464999.lean#L250).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0c2358fde374166ec62f19f199a1f9303f4c17d6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
