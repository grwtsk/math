# cartan_row_square

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4f9c95ac-2ab3-c7f9-819b-0709772facfb",
  "kind": "theorem",
  "lexical_name": "cartan_row_square",
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
  "slug": "cartan-row-square--2ed6c505f75bf446f0b5b41c",
  "source": {
    "blob": "20d6b3813eb20e962e6cce92dac2652c6ac15472",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 160,
    "line": 148,
    "path": "GRWTSK/Algebra/LinearAlgebra/Attempt07/Varianta5dd1b4f41b4763e2f21b68b9081f9d125ad81a8ebad8a7f43fa72a4096b6db1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2ed6c505f75bf446f0b5b41caadb6b87b5c0fd20d657c6b5cfa65a3e87e80e7d",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Attempt07/Varianta5dd1b4f41b4763e2f21b68b9081f9d125ad81a8ebad8a7f43fa72a4096b6db1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4f9c95ac-2ab3-c7f9-819b-0709772facfb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 148–160.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cartan_row_square {n : ℕ} (A : Matrix (Fin n) (Fin n) ℤ)
    (hzero : ∀ i, A i i = 0) (i : Fin n) :
    (single i i (1 : ℤ) * cartanMatrix A) * (single i i 1 * cartanMatrix A) =
      single i i 1 * cartanMatrix A + single i i 1 * cartanMatrix A := by
  rw [← Matrix.mul_assoc, single_mul_mul_single]
  have hii : cartanMatrix A i i = 2 := by
    simp [cartanMatrix, hzero, Matrix.ofNat_apply]
  rw [hii]
  norm_num only [one_mul, mul_one]
  rw [← add_mul, ← single_add]
  norm_num

/-- The adjacent rank-one triple contracts because both Cartan entries are minus one. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Attempt07/Varianta5dd1b4f41b4763e2f21b68b9081f9d125ad81a8ebad8a7f43fa72a4096b6db1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Attempt07/Varianta5dd1b4f41b4763e2f21b68b9081f9d125ad81a8ebad8a7f43fa72a4096b6db1.lean#L148).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `20d6b3813eb20e962e6cce92dac2652c6ac15472` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
