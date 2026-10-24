# coeff_mul_add_of_le_natDegree_of_eq_ite

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ba2e8c8da198f8aee873714934135d9e06d6bb94",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 102,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f4/f4811a5a7a6fe9202f14886a6b39e9b9f24906ab6df260a2c4e34dcafa3585c7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f15eb075-6653-4434-f1cc-c64c44714f4a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2068fdee-2ceb-7a7b-9b81-0859fd898ab2",
  "kind": "theorem",
  "lexical_name": "coeff_mul_add_of_le_natDegree_of_eq_ite",
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
  "slug": "coeff-mul-add-of-le-natdegree-of-eq-ite--a9703e22fa0fe96661d02757",
  "source": {
    "blob": "ba2e8c8da198f8aee873714934135d9e06d6bb94",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 113,
    "line": 102,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/ComputeDegree/Variantf4811a5a7a6fe9202f14886a6b39e9b9f24906ab6df260a2c4e34dcafa3585c7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a9703e22fa0fe96661d027576316d764a7020aa2ae9205eaf889dc6414c71f8b",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/ComputeDegree/Variantf4811a5a7a6fe9202f14886a6b39e9b9f24906ab6df260a2c4e34dcafa3585c7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2068fdee-2ceb-7a7b-9b81-0859fd898ab2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 102–113.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coeff_mul_add_of_le_natDegree_of_eq_ite {d df dg : ℕ} {a b : R} {f g : R[X]}
    (h_mul_left : natDegree f ≤ df) (h_mul_right : natDegree g ≤ dg)
    (h_mul_left : f.coeff df = a) (h_mul_right : g.coeff dg = b) (ddf : df + dg ≤ d) :
    (f * g).coeff d = if d = df + dg then a * b else 0 := by
  split_ifs with h
  · subst h_mul_left h_mul_right h
    exact coeff_mul_of_natDegree_le ‹_› ‹_›
  · apply coeff_eq_zero_of_natDegree_lt
    apply lt_of_le_of_lt ?_ (lt_of_le_of_ne ddf ?_)
    · exact natDegree_mul_le_of_le ‹_› ‹_›
    · exact ne_comm.mp h

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/ComputeDegree/Variantf4811a5a7a6fe9202f14886a6b39e9b9f24906ab6df260a2c4e34dcafa3585c7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/ComputeDegree/Variantf4811a5a7a6fe9202f14886a6b39e9b9f24906ab6df260a2c4e34dcafa3585c7.lean#L102).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ba2e8c8da198f8aee873714934135d9e06d6bb94` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
