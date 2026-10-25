# knotCounterexample_has_exotic_pair

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ec19d8a0-dae8-d2ce-1f9b-a38856a96a3f",
  "kind": "theorem",
  "lexical_name": "knotCounterexample_has_exotic_pair",
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
  "slug": "knotcounterexample-has-exotic-pair--0dbc592e89b18adea1ebb632",
  "source": {
    "blob": "a0388fb0d196b71735982e7ecbeabb658129f015",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 142,
    "line": 130,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CoreRecovery/Variant03a716d2a23ccfff03056fc5953ae1d92d274de09d92c27e86134624a7242760.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0dbc592e89b18adea1ebb632950952c630cccec85f1601c1243c2aad1c006dd6",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CoreRecovery/Variant03a716d2a23ccfff03056fc5953ae1d92d274de09d92c27e86134624a7242760.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ec19d8a0-dae8-d2ce-1f9b-a38856a96a3f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 130–142.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem knotCounterexample_has_exotic_pair
    (R : ExteriorSlopeRigidity.{u} T)
    {K : T.Knot}
    (hK : T.Nontrivial K)
    (counterexample : T.KnotCounterexample K) :
    ∃ r s : T.Slope K, T.ExoticPair K r s := by
  rcases counterexample with ⟨r, s, cosmetic⟩
  exact ⟨r, s, R.cosmeticPair_is_exotic hK cosmetic⟩

/--
For a distinct cosmetic pair, every orientation-preserving filling
homeomorphism fails core recovery.  The universal quantifier is essential.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CoreRecovery/Variant03a716d2a23ccfff03056fc5953ae1d92d274de09d92c27e86134624a7242760.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CoreRecovery/Variant03a716d2a23ccfff03056fc5953ae1d92d274de09d92c27e86134624a7242760.lean#L130).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a0388fb0d196b71735982e7ecbeabb658129f015` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
