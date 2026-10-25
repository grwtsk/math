# ULiftIterator.instProductivenessRelation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:70c1b3e5cff32787827acc5a9216cbd0f77c36650f7b155418db5da2bf37b551",
  "kind": "def",
  "lexical_name": "ULiftIterator.instProductivenessRelation",
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
  "slug": "uliftiterator-instproductivenessrelation--c632fab2c2ce88efad6a643e",
  "source": {
    "blob": "1d5187946c9f9d56c19b6cbe929fd29942e0106b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 131,
    "line": 122,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ULift/Variant74c79b0e3b02e469f84a9f6eba5c4fe8dfa94b14e0fb8109a17e27061a02ec88.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c632fab2c2ce88efad6a643e3c3d2c01d6beedc6c12ccf2dbf530e8252a6a0c3",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ULift/Variant74c79b0e3b02e469f84a9f6eba5c4fe8dfa94b14e0fb8109a17e27061a02ec88.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:70c1b3e5cff32787827acc5a9216cbd0f77c36650f7b155418db5da2bf37b551`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 122–131.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def ULiftIterator.instProductivenessRelation [Iterator α m β] [Productive α m] [Monad n] :
    ProductivenessRelation (ULiftIterator α m n β lift) n where
  Rel := InvImage WellFoundedRelation.rel (fun it => it.internalState.inner.finitelyManySkips)
  wf := InvImage.wf _ WellFoundedRelation.wf
  subrelation h := by
    rcases h with ⟨step, hp, hs⟩
    cases step <;> cases hs
    apply IterM.TerminationMeasures.Productive.rel_of_skip
    exact hp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ULift/Variant74c79b0e3b02e469f84a9f6eba5c4fe8dfa94b14e0fb8109a17e27061a02ec88.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ULift/Variant74c79b0e3b02e469f84a9f6eba5c4fe8dfa94b14e0fb8109a17e27061a02ec88.lean#L122).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1d5187946c9f9d56c19b6cbe929fd29942e0106b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
