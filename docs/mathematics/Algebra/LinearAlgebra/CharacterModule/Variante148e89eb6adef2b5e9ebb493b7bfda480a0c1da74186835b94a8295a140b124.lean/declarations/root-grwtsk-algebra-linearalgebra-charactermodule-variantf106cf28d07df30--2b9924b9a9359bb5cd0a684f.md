# _root_.GRWTSK.Algebra.LinearAlgebra.CharacterModule.Variantf106cf28d07df302cdf5472a5d8577550471840f7a52ebdc83f1e5e0c2939b23.rTensor_injective_iff_lcomp_surjective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:eb64fb93-c029-08df-2e42-94135d3b7efa",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.Algebra.LinearAlgebra.CharacterModule.Variantf106cf28d07df302cdf5472a5d8577550471840f7a52ebdc83f1e5e0c2939b23.rTensor_injective_iff_lcomp_surjective",
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
  "slug": "root-grwtsk-algebra-linearalgebra-charactermodule-variantf106cf28d07df30--2b9924b9a9359bb5cd0a684f",
  "source": {
    "blob": "d4fc52d25a4057454f1040b7a583cf5ae839bd9d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 247,
    "line": 243,
    "path": "GRWTSK/Algebra/LinearAlgebra/CharacterModule/Variante148e89eb6adef2b5e9ebb493b7bfda480a0c1da74186835b94a8295a140b124.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2b9924b9a9359bb5cd0a684f64ad5956cbfde12f18d49548c6f0cb3efe4709ef",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/CharacterModule/Variante148e89eb6adef2b5e9ebb493b7bfda480a0c1da74186835b94a8295a140b124.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:eb64fb93-c029-08df-2e42-94135d3b7efa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 243–247.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.Algebra.LinearAlgebra.CharacterModule.Variantf106cf28d07df302cdf5472a5d8577550471840f7a52ebdc83f1e5e0c2939b23.rTensor_injective_iff_lcomp_surjective {f : A →ₗ[R] A'} :
    Function.Injective (f.rTensor B) ↔ Function.Surjective (f.lcomp R <| CharacterModule B) := by
  simp [← dual_rTensor_conj_homEquiv, dual_surjective_iff_injective]

set_option backward.isDefEq.respectTransparency false in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/CharacterModule/Variante148e89eb6adef2b5e9ebb493b7bfda480a0c1da74186835b94a8295a140b124.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/CharacterModule/Variante148e89eb6adef2b5e9ebb493b7bfda480a0c1da74186835b94a8295a140b124.lean#L243).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d4fc52d25a4057454f1040b7a583cf5ae839bd9d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
