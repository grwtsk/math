# degreeOf_mul_X_of_ne

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3fe000f6-c547-61b2-b421-d88577ffb9d9",
  "kind": "theorem",
  "lexical_name": "degreeOf_mul_X_of_ne",
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
  "slug": "degreeof-mul-x-of-ne--ac088712474d422623da4067",
  "source": {
    "blob": "a4124500c6ef14e22a331285bb91b4be15be0788",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 305,
    "line": 295,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Degrees/Variantc2b440e3e35baaf7c4cdad8ad6c558b71c34b5ba77fc20959311b00e0acf5069.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ac088712474d422623da4067035ba80f54abda7f39c72498e0a41a76b8c8c244",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Degrees/Variantc2b440e3e35baaf7c4cdad8ad6c558b71c34b5ba77fc20959311b00e0acf5069.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3fe000f6-c547-61b2-b421-d88577ffb9d9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 295–305.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem degreeOf_mul_X_of_ne {i j : σ} (f : MvPolynomial σ R) (h : i ≠ j) :
    degreeOf i (f * X j) = degreeOf i f := by
  classical
  simp only [degreeOf_eq_sup i, support_mul_X, Finset.sup_map]
  congr
  ext
  simp only [Finsupp.single, add_eq_left, addRightEmbedding_apply, coe_mk,
    Pi.add_apply, comp_apply, ite_eq_right_iff, Finsupp.coe_add, Pi.single_eq_of_ne h]

@[deprecated (since := "2024-12-01")] alias degreeOf_mul_X_ne := degreeOf_mul_X_of_ne

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Degrees/Variantc2b440e3e35baaf7c4cdad8ad6c558b71c34b5ba77fc20959311b00e0acf5069.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Degrees/Variantc2b440e3e35baaf7c4cdad8ad6c558b71c34b5ba77fc20959311b00e0acf5069.lean#L295).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a4124500c6ef14e22a331285bb91b4be15be0788` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
