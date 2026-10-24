# compatible_provenanceMatrix_isSymm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f0fc5d5e-9b1f-5689-8c52-e599c3c3f1af",
  "kind": "theorem",
  "lexical_name": "compatible_provenanceMatrix_isSymm",
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
  "slug": "compatible-provenancematrix-issymm--c2a880b4a230656241e9349d",
  "source": {
    "blob": "9892c39604d5573f041efa8ba22cd996d84e3c71",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 89,
    "line": 71,
    "path": "GRWTSK/Algebra/LinearAlgebra/ProvenanceRange/Variant4bb29aa6ff17de0e3bb5f2547d61b34cc7551c55fff5f078c22a1d8f12b7f4ba.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c2a880b4a230656241e9349d69fa3db74121d67d2f7f2a9e47709ff7c4c85ce9",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/ProvenanceRange/Variant4bb29aa6ff17de0e3bb5f2547d61b34cc7551c55fff5f078c22a1d8f12b7f4ba.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f0fc5d5e-9b1f-5689-8c52-e599c3c3f1af`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 71–89.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem compatible_provenanceMatrix_isSymm
    (G : PositiveForm ((ι → ℝ) × (κ → ℝ)))
    (A : Matrix ι ι ℝ)
    (hA : ∀ p q,
      G.form (provenanceInclusion p) (provenanceInclusion q) =
        p ⬝ᵥ A.mulVec q) :
    A.IsSymm := by
  apply Matrix.IsSymm.ext
  intro i j
  let ei : ι → ℝ := Pi.single i 1
  let ej : ι → ℝ := Pi.single j 1
  have hsymm :=
    G.symmetric (provenanceInclusion ei) (provenanceInclusion ej)
  rw [hA, hA] at hsymm
  simp [ei, ej, Matrix.mulVec_single_one] at hsymm
  exact hsymm.symm

/-- Positive block geometry forces every cross-block vector to lie in the range
of the provenance block. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/ProvenanceRange/Variant4bb29aa6ff17de0e3bb5f2547d61b34cc7551c55fff5f078c22a1d8f12b7f4ba.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/ProvenanceRange/Variant4bb29aa6ff17de0e3bb5f2547d61b34cc7551c55fff5f078c22a1d8f12b7f4ba.lean#L71).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9892c39604d5573f041efa8ba22cd996d84e3c71` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
