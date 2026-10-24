# minor_rescale

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "df50a21a6590f9f16ccad85807556007ee25d4da",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 105,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f1/f16affc9bbbce81ecea408d3644be55b78cbcc5f1bc7f87fd07ea41015f4df9c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3e02c37a-c83e-32a4-42b4-9337f75c2c2c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:eb0348d0-befc-fd6d-44fb-d58f0e07adf7",
  "kind": "theorem",
  "lexical_name": "minor_rescale",
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
  "slug": "minor-rescale--bdb287c0ea61ff0ce36f88e9",
  "source": {
    "blob": "df50a21a6590f9f16ccad85807556007ee25d4da",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 124,
    "line": 105,
    "path": "GRWTSK/Algebra/LinearAlgebra/Toeplitz/Variantf16affc9bbbce81ecea408d3644be55b78cbcc5f1bc7f87fd07ea41015f4df9c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bdb287c0ea61ff0ce36f88e9d9564a865356768cf2ea1fc869b36f2f7495039a",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Toeplitz/Variantf16affc9bbbce81ecea408d3644be55b78cbcc5f1bc7f87fd07ea41015f4df9c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:eb0348d0-befc-fd6d-44fb-d58f0e07adf7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 105–124.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem minor_rescale (a : ℕ → ℝ) (q : ℝ) (hq : q ≠ 0)
    {k : ℕ} (r c : Fin k → ℕ) :
    minor (rescale q a) r c =
      ((∏ i, (q ^ r i)⁻¹) * (∏ j, q ^ c j)) * minor a r c := by
  let A : Matrix (Fin k) (Fin k) ℝ := fun i j => entry a (r i) (c j)
  let B : Matrix (Fin k) (Fin k) ℝ := fun i j => q ^ c j * A i j
  have hB : B.det = (∏ j, q ^ c j) * A.det := Matrix.det_mul_row _ A
  have hA : minor (rescale q a) r c = (∏ i, (q ^ r i)⁻¹) * B.det := by
    calc
      minor (rescale q a) r c =
          (Matrix.of (fun i j => (q ^ r i)⁻¹ * B i j)).det := by
        unfold minor
        apply congrArg Matrix.det
        funext i j
        exact entry_rescale a q hq (r i) (c j)
      _ = _ := Matrix.det_mul_column _ B
  rw [hA, hB]
  exact (mul_assoc _ _ _).symm

/-- Positive phase/unit normalization preserves AND reflects every minor's sign. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Toeplitz/Variantf16affc9bbbce81ecea408d3644be55b78cbcc5f1bc7f87fd07ea41015f4df9c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Toeplitz/Variantf16affc9bbbce81ecea408d3644be55b78cbcc5f1bc7f87fd07ea41015f4df9c.lean#L105).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `df50a21a6590f9f16ccad85807556007ee25d4da` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
