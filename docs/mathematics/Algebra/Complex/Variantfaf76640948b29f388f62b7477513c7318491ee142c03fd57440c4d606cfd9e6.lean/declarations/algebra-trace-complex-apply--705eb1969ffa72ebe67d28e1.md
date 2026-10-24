# Algebra.trace_complex_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8153cbdc4e18c6a16871bfa2e5595ded3f226793",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 28,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/fa/faf76640948b29f388f62b7477513c7318491ee142c03fd57440c4d606cfd9e6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7dc3427b-ef2e-36f2-18fe-0b5deee1db56",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ac45935b-2053-957a-7d8d-d3bd7050b8ee",
  "kind": "theorem",
  "lexical_name": "Algebra.trace_complex_apply",
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
  "slug": "algebra-trace-complex-apply--705eb1969ffa72ebe67d28e1",
  "source": {
    "blob": "8153cbdc4e18c6a16871bfa2e5595ded3f226793",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 32,
    "line": 28,
    "path": "GRWTSK/Algebra/Complex/Variantfaf76640948b29f388f62b7477513c7318491ee142c03fd57440c4d606cfd9e6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:705eb1969ffa72ebe67d28e1248cc8b03c04f79807e9a70f484dae04c39fc5f3",
  "verification": {
    "reference": "docs/verification/Algebra/Complex/Variantfaf76640948b29f388f62b7477513c7318491ee142c03fd57440c4d606cfd9e6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ac45935b-2053-957a-7d8d-d3bd7050b8ee`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 28–32.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Algebra.trace_complex_apply (z : ℂ) : Algebra.trace ℝ ℂ z = 2 * z.re := by
  rw [Algebra.trace_eq_matrix_trace Complex.basisOneI, Algebra.leftMulMatrix_complex,
    Matrix.trace_fin_two]
  exact (two_mul _).symm

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Complex/Variantfaf76640948b29f388f62b7477513c7318491ee142c03fd57440c4d606cfd9e6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Complex/Variantfaf76640948b29f388f62b7477513c7318491ee142c03fd57440c4d606cfd9e6.lean#L28).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8153cbdc4e18c6a16871bfa2e5595ded3f226793` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
