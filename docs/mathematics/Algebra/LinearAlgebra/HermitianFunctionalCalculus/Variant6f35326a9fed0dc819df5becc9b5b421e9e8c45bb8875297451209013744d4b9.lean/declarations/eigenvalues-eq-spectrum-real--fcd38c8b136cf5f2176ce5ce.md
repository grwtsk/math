# eigenvalues_eq_spectrum_real

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "101d7073a58591399f144748468a4680342d9798",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 52,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6f/6f35326a9fed0dc819df5becc9b5b421e9e8c45bb8875297451209013744d4b9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2459bd98-87c9-a45b-709b-9c45b9751de0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7a3d3182-89f2-20ef-086e-b397d5de17c6",
  "kind": "theorem",
  "lexical_name": "eigenvalues_eq_spectrum_real",
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
  "slug": "eigenvalues-eq-spectrum-real--fcd38c8b136cf5f2176ce5ce",
  "source": {
    "blob": "101d7073a58591399f144748468a4680342d9798",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 62,
    "line": 52,
    "path": "GRWTSK/Algebra/LinearAlgebra/HermitianFunctionalCalculus/Variant6f35326a9fed0dc819df5becc9b5b421e9e8c45bb8875297451209013744d4b9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fcd38c8b136cf5f2176ce5ce05c48f1b1b51d9a032860ac8a16f487a2d6b8cf3",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/HermitianFunctionalCalculus/Variant6f35326a9fed0dc819df5becc9b5b421e9e8c45bb8875297451209013744d4b9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7a3d3182-89f2-20ef-086e-b397d5de17c6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 52–62.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eigenvalues_eq_spectrum_real {a : Matrix n n 𝕜} (ha : IsHermitian a) :
    spectrum ℝ a = Set.range (ha.eigenvalues) := by
  ext x
  conv_lhs => rw [ha.spectral_theorem, unitary.spectrum.unitary_conjugate,
  ← spectrum.algebraMap_mem_iff 𝕜, spectrum_diagonal, RCLike.algebraMap_eq_ofReal]
  simp

/-- The star algebra homomorphism underlying the instance of the continuous functional
calculus of a Hermitian matrix. This is an auxiliary definition and is not intended
for use outside of this file. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/HermitianFunctionalCalculus/Variant6f35326a9fed0dc819df5becc9b5b421e9e8c45bb8875297451209013744d4b9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/HermitianFunctionalCalculus/Variant6f35326a9fed0dc819df5becc9b5b421e9e8c45bb8875297451209013744d4b9.lean#L52).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `101d7073a58591399f144748468a4680342d9798` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
