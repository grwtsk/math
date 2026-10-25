# scalar_quadratic_schur_decomposition

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e6019e8f3b1feb16eed941c53fd646231a45f58f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 137,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/da/da2c98befb62ccd8ebe21bc3355ca741a158db4c94225981c070d1fb16842eb6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:58dc0b07-1cdd-f4a6-808d-be51ed514fdc",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d4321a12-1c3f-5185-7742-cdbb8d35b26c",
  "kind": "theorem",
  "lexical_name": "scalar_quadratic_schur_decomposition",
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
  "slug": "scalar-quadratic-schur-decomposition--ae8fedd7e0c4b1c7775d6de0",
  "source": {
    "blob": "e6019e8f3b1feb16eed941c53fd646231a45f58f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 149,
    "line": 137,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ScalarSchur/Variantda2c98befb62ccd8ebe21bc3355ca741a158db4c94225981c070d1fb16842eb6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ae8fedd7e0c4b1c7775d6de081173265ed477e76e575130b04de1eb9157a6349",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ScalarSchur/Variantda2c98befb62ccd8ebe21bc3355ca741a158db4c94225981c070d1fb16842eb6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d4321a12-1c3f-5185-7742-cdbb8d35b26c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 137–149.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem scalar_quadratic_schur_decomposition
    (a b c : ℝ) (ha : a ≠ 0)
    (hpos : ∀ x : ℝ × ℝ, 0 ≤ scalarBlockForm a b c x x)
    (x : ℝ × ℝ) :
    scalarBlockForm a b c x x =
      (scalarProvenanceProjector a b c ha hpos).projectedForm.form x x +
        (c - b ^ 2 / a) * x.2 ^ 2 := by
  have h := (scalarProvenanceProjector a b c ha hpos).quadratic_decomposition x
  change scalarBlockForm a b c x x = _ at h
  rw [scalarResidualForm_eq_schur a b c ha hpos x x] at h
  simpa only [pow_two, mul_assoc] using h

end FormalResearch.PositiveAtlas
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ScalarSchur/Variantda2c98befb62ccd8ebe21bc3355ca741a158db4c94225981c070d1fb16842eb6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ScalarSchur/Variantda2c98befb62ccd8ebe21bc3355ca741a158db4c94225981c070d1fb16842eb6.lean#L137).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e6019e8f3b1feb16eed941c53fd646231a45f58f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
