# hermiteMatrix_posSemidef_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1ca3cbd13799d72ce12387691670eb5333bf018b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 69,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/76/76e1155d699298c34c6309d23577795a19b3be33637f2bc168dd27d171c7d514.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ae22a10e-ef2a-aaf8-8319-cc14dda53ba4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9cedfa49-8f59-65da-02f4-2740edec12d7",
  "kind": "theorem",
  "lexical_name": "hermiteMatrix_posSemidef_iff",
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
  "slug": "hermitematrix-possemidef-iff--e4c394c295ceecd63ac1c683",
  "source": {
    "blob": "1ca3cbd13799d72ce12387691670eb5333bf018b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 75,
    "line": 69,
    "path": "GRWTSK/Algebra/LinearAlgebra/XiHermiteQuadratic/Variant76e1155d699298c34c6309d23577795a19b3be33637f2bc168dd27d171c7d514.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e4c394c295ceecd63ac1c6835bf2f15e581ac1453f47d4b6e23d1150a54b5954",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/XiHermiteQuadratic/Variant76e1155d699298c34c6309d23577795a19b3be33637f2bc168dd27d171c7d514.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9cedfa49-8f59-65da-02f4-2740edec12d7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 69–75.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hermiteMatrix_posSemidef_iff (b c : ℝ) :
    (hermiteMatrix b c).PosSemidef ↔ 0 ≤ b ^ 2 - 4 * c := by
  rw [Matrix.posSemidef_iff_dotProduct_mulVec]
  simp only [hermiteMatrix_isHermitian, star_trivial, true_and]
  exact hermite_square_nonneg_iff b c

/-- Nonnegative discriminant forces every full complex root onto the real axis. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/XiHermiteQuadratic/Variant76e1155d699298c34c6309d23577795a19b3be33637f2bc168dd27d171c7d514.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/XiHermiteQuadratic/Variant76e1155d699298c34c6309d23577795a19b3be33637f2bc168dd27d171c7d514.lean#L69).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1ca3cbd13799d72ce12387691670eb5333bf018b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
