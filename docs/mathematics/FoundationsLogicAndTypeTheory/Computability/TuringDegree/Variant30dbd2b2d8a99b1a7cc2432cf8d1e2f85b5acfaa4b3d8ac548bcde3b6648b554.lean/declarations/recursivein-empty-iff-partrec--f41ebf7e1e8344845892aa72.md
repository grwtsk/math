# recursiveIn_empty_iff_partrec

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:075d2132-3e3d-76aa-89a5-718fc48a2532",
  "kind": "lemma",
  "lexical_name": "recursiveIn_empty_iff_partrec",
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
  "slug": "recursivein-empty-iff-partrec--f41ebf7e1e8344845892aa72",
  "source": {
    "blob": "d2349dbdea9bbaff5eff43c2f1902c975a7b9fad",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 193,
    "line": 182,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Computability/TuringDegree/Variant30dbd2b2d8a99b1a7cc2432cf8d1e2f85b5acfaa4b3d8ac548bcde3b6648b554.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f41ebf7e1e8344845892aa72f081a341ad66bfdc3c58609cb3a5b6c2e3535797",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/Computability/TuringDegree/Variant30dbd2b2d8a99b1a7cc2432cf8d1e2f85b5acfaa4b3d8ac548bcde3b6648b554.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:075d2132-3e3d-76aa-89a5-718fc48a2532`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 182–193.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] lemma recursiveIn_empty_iff_partrec : RecursiveIn {} f ↔ Nat.Partrec f where
  mp fRecInNone := by
    induction fRecInNone with repeat {constructor}
    | oracle _ hg => simp at hg
    | pair | comp | prec | rfind =>
      repeat {constructor; assumption; try assumption}
  mpr pF := by
    induction pF with repeat {constructor}
    | pair _ _ ih₁ ih₂ => exact RecursiveIn.pair ih₁ ih₂
    | comp _ _ ih₁ ih₂ => exact RecursiveIn.comp ih₁ ih₂
    | prec _ _ ih₁ ih₂ => exact RecursiveIn.prec ih₁ ih₂
    | rfind _ ih => exact RecursiveIn.rfind ih
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/Computability/TuringDegree/Variant30dbd2b2d8a99b1a7cc2432cf8d1e2f85b5acfaa4b3d8ac548bcde3b6648b554.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Computability/TuringDegree/Variant30dbd2b2d8a99b1a7cc2432cf8d1e2f85b5acfaa4b3d8ac548bcde3b6648b554.lean#L182).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d2349dbdea9bbaff5eff43c2f1902c975a7b9fad` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
