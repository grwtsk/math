# evaluation_offDiagonal_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:24977200-186f-96c4-ac2a-cf9fbb24bbf9",
  "kind": "theorem",
  "lexical_name": "evaluation_offDiagonal_zero",
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
  "slug": "evaluation-offdiagonal-zero--9e1898ec6a94ed2df7540019",
  "source": {
    "blob": "b59ccd41eab0807d8f739789c4d50d56e583b0d5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 118,
    "line": 94,
    "path": "GRWTSK/AlgebraicGeometry/Hodge/CMGaloisEigenlines.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9e1898ec6a94ed2df7540019e5ffa6356adb41a2258b9025ab68af6255917222",
  "verification": {
    "reference": "docs/verification/AlgebraicGeometry/Hodge/CMGaloisEigenlines.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:24977200-186f-96c4-ac2a-cf9fbb24bbf9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 94–118.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem evaluation_offDiagonal_zero
    (j i : Fin n) (hij : i ≠ j)
    {t : E ⊗[k] E}
    (ht : t ∈ embeddingEigenspace (k := k) (embeddingCharacter k E j)) :
    evaluation k E t i = 0 := by
  rw [mem_embeddingEigenspace_iff] at ht
  by_contra hzero
  have hchar : ∀ a : E, galIndexEquiv k E i a = galIndexEquiv k E j a := by
    intro a
    have he := congrArg
      (fun u : E ⊗[k] E => evaluation k E u i) (ht a)
    have he' :
        galIndexEquiv k E i a * evaluation k E t i =
          galIndexEquiv k E j a * evaluation k E t i := by
      simpa [evaluation_regularAction, embeddingCharacter, Pi.smul_apply,
        smul_eq_mul] using he
    exact mul_right_cancel₀ hzero he'
  have heq : galIndexEquiv k E i = galIndexEquiv k E j := by
    apply AlgEquiv.ext
    intro a
    exact hchar a
  exact hij ((galIndexEquiv k E).injective heq)

/-- Evaluation of an embedding eigenvector lies in the corresponding
coordinate line. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/AlgebraicGeometry/Hodge/CMGaloisEigenlines.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/AlgebraicGeometry/Hodge/CMGaloisEigenlines.lean#L94).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b59ccd41eab0807d8f739789c4d50d56e583b0d5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
