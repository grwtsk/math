# card_fixedPoints_modEq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "79e19bebccba0021f3ad3f605a35c86d035fc50f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 373,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5b/5bce23147889d875765216cc8466c766bc03fc0357845757b348965b5e9ccb80.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:21e04f95-22b5-17b2-d594-3d4cb8ead660",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e41e49e6-c546-9043-4bb3-9ad8045f667d",
  "kind": "theorem",
  "lexical_name": "card_fixedPoints_modEq",
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
  "slug": "card-fixedpoints-modeq--ddd9ce629f91fec8a33e797d",
  "source": {
    "blob": "79e19bebccba0021f3ad3f605a35c86d035fc50f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 387,
    "line": 373,
    "path": "GRWTSK/Algebra/GroupTheory/Type/Variant5bce23147889d875765216cc8466c766bc03fc0357845757b348965b5e9ccb80.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ddd9ce629f91fec8a33e797d644361b5317e110ed1303c179863cfee7b71062e",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Type/Variant5bce23147889d875765216cc8466c766bc03fc0357845757b348965b5e9ccb80.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e41e49e6-c546-9043-4bb3-9ad8045f667d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 373–387.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem card_fixedPoints_modEq [DecidableEq α] {f : Function.End α} {p n : ℕ}
    [hp : Fact p.Prime] (hf : f ^ p ^ n = 1) :
    Fintype.card α ≡ Fintype.card f.fixedPoints [MOD p] := by
  let σ : α ≃ α := ⟨f, f ^ (p ^ n - 1),
    leftInverse_iff_comp.mpr ((pow_sub_mul_pow f (Nat.one_le_pow n p hp.out.pos)).trans hf),
    leftInverse_iff_comp.mpr ((pow_mul_pow_sub f (Nat.one_le_pow n p hp.out.pos)).trans hf)⟩
  have hσ : σ ^ p ^ n = 1 := by
    rw [DFunLike.ext'_iff, coe_pow]
    exact (hom_coe_pow (fun g : Function.End α ↦ g) rfl (fun g h ↦ rfl) f (p ^ n)).symm.trans hf
  suffices Fintype.card f.fixedPoints = (support σ)ᶜ.card from
    this ▸ (card_compl_support_modEq hσ).symm
  suffices f.fixedPoints = (support σ)ᶜ by
    simp only [this]; apply Fintype.card_coe
  simp [σ, Set.ext_iff, IsFixedPt]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Type/Variant5bce23147889d875765216cc8466c766bc03fc0357845757b348965b5e9ccb80.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Type/Variant5bce23147889d875765216cc8466c766bc03fc0357845757b348965b5e9ccb80.lean#L373).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `79e19bebccba0021f3ad3f605a35c86d035fc50f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
