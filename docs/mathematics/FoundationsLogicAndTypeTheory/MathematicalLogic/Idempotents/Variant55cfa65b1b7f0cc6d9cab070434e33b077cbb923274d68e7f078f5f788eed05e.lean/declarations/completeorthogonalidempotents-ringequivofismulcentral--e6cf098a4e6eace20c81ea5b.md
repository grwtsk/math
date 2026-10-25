# CompleteOrthogonalIdempotents.ringEquivOfIsMulCentral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5de07fc5bfc5f21f5e4acb033e63bc122298c6cd9bddb315ba74eec3fd1fe098",
  "kind": "def",
  "lexical_name": "CompleteOrthogonalIdempotents.ringEquivOfIsMulCentral",
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
  "slug": "completeorthogonalidempotents-ringequivofismulcentral--e6cf098a4e6eace20c81ea5b",
  "source": {
    "blob": "a0d12e7f5924330176fd12dba6740d9fa10d8340",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 582,
    "line": 559,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Idempotents/Variant55cfa65b1b7f0cc6d9cab070434e33b077cbb923274d68e7f078f5f788eed05e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e6cf098a4e6eace20c81ea5bcbed3a727172cfac42d7d8db54c17bcb3b7d0d92",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Idempotents/Variant55cfa65b1b7f0cc6d9cab070434e33b077cbb923274d68e7f078f5f788eed05e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5de07fc5bfc5f21f5e4acb033e63bc122298c6cd9bddb315ba74eec3fd1fe098`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 559–582.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def CompleteOrthogonalIdempotents.ringEquivOfIsMulCentral [Semiring R]
    (he : CompleteOrthogonalIdempotents e) (hc : ∀ i, IsMulCentral (e i)) :
    R ≃+* Π i, (he.idem i).Corner where
  toFun r i := ⟨_, r, rfl⟩
  invFun r := ∑ i, (r i).1
  left_inv r := by
    simp_rw [(hc _).comm, mul_assoc, (he.idem _).eq, ← Finset.mul_sum, he.complete, mul_one]
  right_inv r := funext fun i ↦ Subtype.ext <| by
    simp_rw [Finset.mul_sum, Finset.sum_mul]
    rw [Finset.sum_eq_single i _ (by simp at ·)]
    · have ⟨r', eq⟩ := (r i).2
      rw [← eq]; simp_rw [← mul_assoc, (he.idem i).eq, mul_assoc, (he.idem i).eq]
    · intro j _ ne; have ⟨r', eq⟩ := (r j).2
      rw [← eq]; simp_rw [← mul_assoc, he.ortho ne.symm, zero_mul]
  map_mul' r₁ r₂ := funext fun i ↦ Subtype.ext <|
    calc e i * (r₁ * r₂) * e i
     _ = e i * (r₁ * e i * r₂) * e i := by simp_rw [← (hc i).comm r₁, ← mul_assoc, (he.idem i).eq]
     _ = e i * r₁ * e i * (e i * r₂ * e i) := by
      conv in (r₁ * _ * r₂) => rw [← (he.idem i).eq]
      simp_rw [mul_assoc]
  map_add' r₁ r₂ := funext fun i ↦ Subtype.ext <| by simpa [mul_add] using add_mul ..

/-- A complete orthogonal family of idempotents in a commutative semiring
give rise to a direct product decomposition. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Idempotents/Variant55cfa65b1b7f0cc6d9cab070434e33b077cbb923274d68e7f078f5f788eed05e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Idempotents/Variant55cfa65b1b7f0cc6d9cab070434e33b077cbb923274d68e7f078f5f788eed05e.lean#L559).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a0d12e7f5924330176fd12dba6740d9fa10d8340` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
