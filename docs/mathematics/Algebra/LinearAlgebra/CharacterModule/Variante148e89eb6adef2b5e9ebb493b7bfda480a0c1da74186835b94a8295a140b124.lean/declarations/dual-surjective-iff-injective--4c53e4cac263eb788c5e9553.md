# dual_surjective_iff_injective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bf127c8c-0c1b-0306-02cf-cbab5f7b2f52",
  "kind": "lemma",
  "lexical_name": "dual_surjective_iff_injective",
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
  "slug": "dual-surjective-iff-injective--4c53e4cac263eb788c5e9553",
  "source": {
    "blob": "d4fc52d25a4057454f1040b7a583cf5ae839bd9d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 242,
    "line": 237,
    "path": "GRWTSK/Algebra/LinearAlgebra/CharacterModule/Variante148e89eb6adef2b5e9ebb493b7bfda480a0c1da74186835b94a8295a140b124.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4c53e4cac263eb788c5e9553a7c074c80f3b6392c86632d779d67d77a7396746",
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

Occurrence: `result:bf127c8c-0c1b-0306-02cf-cbab5f7b2f52`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 237–242.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma dual_surjective_iff_injective {f : A →ₗ[R] A'} :
    Function.Surjective (dual f) ↔ Function.Injective f :=
  ⟨fun h ↦ (injective_iff_map_eq_zero _).2 fun a h0 ↦ eq_zero_of_character_apply fun c ↦ by
    obtain ⟨c, rfl⟩ := h c; exact congr(c $h0).trans c.map_zero,
  dual_surjective_of_injective f⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/CharacterModule/Variante148e89eb6adef2b5e9ebb493b7bfda480a0c1da74186835b94a8295a140b124.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/CharacterModule/Variante148e89eb6adef2b5e9ebb493b7bfda480a0c1da74186835b94a8295a140b124.lean#L237).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d4fc52d25a4057454f1040b7a583cf5ae839bd9d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
