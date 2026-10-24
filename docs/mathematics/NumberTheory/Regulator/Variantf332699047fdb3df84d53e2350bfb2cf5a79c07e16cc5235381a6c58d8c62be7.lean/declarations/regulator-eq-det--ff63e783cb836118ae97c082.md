# regulator_eq_det

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "70c6391ac0da8bdcabc91c771b099a3480ae7e68",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 241,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f3/f332699047fdb3df84d53e2350bfb2cf5a79c07e16cc5235381a6c58d8c62be7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1bb912e0-294c-f833-0074-509d8c4a7a60",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:062bad67-1692-7d07-9ea4-74e383ca62f9",
  "kind": "theorem",
  "lexical_name": "regulator_eq_det",
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
  "slug": "regulator-eq-det--ff63e783cb836118ae97c082",
  "source": {
    "blob": "70c6391ac0da8bdcabc91c771b099a3480ae7e68",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 251,
    "line": 241,
    "path": "GRWTSK/NumberTheory/Regulator/Variantf332699047fdb3df84d53e2350bfb2cf5a79c07e16cc5235381a6c58d8c62be7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ff63e783cb836118ae97c082ddd2a4d53f84e0881687a1454e95be934a4bc38d",
  "verification": {
    "reference": "docs/verification/NumberTheory/Regulator/Variantf332699047fdb3df84d53e2350bfb2cf5a79c07e16cc5235381a6c58d8c62be7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:062bad67-1692-7d07-9ea4-74e383ca62f9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 241–251.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem regulator_eq_det (w' : InfinitePlace K) (e : {w // w ≠ w'} ≃ Fin (rank K)) :
    regulator K =
      |(Matrix.of fun i w : {w // w ≠ w'} ↦ (mult w.val : ℝ) *
        Real.log (w.val (fundSystem K (e i) : K))).det| := by
  rw [regulator_eq_regOfFamily_fundSystem, regOfFamily_eq_det]

open scoped Classical in
/--
The degree of `K` times the regulator of `K` is equal to the absolute value of the determinant of
the matrix whose columns are `(mult w * log w (fundSystem K i))_i, w` and the column `(mult w)_w`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Regulator/Variantf332699047fdb3df84d53e2350bfb2cf5a79c07e16cc5235381a6c58d8c62be7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Regulator/Variantf332699047fdb3df84d53e2350bfb2cf5a79c07e16cc5235381a6c58d8c62be7.lean#L241).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `70c6391ac0da8bdcabc91c771b099a3480ae7e68` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
