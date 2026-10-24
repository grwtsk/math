# retained_central_storage_lower

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2066e615-d57b-8122-98aa-90696ef4dc78",
  "kind": "theorem",
  "lexical_name": "retained_central_storage_lower",
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
  "slug": "retained-central-storage-lower--fc69cd80f8d185ef316103b2",
  "source": {
    "blob": "1f9c05eca287447d198bdbbfd8afceed9c97c1d9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 87,
    "line": 75,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TriangularNativeGeometry/Variant39bf90364fc5c2b87929a7bf36d82a8ab98d37f753f3ec65e567d99098265281.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fc69cd80f8d185ef316103b297e30e2ddc644ac5eff74640d5148c07d19022b3",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TriangularNativeGeometry/Variant39bf90364fc5c2b87929a7bf36d82a8ab98d37f753f3ec65e567d99098265281.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2066e615-d57b-8122-98aa-90696ef4dc78`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 75–87.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem retained_central_storage_lower {M i : ℕ} (hi : i < M)
    {a : ℝ} (ha : 0 ≤ a) :
    a * M / 2 ≤ storage M a (M ^ 2 + (M + 1) / 2 + i) := by
  have ht : M ≤ 2 * triangle M (M ^ 2 + (M + 1) / 2 + i) := by
    unfold triangle
    omega
  have htr : (M : ℝ) ≤ 2 * triangle M (M ^ 2 + (M + 1) / 2 + i) := by exact_mod_cast ht
  unfold storage
  have h := mul_le_mul_of_nonneg_left htr ha
  linarith

end
end GRWTSK.RiemannHypothesis.Conversation.TriangularNativeGeometry
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TriangularNativeGeometry/Variant39bf90364fc5c2b87929a7bf36d82a8ab98d37f753f3ec65e567d99098265281.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TriangularNativeGeometry/Variant39bf90364fc5c2b87929a7bf36d82a8ab98d37f753f3ec65e567d99098265281.lean#L75).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1f9c05eca287447d198bdbbfd8afceed9c97c1d9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
