# implant_differenceSupport_inside

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d9ee3123f42a1a2955379f193b980a44fd3266e6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 117,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d8/d80cb774da3fc91bd44e932dd47bf56dd3a6a6ba38babe6cf998389c092b5465.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:47a99266-7e54-a660-8c78-719c7b7c34ae",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5448538f-9ce6-7eab-64fd-6790e2a74130",
  "kind": "theorem",
  "lexical_name": "implant_differenceSupport_inside",
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
  "slug": "implant-differencesupport-inside--7d5d6aed8079a618daef1e31",
  "source": {
    "blob": "d9ee3123f42a1a2955379f193b980a44fd3266e6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 130,
    "line": 117,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Submatrix/Variantd80cb774da3fc91bd44e932dd47bf56dd3a6a6ba38babe6cf998389c092b5465.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7d5d6aed8079a618daef1e317015755865915f3736a42b62107a6c2f569f2e3e",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Submatrix/Variantd80cb774da3fc91bd44e932dd47bf56dd3a6a6ba38babe6cf998389c092b5465.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5448538f-9ce6-7eab-64fd-6790e2a74130`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 117–130.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem implant_differenceSupport_inside
    (A : BitMatrix m n) (L : MatrixLocus m n)
    (replacement : BitMatrix L.rows.card L.columns.card)
    {i : Fin m} {j : Fin n}
    (h : (i, j) ∈ differenceSupport (implantSubmatrix A L replacement) A) :
    i ∈ L.rows ∧ j ∈ L.columns := by
  have hdiff := (mem_differenceSupport_iff _ _ _ _).mp h
  constructor
  · by_contra hi
    exact hdiff (implantSubmatrix_outside A L replacement i j (Or.inl hi))
  · by_contra hj
    exact hdiff (implantSubmatrix_outside A L replacement i j (Or.inr hj))

/-- Row uniqueness for Boolean action matrices. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Submatrix/Variantd80cb774da3fc91bd44e932dd47bf56dd3a6a6ba38babe6cf998389c092b5465.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Submatrix/Variantd80cb774da3fc91bd44e932dd47bf56dd3a6a6ba38babe6cf998389c092b5465.lean#L117).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d9ee3123f42a1a2955379f193b980a44fd3266e6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
