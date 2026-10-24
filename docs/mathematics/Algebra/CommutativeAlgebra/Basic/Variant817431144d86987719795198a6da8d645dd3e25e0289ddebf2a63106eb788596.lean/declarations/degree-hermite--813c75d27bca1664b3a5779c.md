# degree_hermite

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a9439a14dd0c0438f36739e8b47ab21d5af456c3",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 111,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/81/817431144d86987719795198a6da8d645dd3e25e0289ddebf2a63106eb788596.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:01015101-d275-cd80-fdec-b96cb90b514e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:dda2ae3a-6ee7-d97d-3611-3d3f2f24a44d",
  "kind": "theorem",
  "lexical_name": "degree_hermite",
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
  "slug": "degree-hermite--813c75d27bca1664b3a5779c",
  "source": {
    "blob": "a9439a14dd0c0438f36739e8b47ab21d5af456c3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 119,
    "line": 111,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Basic/Variant817431144d86987719795198a6da8d645dd3e25e0289ddebf2a63106eb788596.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:813c75d27bca1664b3a5779c6491d9dd51823fa33edcd732255dae48dbc82c20",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Basic/Variant817431144d86987719795198a6da8d645dd3e25e0289ddebf2a63106eb788596.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dda2ae3a-6ee7-d97d-3611-3d3f2f24a44d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 111–119.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem degree_hermite (n : ℕ) : (hermite n).degree = n := by
  rw [degree_eq_of_le_of_coeff_ne_zero]
  simp_rw [degree_le_iff_coeff_zero, Nat.cast_lt]
  · rintro m hnm
    exact coeff_hermite_of_lt hnm
  · simp [coeff_hermite_self n]
#align polynomial.degree_hermite Polynomial.degree_hermite

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Basic/Variant817431144d86987719795198a6da8d645dd3e25e0289ddebf2a63106eb788596.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Basic/Variant817431144d86987719795198a6da8d645dd3e25e0289ddebf2a63106eb788596.lean#L111).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a9439a14dd0c0438f36739e8b47ab21d5af456c3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
