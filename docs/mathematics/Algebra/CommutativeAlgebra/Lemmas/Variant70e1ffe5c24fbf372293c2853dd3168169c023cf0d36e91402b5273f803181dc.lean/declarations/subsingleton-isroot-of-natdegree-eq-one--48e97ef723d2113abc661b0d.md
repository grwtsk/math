# subsingleton_isRoot_of_natDegree_eq_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "51465d8f5669bd9cd640bdcd9451489094075c78",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 358,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/70/70e1ffe5c24fbf372293c2853dd3168169c023cf0d36e91402b5273f803181dc.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4fbbe966-92b7-25ce-1736-dcc98ff78fc1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9cce5530-62a2-2067-fe26-a494cd6bffd4",
  "kind": "theorem",
  "lexical_name": "subsingleton_isRoot_of_natDegree_eq_one",
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
  "slug": "subsingleton-isroot-of-natdegree-eq-one--48e97ef723d2113abc661b0d",
  "source": {
    "blob": "51465d8f5669bd9cd640bdcd9451489094075c78",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 366,
    "line": 358,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Lemmas/Variant70e1ffe5c24fbf372293c2853dd3168169c023cf0d36e91402b5273f803181dc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:48e97ef723d2113abc661b0db92a624ebe01c5ade6e4d3948abb0c637628d389",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Lemmas/Variant70e1ffe5c24fbf372293c2853dd3168169c023cf0d36e91402b5273f803181dc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9cce5530-62a2-2067-fe26-a494cd6bffd4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 358–366.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem subsingleton_isRoot_of_natDegree_eq_one [IsLeftCancelMulZero R]
    (h : p.natDegree = 1) : { x | IsRoot p x }.Subsingleton := by
  intro r₁
  obtain ⟨r₂, hr₂, r₃, rfl⟩ : ∃ a, a ≠ 0 ∧ ∃ b, C a * X + C b = p := by rwa [natDegree_eq_one] at h
  have (x y : R) := mul_left_cancel₀ hr₂ (b := x) (c := y)
  grind [IsRoot, eval_add, eval_mul_X, eval_C]

variable [NoZeroDivisors R]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Lemmas/Variant70e1ffe5c24fbf372293c2853dd3168169c023cf0d36e91402b5273f803181dc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Lemmas/Variant70e1ffe5c24fbf372293c2853dd3168169c023cf0d36e91402b5273f803181dc.lean#L358).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `51465d8f5669bd9cd640bdcd9451489094075c78` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
