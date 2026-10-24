# gaussSum_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d6a3d8af606da8f5e36b55822c8a76af90220b08",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 86,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9d/9d84e58316b6fb60154a37ccbab4c3ed0687ea0dd50c71c6ef58e92f4615eb36.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f9d73205-4b17-b858-8464-1e748076c9ec",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c9ee83df-15c7-79a9-c7d4-886e0ffbb5c7",
  "kind": "lemma",
  "lexical_name": "gaussSum_mul",
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
  "slug": "gausssum-mul--c20451b1af760e4913baf28b",
  "source": {
    "blob": "d6a3d8af606da8f5e36b55822c8a76af90220b08",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 102,
    "line": 86,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GaussSum/Variant9d84e58316b6fb60154a37ccbab4c3ed0687ea0dd50c71c6ef58e92f4615eb36.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c20451b1af760e4913baf28b839172941b3767463575d0b9ecd4afd17e7780f6",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/GaussSum/Variant9d84e58316b6fb60154a37ccbab4c3ed0687ea0dd50c71c6ef58e92f4615eb36.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c9ee83df-15c7-79a9-c7d4-886e0ffbb5c7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 86–102.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma gaussSum_mul {R : Type u} [CommRing R] [Fintype R] {R' : Type v} [CommRing R']
    (χ φ : MulChar R R') (ψ : AddChar R R') :
    gaussSum χ ψ * gaussSum φ ψ = ∑ t : R, ∑ x : R, χ x * φ (t - x) * ψ t := by
  rw [gaussSum, gaussSum, sum_mul_sum]
  conv => enter [1, 2, x, 2, x_1]; rw [mul_mul_mul_comm]
  simp only [← ψ.map_add_eq_mul]
  have sum_eq x : ∑ y : R, χ x * φ y * ψ (x + y) = ∑ y : R, χ x * φ (y - x) * ψ y := by
    rw [sum_bij (fun a _ ↦ a + x)]
    · simp only [mem_univ, forall_true_left, forall_const]
    · simp only [mem_univ, add_left_inj, imp_self, forall_const]
    · exact fun b _ ↦ ⟨b - x, mem_univ _, by rw [sub_add_cancel]⟩
    · exact fun a _ ↦ by rw [add_sub_cancel_right, add_comm]
  rw [sum_congr rfl fun x _ ↦ sum_eq x, sum_comm]

-- In the following, we need `R` to be a finite field.
variable {R : Type u} [Field R] [Fintype R] {R' : Type v} [CommRing R']

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/GaussSum/Variant9d84e58316b6fb60154a37ccbab4c3ed0687ea0dd50c71c6ef58e92f4615eb36.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/GaussSum/Variant9d84e58316b6fb60154a37ccbab4c3ed0687ea0dd50c71c6ef58e92f4615eb36.lean#L86).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d6a3d8af606da8f5e36b55822c8a76af90220b08` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
