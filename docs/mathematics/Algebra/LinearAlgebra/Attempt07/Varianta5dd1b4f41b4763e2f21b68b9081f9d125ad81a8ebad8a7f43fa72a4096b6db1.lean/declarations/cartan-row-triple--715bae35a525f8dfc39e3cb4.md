# cartan_row_triple

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7310cd87-6cc9-24cd-0ae8-e5ad3119f518",
  "kind": "theorem",
  "lexical_name": "cartan_row_triple",
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
  "slug": "cartan-row-triple--715bae35a525f8dfc39e3cb4",
  "source": {
    "blob": "20d6b3813eb20e962e6cce92dac2652c6ac15472",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 174,
    "line": 161,
    "path": "GRWTSK/Algebra/LinearAlgebra/Attempt07/Varianta5dd1b4f41b4763e2f21b68b9081f9d125ad81a8ebad8a7f43fa72a4096b6db1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:715bae35a525f8dfc39e3cb4881c117a8d82eb4f3a8fa13152de4237aa788a30",
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

Occurrence: `result:7310cd87-6cc9-24cd-0ae8-e5ad3119f518`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 161–174.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cartan_row_triple {n : ℕ} (A : Matrix (Fin n) (Fin n) ℤ)
    (i j : Fin n) (hne : i ≠ j) (hij : A i j = 1) (hji : A j i = 1) :
    (single i i (1 : ℤ) * cartanMatrix A) * (single j j 1 * cartanMatrix A) *
      (single i i 1 * cartanMatrix A) = single i i 1 * cartanMatrix A := by
  have hcij : cartanMatrix A i j = -1 := by
    simp [cartanMatrix, Matrix.ofNat_apply, hne, hij]
  have hcji : cartanMatrix A j i = -1 := by
    simp [cartanMatrix, Matrix.ofNat_apply, Ne.symm hne, hji]
  simp only [← Matrix.mul_assoc]
  rw [single_mul_mul_single, single_mul_mul_single, hcij, hcji]
  norm_num

/-- Adjacent simply-laced reflections satisfy the Coxeter three-term braid law.
This is a reflection quotient identity, not faithfulness of an Artin representation. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Attempt07/Varianta5dd1b4f41b4763e2f21b68b9081f9d125ad81a8ebad8a7f43fa72a4096b6db1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Attempt07/Varianta5dd1b4f41b4763e2f21b68b9081f9d125ad81a8ebad8a7f43fa72a4096b6db1.lean#L161).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `20d6b3813eb20e962e6cce92dac2652c6ac15472` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
