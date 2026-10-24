# damping_bounds

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bf85f888-144a-30d9-8980-ac70f92e02dc",
  "kind": "theorem",
  "lexical_name": "damping_bounds",
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
  "slug": "damping-bounds--1606adb3d660e06858369ef2",
  "source": {
    "blob": "09e87816ad684c28029ec675c7a048556801d873",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 71,
    "line": 58,
    "path": "GRWTSK/LinearAlgebra/Matrix/FiniteAdjointDescent.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1606adb3d660e06858369ef249f0c5842dc8bfec6c6861770bd7038204345fc8",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/MatrixTheory/FiniteAdjointDescent.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bf85f888-144a-30d9-8980-ac70f92e02dc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 58–71.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem damping_bounds (s : Finset κ) (t : Finset ι) (A : ι → κ → ℝ) :
    0 < damping s t A ∧ damping s t A ≤ 1 ∧
      damping s t A ^ 2 * frobenius s t A ≤ damping s t A := by
  have hB : 0 ≤ frobenius s t A := Finset.sum_nonneg (fun _ _ => Finset.sum_nonneg (fun _ _ => sq_nonneg _))
  have hd : 0 < 1 + frobenius s t A := by linarith
  have hp : 0 < damping s t A := div_pos (by norm_num) hd
  have he : damping s t A * (1 + frobenius s t A) = 1 := by
    unfold damping
    field_simp
  have hle : damping s t A ≤ 1 := by nlinarith [mul_nonneg hp.le hB]
  have hprod : damping s t A * frobenius s t A ≤ 1 := by nlinarith
  have hsq := mul_le_mul_of_nonneg_left hprod hp.le
  exact ⟨hp, hle, by nlinarith only [hsq]⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/MatrixTheory/FiniteAdjointDescent.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/LinearAlgebra/Matrix/FiniteAdjointDescent.lean#L58).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `09e87816ad684c28029ec675c7a048556801d873` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
