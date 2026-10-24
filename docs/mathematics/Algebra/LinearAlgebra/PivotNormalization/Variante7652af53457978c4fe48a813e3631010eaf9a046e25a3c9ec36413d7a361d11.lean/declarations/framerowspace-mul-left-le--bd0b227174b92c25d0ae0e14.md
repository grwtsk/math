# frameRowSpace_mul_left_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:788a0311-85e2-5abc-1208-5a04b090702c",
  "kind": "theorem",
  "lexical_name": "frameRowSpace_mul_left_le",
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
  "slug": "framerowspace-mul-left-le--bd0b227174b92c25d0ae0e14",
  "source": {
    "blob": "02e65aa6a444d1c9812daf74a50541da0cf65dfa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 57,
    "line": 48,
    "path": "GRWTSK/Algebra/LinearAlgebra/PivotNormalization/Variante7652af53457978c4fe48a813e3631010eaf9a046e25a3c9ec36413d7a361d11.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bd0b227174b92c25d0ae0e14fbc4c118719210748c1a4bff25fa54d7f24d2bd8",
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

Occurrence: `result:788a0311-85e2-5abc-1208-5a04b090702c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 48–57.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem frameRowSpace_mul_left_le (B : Matrix (Fin k) (Fin k) ℝ)
    (A : Matrix (Fin k) (Fin n) ℝ) : frameRowSpace (B * A) ≤ frameRowSpace A := by
  intro v hv
  obtain ⟨u, hu⟩ := (mem_frameRowSpace_iff (B * A) v).mp hv
  apply (mem_frameRowSpace_iff A v).mpr
  refine ⟨u ᵥ* B, ?_⟩
  rw [Matrix.vecMul_vecMul]
  exact hu

/-- An invertible row change preserves the actual row subspace. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/PivotNormalization/Variante7652af53457978c4fe48a813e3631010eaf9a046e25a3c9ec36413d7a361d11.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/PivotNormalization/Variante7652af53457978c4fe48a813e3631010eaf9a046e25a3c9ec36413d7a361d11.lean#L48).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `02e65aa6a444d1c9812daf74a50541da0cf65dfa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
