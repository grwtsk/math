# round_relation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c55ee91a-61b4-1823-4bf3-8d1af8b454ee",
  "kind": "theorem",
  "lexical_name": "round_relation",
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
  "slug": "round-relation--ed851f4d9f384abfa63eac63",
  "source": {
    "blob": "2a91b86500cd9a2613909e990215746a5a0f6569",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 819,
    "line": 815,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Response/Variant9d1014cc1516bcb49ad25543469770dc3865cac98404a0648e57a527ddedf49b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ed851f4d9f384abfa63eac63b709d5ac3a331b1774beb5cbb4b1ccfdc35eaf7c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Response/Variant9d1014cc1516bcb49ad25543469770dc3865cac98404a0648e57a527ddedf49b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c55ee91a-61b4-1823-4bf3-8d1af8b454ee`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 815–819.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem round_relation {y : Expr S} (hy : HasType P Γ y B.yType) (my : WellModed γ y .data) :
    Proves P Γ γ (B.relation L.code KY.code KP.code (B.round y) y) := by
  have hr := H.round_typed hy my
  exact H.relation_backward KY KP hr.1 hr.2 hy my (H.ae_round KY KP hy my)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Response/Variant9d1014cc1516bcb49ad25543469770dc3865cac98404a0648e57a527ddedf49b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Response/Variant9d1014cc1516bcb49ad25543469770dc3865cac98404a0648e57a527ddedf49b.lean#L815).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2a91b86500cd9a2613909e990215746a5a0f6569` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
