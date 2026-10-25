# reducible_neutral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8e432486-be1f-babf-274d-9c08dbbedfa2",
  "kind": "theorem",
  "lexical_name": "reducible_neutral",
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
  "slug": "reducible-neutral--bb80ea381c5536de65084b93",
  "source": {
    "blob": "5d3ee31d5743e24ed1d80770ea02885282ea1425",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 166,
    "line": 156,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IndependentWN/Variant3194b16db1729a403aaeb5e0c3ebc8f3fa0dc074d9f6f3617ba568151a53cbc5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bb80ea381c5536de65084b930c7427828d85c1e508310274c89c43ac956649d4",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IndependentWN/Variant3194b16db1729a403aaeb5e0c3ebc8f3fa0dc074d9f6f3617ba568151a53cbc5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8e432486-be1f-babf-274d-9c08dbbedfa2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 156–166.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem reducible_neutral (type : Arrow) {term : Expr Bool} (neutral : Neutral term)
    (normalizing : WeaklyNormalizing term) : Reducible type term := by
  induction type generalizing term with
  | base => exact normalizing
  | function domain codomain ihDomain ihCodomain =>
      refine ⟨normalizing, ?_⟩
      intro rename argument argumentReducible
      exact ihCodomain (.app (neutral_rename neutral rename))
        (wn_neutral_app (neutral_rename neutral rename) (wn_rename normalizing rename)
          (reducible_wn argumentReducible))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IndependentWN/Variant3194b16db1729a403aaeb5e0c3ebc8f3fa0dc074d9f6f3617ba568151a53cbc5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IndependentWN/Variant3194b16db1729a403aaeb5e0c3ebc8f3fa0dc074d9f6f3617ba568151a53cbc5.lean#L156).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5d3ee31d5743e24ed1d80770ea02885282ea1425` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
