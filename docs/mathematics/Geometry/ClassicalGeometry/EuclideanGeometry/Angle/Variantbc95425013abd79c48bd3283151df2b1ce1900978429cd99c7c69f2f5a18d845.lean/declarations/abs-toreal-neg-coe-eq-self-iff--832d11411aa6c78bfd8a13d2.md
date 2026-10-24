# abs_toReal_neg_coe_eq_self_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "58ff28d971aa0b5bdfcc671b817d8140181900b0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 531,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/bc/bc95425013abd79c48bd3283151df2b1ce1900978429cd99c7c69f2f5a18d845.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e07d47aa-425f-181b-5e2f-b191edfc4c83",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ff709f4e-9229-a719-b5a5-4477dee6e405",
  "kind": "theorem",
  "lexical_name": "abs_toReal_neg_coe_eq_self_iff",
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
  "slug": "abs-toreal-neg-coe-eq-self-iff--832d11411aa6c78bfd8a13d2",
  "source": {
    "blob": "58ff28d971aa0b5bdfcc671b817d8140181900b0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 538,
    "line": 531,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Angle/Variantbc95425013abd79c48bd3283151df2b1ce1900978429cd99c7c69f2f5a18d845.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:832d11411aa6c78bfd8a13d263cf911996072bef25c712073f3d4b25b1a53742",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/Angle/Variantbc95425013abd79c48bd3283151df2b1ce1900978429cd99c7c69f2f5a18d845.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ff709f4e-9229-a719-b5a5-4477dee6e405`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 531–538.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem abs_toReal_neg_coe_eq_self_iff {θ : ℝ} : |(-θ : Angle).toReal| = θ ↔ 0 ≤ θ ∧ θ ≤ π := by
  refine ⟨fun h => h ▸ ⟨abs_nonneg _, abs_toReal_le_pi _⟩, fun h => ?_⟩
  by_cases hnegpi : θ = π; · simp [hnegpi, Real.pi_pos.le]
  rw [← coe_neg,
    toReal_coe_eq_self_iff.2
      ⟨neg_lt_neg (lt_of_le_of_ne h.2 hnegpi), (neg_nonpos.2 h.1).trans Real.pi_pos.le⟩,
    abs_neg, abs_eq_self.2 h.1]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/Angle/Variantbc95425013abd79c48bd3283151df2b1ce1900978429cd99c7c69f2f5a18d845.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Angle/Variantbc95425013abd79c48bd3283151df2b1ce1900978429cd99c7c69f2f5a18d845.lean#L531).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `58ff28d971aa0b5bdfcc671b817d8140181900b0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
