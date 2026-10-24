# degreeOf_mul_X_eq_degreeOf_add_one_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "04ff1b96c58cbd998c55cfdbd67989dfbe647fa8",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 309,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/0e/0ece1fde9849f85841e999283c1bb32d58780d6eec792dd92202951276bf5d2d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6a329694-afd1-51b9-eecf-fd52b3b0f2e7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:927c2335-3c38-b94a-714a-8b27b21bb4e0",
  "kind": "theorem",
  "lexical_name": "degreeOf_mul_X_eq_degreeOf_add_one_iff",
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
  "slug": "degreeof-mul-x-eq-degreeof-add-one-iff--a86e0992e99bf85210ba48d5",
  "source": {
    "blob": "04ff1b96c58cbd998c55cfdbd67989dfbe647fa8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 321,
    "line": 309,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Degrees/Variant0ece1fde9849f85841e999283c1bb32d58780d6eec792dd92202951276bf5d2d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a86e0992e99bf85210ba48d5f41cc8f119048b0728ad0c7543e1286c4e81478f",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Degrees/Variant0ece1fde9849f85841e999283c1bb32d58780d6eec792dd92202951276bf5d2d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:927c2335-3c38-b94a-714a-8b27b21bb4e0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 309–321.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem degreeOf_mul_X_eq_degreeOf_add_one_iff (j : σ) (f : MvPolynomial σ R) :
    degreeOf j (f * X j) = degreeOf j f + 1 ↔ f ≠ 0 := by
  refine ⟨fun h => by by_contra ha; simp [ha] at h, fun h => ?_⟩
  apply Nat.le_antisymm (degreeOf_mul_X_self j f)
  have : (f.support.sup fun m ↦ m j) + 1 = (f.support.sup fun m ↦ (m j + 1)) :=
    Finset.comp_sup_eq_sup_comp_of_nonempty @Nat.succ_le_succ (support_nonempty.mpr h)
  simp only [degreeOf_eq_sup, support_mul_X, this]
  apply Finset.sup_le
  intro x hx
  simp only [Finset.sup_map, bot_eq_zero', add_pos_iff, zero_lt_one, or_true, Finset.le_sup_iff]
  use x
  simpa using mem_support_iff.mp hx

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Degrees/Variant0ece1fde9849f85841e999283c1bb32d58780d6eec792dd92202951276bf5d2d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Degrees/Variant0ece1fde9849f85841e999283c1bb32d58780d6eec792dd92202951276bf5d2d.lean#L309).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `04ff1b96c58cbd998c55cfdbd67989dfbe647fa8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
