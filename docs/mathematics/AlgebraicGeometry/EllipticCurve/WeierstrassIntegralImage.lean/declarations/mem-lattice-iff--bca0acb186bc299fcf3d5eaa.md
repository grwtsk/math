# mem_lattice_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:00109226-86ed-c3a6-3d45-fdd086a98368",
  "kind": "theorem",
  "lexical_name": "mem_lattice_iff",
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
  "slug": "mem-lattice-iff--bca0acb186bc299fcf3d5eaa",
  "source": {
    "blob": "09c1279803b705e13d4da51c9981f8ab3f149677",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 154,
    "line": 122,
    "path": "GRWTSK/AlgebraicGeometry/EllipticCurve/WeierstrassIntegralImage.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bca0acb186bc299fcf3d5eaa5e7151140e5fd80c074dc20a37a3242352846287",
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

Occurrence: `result:00109226-86ed-c3a6-3d45-fdd086a98368`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 122–154.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_lattice_iff (A B : ℤ) (x y : S) (h : Relation A B x y)
    (N : ℕ) (hy : y^(N+1)=0) (hx : y^2 ∣ x) (z : S) :
    z ∈ lattice x y N ↔ ∃ f : MvPolynomial (Fin 2) ℤ, evaluate x y f=z := by
  constructor
  · intro hz
    induction hz using Submodule.span_induction with
    | mem z hz =>
      obtain ⟨k,rfl⟩ := hz
      refine ⟨MvPolynomial.X 0^(k.val/2)*MvPolynomial.X 1^(k.val%2),?_⟩
      simp [evaluate,term]
    | zero => exact ⟨0,map_zero _⟩
    | add z w hz hw ihz ihw =>
      obtain ⟨f,hf⟩ := ihz
      obtain ⟨g,hg⟩ := ihw
      exact ⟨f+g,by rw [map_add,hf,hg]⟩
    | smul a z hz ih =>
      obtain ⟨f,hf⟩ := ih
      refine ⟨MvPolynomial.C a*f,?_⟩
      rw [map_mul]
      change (a : S)*evaluate x y f=a • z
      rw [hf,zsmul_eq_mul]
  · rintro ⟨f,rfl⟩
    induction f using MvPolynomial.induction_on with
    | C a =>
      simpa [evaluate,zsmul_eq_mul] using
        (lattice x y N).smul_mem a (even_mem x y N hy hx 0)
    | add f g hf hg => simpa using (lattice x y N).add_mem hf hg
    | mul_X f i hf =>
      fin_cases i
      · simpa [evaluate,mul_comm] using x_mul_mem x y N hy hx _ hf
      · simpa [evaluate,mul_comm] using y_mul_mem A B x y h N hy hx _ hf

/-- Integer powers of the original parameter belong to the image lattice. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/AlgebraicGeometry/EllipticCurve/WeierstrassIntegralImage.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/AlgebraicGeometry/EllipticCurve/WeierstrassIntegralImage.lean#L122).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `09c1279803b705e13d4da51c9981f8ab3f149677` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
