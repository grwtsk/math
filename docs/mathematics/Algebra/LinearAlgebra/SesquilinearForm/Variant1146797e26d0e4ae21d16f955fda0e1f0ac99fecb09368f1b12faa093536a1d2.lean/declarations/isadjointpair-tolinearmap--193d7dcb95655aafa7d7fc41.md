# isAdjointPair_toLinearMap₂'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ffc39f43-60e0-936d-3b42-bd6469175f20",
  "kind": "theorem",
  "lexical_name": "isAdjointPair_toLinearMap₂'",
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
  "slug": "isadjointpair-tolinearmap--193d7dcb95655aafa7d7fc41",
  "source": {
    "blob": "42bae6dc806fc117d684dd10ca0235f0250a36f6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 590,
    "line": 574,
    "path": "GRWTSK/Algebra/LinearAlgebra/SesquilinearForm/Variant1146797e26d0e4ae21d16f955fda0e1f0ac99fecb09368f1b12faa093536a1d2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:193d7dcb95655aafa7d7fc4188bc2c6e273a41d822d890765fd1c387688253c1",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/SesquilinearForm/Variant1146797e26d0e4ae21d16f955fda0e1f0ac99fecb09368f1b12faa093536a1d2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ffc39f43-60e0-936d-3b42-bd6469175f20`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 574–590.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isAdjointPair_toLinearMap₂' :
    LinearMap.IsAdjointPair (Matrix.toLinearMap₂' R J) (Matrix.toLinearMap₂' R J')
        (Matrix.toLin' A) (Matrix.toLin' A') ↔
      Matrix.IsAdjointPair J J' A A' := by
  rw [isAdjointPair_iff_comp_eq_compl₂]
  have h :
    ∀ B B' : (n → R) →ₗ[R] (n' → R) →ₗ[R] R,
      B = B' ↔ LinearMap.toMatrix₂' R B = LinearMap.toMatrix₂' R B' := by
    intro B B'
    constructor <;> intro h
    · rw [h]
    · exact (LinearMap.toMatrix₂' R).injective h
  simp_rw [h, LinearMap.toMatrix₂'_comp, LinearMap.toMatrix₂'_compl₂,
    LinearMap.toMatrix'_toLin', LinearMap.toMatrix'_toLinearMap₂']
  rfl

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/SesquilinearForm/Variant1146797e26d0e4ae21d16f955fda0e1f0ac99fecb09368f1b12faa093536a1d2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/SesquilinearForm/Variant1146797e26d0e4ae21d16f955fda0e1f0ac99fecb09368f1b12faa093536a1d2.lean#L574).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `42bae6dc806fc117d684dd10ca0235f0250a36f6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
