# exclusions

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7509d548-17b8-b2e4-3776-c0b4e5ed569d",
  "kind": "theorem",
  "lexical_name": "exclusions",
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
  "slug": "exclusions--1eeb6a23c95b8d09ef2858b8",
  "source": {
    "blob": "1c4793e962c5016e025716f988c87e323e04e013",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 39,
    "line": 32,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DevelopmentCertificate/Variantc39c3c0fd81a7f41cb57089a8aa88d0b361931a57c96b8e8f422e972be0413c3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1eeb6a23c95b8d09ef2858b8594d9bd12c3d7f1c16299cb7fb07a55b9b0d3331",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DevelopmentCertificate/Variantc39c3c0fd81a7f41cb57089a8aa88d0b361931a57c96b8e8f422e972be0413c3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7509d548-17b8-b2e4-3776-c0b4e5ed569d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 32–39.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exclusions :
      (([2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46]:List ℕ).filter (fun n => !([3,5,11,17,29,41]:List ℕ).contains n) =
        ([(2,(2),2,2),(4,(0),2,2),(6,(0),2,3),(7,(2),3,3),(8,(0),2,4),(9,(0),3,3),(10,(0),2,5),(12,(0),2,6),(13,(2),3,5),(14,(0),2,7),(15,(0),3,5),(16,(0),2,8),(18,(0),2,9),(19,(2),3,7),(20,(0),2,10),(21,(0),3,7),(22,(0),2,11),(23,(2),5,5),(24,(0),2,12),(25,(0),5,5),(26,(0),2,13),(27,(0),3,9),(28,(0),2,14),(30,(0),2,15),(31,(2),3,11),(32,(0),2,16),(33,(0),3,11),(34,(0),2,17),(35,(0),5,7),(36,(0),2,18),(37,(2),3,13),(38,(0),2,19),(39,(0),3,13),(40,(0),2,20),(42,(0),2,21),(43,(2),3,15),(44,(0),2,22),(45,(0),3,15),(46,(0),2,23)]:List (ℕ × ℤ × ℕ × ℕ)).map (fun w => w.1)) ∧
      (∀ w ∈ ([(2,(2),2,2),(4,(0),2,2),(6,(0),2,3),(7,(2),3,3),(8,(0),2,4),(9,(0),3,3),(10,(0),2,5),(12,(0),2,6),(13,(2),3,5),(14,(0),2,7),(15,(0),3,5),(16,(0),2,8),(18,(0),2,9),(19,(2),3,7),(20,(0),2,10),(21,(0),3,7),(22,(0),2,11),(23,(2),5,5),(24,(0),2,12),(25,(0),5,5),(26,(0),2,13),(27,(0),3,9),(28,(0),2,14),(30,(0),2,15),(31,(2),3,11),(32,(0),2,16),(33,(0),3,11),(34,(0),2,17),(35,(0),5,7),(36,(0),2,18),(37,(2),3,13),(38,(0),2,19),(39,(0),3,13),(40,(0),2,20),(42,(0),2,21),(43,(2),3,15),(44,(0),2,22),(45,(0),3,15),(46,(0),2,23)]:List (ℕ × ℤ × ℕ × ℕ)),
        w.1 ∈ ([2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46]:List ℕ) ∧ w.2.1 ∈ ([(0),(2)]:List ℤ) ∧
        w.2.2.1 ∈ ([2,3,5]:List ℕ) ∧ Nat.Prime w.2.2.1 ∧
        1 < w.2.2.1 ∧ (w.2.2.1:ℤ) < (w.1:ℤ)+w.2.1 ∧
        (w.2.2.1:ℤ)*w.2.2.2 = (w.1:ℤ)+w.2.1) := by decide
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DevelopmentCertificate/Variantc39c3c0fd81a7f41cb57089a8aa88d0b361931a57c96b8e8f422e972be0413c3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DevelopmentCertificate/Variantc39c3c0fd81a7f41cb57089a8aa88d0b361931a57c96b8e8f422e972be0413c3.lean#L32).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1c4793e962c5016e025716f988c87e323e04e013` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
