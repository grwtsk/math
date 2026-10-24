# dual_bijective_iff_bijective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1adc2ef6-208d-04ee-1641-5169f402564f",
  "kind": "lemma",
  "lexical_name": "dual_bijective_iff_bijective",
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
  "slug": "dual-bijective-iff-bijective--9049a586dca8813330faea9a",
  "source": {
    "blob": "d4fc52d25a4057454f1040b7a583cf5ae839bd9d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 267,
    "line": 262,
    "path": "GRWTSK/Algebra/LinearAlgebra/CharacterModule/Variante148e89eb6adef2b5e9ebb493b7bfda480a0c1da74186835b94a8295a140b124.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9049a586dca8813330faea9a9faf549c1bb56aad3c13fe04a04d759c9b27e7b3",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/CharacterModule/Variante148e89eb6adef2b5e9ebb493b7bfda480a0c1da74186835b94a8295a140b124.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1adc2ef6-208d-04ee-1641-5169f402564f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 262–267.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma dual_bijective_iff_bijective {f : A →ₗ[R] A'} :
    Function.Bijective (dual f) ↔ Function.Bijective f :=
  ⟨fun h ↦ ⟨dual_surjective_iff_injective.mp h.2, dual_injective_iff_surjective.mp h.1⟩,
  fun h ↦ ⟨dual_injective_iff_surjective.mpr h.2, dual_surjective_iff_injective.mpr h.1⟩⟩

end CharacterModule
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/CharacterModule/Variante148e89eb6adef2b5e9ebb493b7bfda480a0c1da74186835b94a8295a140b124.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/CharacterModule/Variante148e89eb6adef2b5e9ebb493b7bfda480a0c1da74186835b94a8295a140b124.lean#L262).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d4fc52d25a4057454f1040b7a583cf5ae839bd9d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
