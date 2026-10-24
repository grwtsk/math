# y_mul_mem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bbb0f7ae-d771-b729-e419-56dfe2a0e6c0",
  "kind": "theorem",
  "lexical_name": "y_mul_mem",
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
  "slug": "y-mul-mem--9dcf66deee4ecdc881a8e1f7",
  "source": {
    "blob": "09c1279803b705e13d4da51c9981f8ab3f149677",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 117,
    "line": 93,
    "path": "GRWTSK/AlgebraicGeometry/EllipticCurve/WeierstrassIntegralImage.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9dcf66deee4ecdc881a8e1f788d30b899a5fd660b5aa8582ded68b91e82a1dce",
  "verification": {
    "reference": "docs/verification/AlgebraicGeometry/EllipticCurve/WeierstrassIntegralImage.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bbb0f7ae-d771-b729-e419-56dfe2a0e6c0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 93–117.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem y_mul_mem (A B : ℤ) (x y : S) (h : Relation A B x y)
    (N : ℕ) (hy : y^(N+1)=0) (hx : y^2 ∣ x)
    (z : S) (hz : z ∈ lattice x y N) : y*z ∈ lattice x y N := by
  induction hz using Submodule.span_induction with
  | mem z hz =>
    obtain ⟨k,rfl⟩ := hz
    have hp : k.val%2=0 ∨ k.val%2=1 := by omega
    rcases hp with hp | hp
    · simpa [term,hp,mul_comm] using odd_mem x y N hy hx (k.val/2)
    · simp only [term,hp,pow_one]
      rw [y_mul_odd A B x y h]
      exact (lattice x y N).add_mem
        ((lattice x y N).add_mem
          ((lattice x y N).sub_mem
            (by simpa [zsmul_eq_mul] using (lattice x y N).smul_mem B
              (even_mem x y N hy hx (k.val/2+1)))
            (odd_mem x y N hy hx (k.val/2+1)))
          (by simpa [zsmul_eq_mul] using (lattice x y N).smul_mem A
            (even_mem x y N hy hx (k.val/2+2))))
        (even_mem x y N hy hx (k.val/2+3))
  | zero => simpa using (Submodule.zero_mem (lattice x y N))
  | add z w hz hw ihz ihw => simpa [mul_add] using (lattice x y N).add_mem ihz ihw
  | smul a z hz ih => simpa [mul_smul_comm] using (lattice x y N).smul_mem a ih

/-- Every input is an integer polynomial on the SAME pair of quotient coordinates. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/AlgebraicGeometry/EllipticCurve/WeierstrassIntegralImage.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/AlgebraicGeometry/EllipticCurve/WeierstrassIntegralImage.lean#L93).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `09c1279803b705e13d4da51c9981f8ab3f149677` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
