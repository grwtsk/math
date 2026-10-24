# translation_order_two

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c969105c-d3c3-6e59-d0a5-27eebe403ba1",
  "kind": "theorem",
  "lexical_name": "translation_order_two",
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
  "slug": "translation-order-two--e2557ff518c8d0d3a789dd20",
  "source": {
    "blob": "35f12936acc41ffc6043bd288e8f06f0724ef2bf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 199,
    "line": 191,
    "path": "GRWTSK/Algebra/GroupTheory/BasicGroupTheory/FiniteBooleanStructure/Variantec14e8913e14ac2b/XorTranslationEmbedding.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e2557ff518c8d0d3a789dd20509f457043838020cac7c10e3e2d6a5eeaf46688",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/BasicGroupTheory/FiniteBooleanStructure/Variantec14e8913e14ac2b/XorTranslationEmbedding.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c969105c-d3c3-6e59-d0a5-27eebe403ba1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 191–199.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem translation_order_two {n : Nat} (δ : XorGroup n) :
    translationHom δ * translationHom δ = 1 := by
  rw [← map_mul]
  have hself : δ * δ = (1 : XorGroup n) := by
    apply XorGroup.toBits.injective
    simp [XorGroup.mul_toBits]
  rw [hself, map_one]

end BitMatrix.Algebra.Symmetry
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/Algebra/GroupTheory/BasicGroupTheory/FiniteBooleanStructure/Variantec14e8913e14ac2b/XorTranslationEmbedding.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/BasicGroupTheory/FiniteBooleanStructure/Variantec14e8913e14ac2b/XorTranslationEmbedding.lean#L191).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `35f12936acc41ffc6043bd288e8f06f0724ef2bf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
