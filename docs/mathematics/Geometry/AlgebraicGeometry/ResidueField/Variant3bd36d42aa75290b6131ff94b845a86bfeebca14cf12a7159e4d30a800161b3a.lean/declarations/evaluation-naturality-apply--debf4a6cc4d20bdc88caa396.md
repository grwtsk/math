# evaluation_naturality_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0e0f2a8cf9f4d2cdb1e0ca271ee0dfe853716061",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 137,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3b/3bd36d42aa75290b6131ff94b845a86bfeebca14cf12a7159e4d30a800161b3a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:98cc9ac5-5d32-f4e2-c21b-a37df60ed257",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3cb59aff-a8c5-efb5-ae49-f57e4e385729",
  "kind": "lemma",
  "lexical_name": "evaluation_naturality_apply",
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
  "slug": "evaluation-naturality-apply--debf4a6cc4d20bdc88caa396",
  "source": {
    "blob": "0e0f2a8cf9f4d2cdb1e0ca271ee0dfe853716061",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 144,
    "line": 137,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/ResidueField/Variant3bd36d42aa75290b6131ff94b845a86bfeebca14cf12a7159e4d30a800161b3a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:debf4a6cc4d20bdc88caa39677e0972077eea78440b828c180bbd2e237f1b940",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/ResidueField/Variant3bd36d42aa75290b6131ff94b845a86bfeebca14cf12a7159e4d30a800161b3a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3cb59aff-a8c5-efb5-ae49-f57e4e385729`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 137–144.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma evaluation_naturality_apply {V : Opens Y} (x : (Opens.map f.base).obj V)
    (a : Y.presheaf.obj (op V)) :
    residueFieldMap f x.val (Y.evaluation ⟨f.base x, x.property⟩ a) =
      X.evaluation x (f.c.app (op V) a) := by
  simpa using congrFun (congrArg (DFunLike.coe ∘ CommRingCat.Hom.hom) <|
    evaluation_naturality f x) a

@[reassoc]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/ResidueField/Variant3bd36d42aa75290b6131ff94b845a86bfeebca14cf12a7159e4d30a800161b3a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/ResidueField/Variant3bd36d42aa75290b6131ff94b845a86bfeebca14cf12a7159e4d30a800161b3a.lean#L137).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0e0f2a8cf9f4d2cdb1e0ca271ee0dfe853716061` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
