# rawDirectionalMoment_two

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d387222618792ab4e97ba17e310c70ded68b8bfd",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 85,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/76/7680c2a97b17137e636d1aeb81776d034b4469fdefb99f8037eb3023e43e2568.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:608fb43d-cc84-e89c-9207-66e7bbc91daf",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ed3c6eea-2857-7ed6-51c1-c8d81cd8917c",
  "kind": "theorem",
  "lexical_name": "rawDirectionalMoment_two",
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
  "slug": "rawdirectionalmoment-two--e130780da44998f21447b41b",
  "source": {
    "blob": "d387222618792ab4e97ba17e310c70ded68b8bfd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 96,
    "line": 85,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/FiniteRawMomentHierarchy/Variant7680c2a97b17137e636d1aeb81776d034b4469fdefb99f8037eb3023e43e2568.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e130780da44998f21447b41b2b9d9f7bb1c7a5c36a7bbfc2dc3f29fa2c26a114",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/FiniteRawMomentHierarchy/Variant7680c2a97b17137e636d1aeb81776d034b4469fdefb99f8037eb3023e43e2568.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ed3c6eea-2857-7ed6-51c1-c8d81cd8917c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 85–96.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem rawDirectionalMoment_two
    (theta : E)
    (directions : Fin 2 → E) :
    F.rawDirectionalMoment theta 2 directions =
      ∑ i : I,
        F.probability theta i *
          F.statistic i (directions 0) *
          F.statistic i (directions 1) := by
  classical
  simp [rawDirectionalMoment, Fin.prod_univ_two, mul_assoc]

/-- Covariance is the second raw moment minus the product of first moments. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/FiniteRawMomentHierarchy/Variant7680c2a97b17137e636d1aeb81776d034b4469fdefb99f8037eb3023e43e2568.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/FiniteRawMomentHierarchy/Variant7680c2a97b17137e636d1aeb81776d034b4469fdefb99f8037eb3023e43e2568.lean#L85).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d387222618792ab4e97ba17e310c70ded68b8bfd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
