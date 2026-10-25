# recursiveIn_empty_iff_partrec

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ab99f5fc-f0e0-e7a5-9e1e-6e5c66b20ac7",
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
  "slug": "recursivein-empty-iff-partrec--f83ed3574e022a997357e6ac",
  "source": {
    "blob": "d9c65b659ad296197502357e1701e8af0a7884fd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 185,
    "line": 174,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Computability/TuringDegree/Variantc501d52a07de65d9d15612cfb33afe53e8046b8e06f785cd936a57d58004574a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f83ed3574e022a997357e6ac2a0db7fb277e4b4be2cd008b75e6275eec1ade3b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/Computability/TuringDegree/Variantc501d52a07de65d9d15612cfb33afe53e8046b8e06f785cd936a57d58004574a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ab99f5fc-f0e0-e7a5-9e1e-6e5c66b20ac7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 174–185.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/Computability/TuringDegree/Variantc501d52a07de65d9d15612cfb33afe53e8046b8e06f785cd936a57d58004574a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Computability/TuringDegree/Variantc501d52a07de65d9d15612cfb33afe53e8046b8e06f785cd936a57d58004574a.lean#L174).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d9c65b659ad296197502357e1701e8af0a7884fd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
