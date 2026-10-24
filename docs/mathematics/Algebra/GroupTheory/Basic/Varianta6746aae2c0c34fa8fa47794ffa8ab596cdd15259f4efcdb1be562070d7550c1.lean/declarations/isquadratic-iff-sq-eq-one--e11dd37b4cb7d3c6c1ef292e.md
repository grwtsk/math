# isQuadratic_iff_sq_eq_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c3ea5af7172195c7ca574932089fd7b54dd9571b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 559,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a6/a6746aae2c0c34fa8fa47794ffa8ab596cdd15259f4efcdb1be562070d7550c1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c706998d-1b26-6e49-2e5f-bbf56882676f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:94cf0e37-dfab-ee76-45b9-c3cab25b3dba",
  "kind": "lemma",
  "lexical_name": "isQuadratic_iff_sq_eq_one",
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
  "slug": "isquadratic-iff-sq-eq-one--e11dd37b4cb7d3c6c1ef292e",
  "source": {
    "blob": "c3ea5af7172195c7ca574932089fd7b54dd9571b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 587,
    "line": 559,
    "path": "GRWTSK/Algebra/GroupTheory/Basic/Varianta6746aae2c0c34fa8fa47794ffa8ab596cdd15259f4efcdb1be562070d7550c1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e11dd37b4cb7d3c6c1ef292ebe2ab215d0bab2d66f51fd30318a59f5f51778a1",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Basic/Varianta6746aae2c0c34fa8fa47794ffa8ab596cdd15259f4efcdb1be562070d7550c1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:94cf0e37-dfab-ee76-45b9-c3cab25b3dba`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 559–587.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isQuadratic_iff_sq_eq_one {M R : Type*} [CommMonoid M] [CommRing R] [NoZeroDivisors R]
    [Nontrivial R] {χ : MulChar M R} :
    IsQuadratic χ ↔ χ ^ 2 = 1 := by
  refine ⟨fun h ↦ ext (fun x ↦ ?_), fun h x ↦ ?_⟩
  · rw [one_apply_coe, χ.pow_apply_coe]
    rcases h x with H | H | H
    · exact (not_isUnit_zero <| H ▸ IsUnit.map χ <| x.isUnit).elim
    · simp only [H, one_pow]
    · simp only [H, even_two, Even.neg_pow, one_pow]
  · by_cases hx : IsUnit x
    · refine .inr <| sq_eq_one_iff.mp ?_
      rw [← χ.pow_apply' two_ne_zero, h, MulChar.one_apply hx]
    · exact .inl <| map_nonunit χ hx

end quadratic_and_comp

end Properties

/-!
### Multiplicative characters with finite domain
-/

section Finite

variable {M : Type*} [CommMonoid M]
variable {R : Type*} [CommMonoidWithZero R]

/-- If `χ` is a multiplicative character on a commutative monoid `M` with finitely many units,
then `χ ^ #Mˣ = 1`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Basic/Varianta6746aae2c0c34fa8fa47794ffa8ab596cdd15259f4efcdb1be562070d7550c1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Basic/Varianta6746aae2c0c34fa8fa47794ffa8ab596cdd15259f4efcdb1be562070d7550c1.lean#L559).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c3ea5af7172195c7ca574932089fd7b54dd9571b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
