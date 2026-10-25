# QuiescentAboveLatest

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:775e196a4508096500fbe24c74aa7c43182c4a4c87afbbb8887676c5a9098667",
  "kind": "def",
  "lexical_name": "QuiescentAboveLatest",
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
  "slug": "quiescentabovelatest--fd162da1fb9d0a668671a692",
  "source": {
    "blob": "0c2358fde374166ec62f19f199a1f9303f4c17d6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 126,
    "line": 117,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Convergence/Variant04d2f45f3e31fa7364e04273b3091196b7409a83e1e402682433e16a78464999.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fd162da1fb9d0a668671a69295f2b58c7c01da076cabe71996de3061aabaf556",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Convergence/Variant04d2f45f3e31fa7364e04273b3091196b7409a83e1e402682433e16a78464999.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:775e196a4508096500fbe24c74aa7c43182c4a4c87afbbb8887676c5a9098667`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 117–126.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[expose] def QuiescentAboveLatest {Host : Type*} [DecidableEq Host]
    (execution : Execution Host)
    (admitted : List (RevisionedXYZ xyzFormatV1))
    (latest : RevisionedXYZ xyzFormatV1)
    (quiescenceTime : Nat) : Prop :=
  ∀ n, quiescenceTime ≤ n → ∀ event,
    execution.eventAt n = some event → event.payload ∈ admitted →
      ¬ latest.revision < event.payload.revision

/-- Transport never rewrites the revision of the admitted maximal value. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Convergence/Variant04d2f45f3e31fa7364e04273b3091196b7409a83e1e402682433e16a78464999.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Convergence/Variant04d2f45f3e31fa7364e04273b3091196b7409a83e1e402682433e16a78464999.lean#L117).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0c2358fde374166ec62f19f199a1f9303f4c17d6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
