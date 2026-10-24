# normalized_eq_of_frameRowSpace_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1df81141-8141-4a1e-3765-6328b3b98416",
  "kind": "theorem",
  "lexical_name": "normalized_eq_of_frameRowSpace_eq",
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
  "slug": "normalized-eq-of-framerowspace-eq--6e62e1041b1df389b8a3667c",
  "source": {
    "blob": "02e65aa6a444d1c9812daf74a50541da0cf65dfa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 177,
    "line": 157,
    "path": "GRWTSK/Algebra/LinearAlgebra/PivotNormalization/Variante7652af53457978c4fe48a813e3631010eaf9a046e25a3c9ec36413d7a361d11.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6e62e1041b1df389b8a3667cd35d9475d1671e80faef59d0a12c16d08f563178",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/PivotNormalization/Variante7652af53457978c4fe48a813e3631010eaf9a046e25a3c9ec36413d7a361d11.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1df81141-8141-4a1e-3765-6328b3b98416`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 157–177.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem normalized_eq_of_frameRowSpace_eq (A B : Matrix (Fin k) (Fin n) ℝ)
    (c : Fin k → Fin n) (hA : columnSubmatrix A c = 1)
    (hB : columnSubmatrix B c = 1) (h : frameRowSpace A = frameRowSpace B) : A = B := by
  apply Matrix.ext
  intro i j
  have hm : A.row i ∈ frameRowSpace B := by
    rw [← h]
    exact row_mem_frameRowSpace A i
  obtain ⟨u, hu⟩ := (mem_frameRowSpace_iff B (A.row i)).mp hm
  have hr := congrArg (fun v : Fin n → ℝ => fun l => v (c l)) hu
  rw [normalized_coefficients_readback B c hB u] at hr
  have hrow : (fun l => A.row i (c l)) = (1 : Matrix (Fin k) (Fin k) ℝ) i :=
    congrFun hA i
  have huid : u = (1 : Matrix (Fin k) (Fin k) ℝ) i := hr.trans hrow
  have hv : u ᵥ* B = B.row i := by
    rw [huid]
    change (1 * B) i = B i
    rw [Matrix.one_mul]
  exact congrFun (hu.symm.trans hv) j

/-- Equality of constructed normal forms recognizes equality of actual row spaces. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/PivotNormalization/Variante7652af53457978c4fe48a813e3631010eaf9a046e25a3c9ec36413d7a361d11.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/PivotNormalization/Variante7652af53457978c4fe48a813e3631010eaf9a046e25a3c9ec36413d7a361d11.lean#L157).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `02e65aa6a444d1c9812daf74a50541da0cf65dfa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
