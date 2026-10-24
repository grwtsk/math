# boundaryWeights_mutate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f3fba40e-ccd8-ed33-ad78-ab7a836c8e4f",
  "kind": "theorem",
  "lexical_name": "boundaryWeights_mutate",
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
  "slug": "boundaryweights-mutate--6d3a0c4c2f405ef0a1093cdd",
  "source": {
    "blob": "ab6e49c343feab7454fd0849f7aa0ce24f68f6f0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 169,
    "line": 152,
    "path": "GRWTSK/Algebra/LinearAlgebra/ModularBoundary/Variante4e01b88d285723d067b908eab9783f662b42f72f73bc348eb827e42e0c34a78.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6d3a0c4c2f405ef0a1093cdde96a9ff6c82e84a431e1e1799e2f379eea7dc8f4",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/ModularBoundary/Variante4e01b88d285723d067b908eab9783f662b42f72f73bc348eb827e42e0c34a78.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f3fba40e-ccd8-ed33-ad78-ab7a836c8e4f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 152–169.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem boundaryWeights_mutate (d : ℝ) (hd : 0 ≤ d) :
    Braid.mutate (boundaryWeights d) = ⟨d, 1, 1⟩ := by
  have hs : 1 + d ≠ 0 := by linarith
  have he := boundaryWeights_sum d hd
  apply Braid.Weights.ext
  · change (boundaryWeights d).b * (boundaryWeights d).c /
      ((boundaryWeights d).a + (boundaryWeights d).c) = d
    rw [he]
    dsimp [boundaryWeights]
    field_simp [hs]
  · exact he
  · change (boundaryWeights d).a * (boundaryWeights d).b /
      ((boundaryWeights d).a + (boundaryWeights d).c) = 1
    rw [he]
    dsimp [boundaryWeights]
    field_simp [hs]

/-- This boundary is reversible; a general nonnegative extension is not asserted. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/ModularBoundary/Variante4e01b88d285723d067b908eab9783f662b42f72f73bc348eb827e42e0c34a78.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/ModularBoundary/Variante4e01b88d285723d067b908eab9783f662b42f72f73bc348eb827e42e0c34a78.lean#L152).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ab6e49c343feab7454fd0849f7aa0ce24f68f6f0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
