# completedHurwitzZetaEven_neg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "92ffff2cca27f74c6f2ef2925ea61dae82f90ba8",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 347,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/bf/bf51bfc38e299b4b85f8bf7194c14b6193993f2996e2877b059072e9d11604a9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:75c5cb62-ac02-5548-f292-16d5b9327d7b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:754d6083-e19c-b3b1-e84b-5088d2d1b070",
  "kind": "lemma",
  "lexical_name": "completedHurwitzZetaEven_neg",
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
  "slug": "completedhurwitzzetaeven-neg--27d3c38e59b3b99335730936",
  "source": {
    "blob": "92ffff2cca27f74c6f2ef2925ea61dae82f90ba8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 351,
    "line": 347,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/HurwitzZetaEven/Variantbf51bfc38e299b4b85f8bf7194c14b6193993f2996e2877b059072e9d11604a9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:27d3c38e59b3b9933573093697b4c223a0b33d3459cc14fe341ec2a1e46a864d",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/HurwitzZetaEven/Variantbf51bfc38e299b4b85f8bf7194c14b6193993f2996e2877b059072e9d11604a9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:754d6083-e19c-b3b1-e84b-5088d2d1b070`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 347–351.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma completedHurwitzZetaEven_neg (a : UnitAddCircle) (s : ℂ) :
    completedHurwitzZetaEven (-a) s = completedHurwitzZetaEven a s := by
  simp [completedHurwitzZetaEven]

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/HurwitzZetaEven/Variantbf51bfc38e299b4b85f8bf7194c14b6193993f2996e2877b059072e9d11604a9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/HurwitzZetaEven/Variantbf51bfc38e299b4b85f8bf7194c14b6193993f2996e2877b059072e9d11604a9.lean#L347).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `92ffff2cca27f74c6f2ef2925ea61dae82f90ba8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
