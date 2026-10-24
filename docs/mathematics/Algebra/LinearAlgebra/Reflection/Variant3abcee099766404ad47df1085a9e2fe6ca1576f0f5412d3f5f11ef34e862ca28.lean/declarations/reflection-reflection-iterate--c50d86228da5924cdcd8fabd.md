# reflection_reflection_iterate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c332c9b8-9c33-a236-f9e5-d8e0d82332f4",
  "kind": "lemma",
  "lexical_name": "reflection_reflection_iterate",
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
  "slug": "reflection-reflection-iterate--c50d86228da5924cdcd8fabd",
  "source": {
    "blob": "884c32c24663e523356ed851a8747163a98cb019",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 427,
    "line": 413,
    "path": "GRWTSK/Algebra/LinearAlgebra/Reflection/Variant3abcee099766404ad47df1085a9e2fe6ca1576f0f5412d3f5f11ef34e862ca28.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c50d86228da5924cdcd8fabd2997652231731e5bc5c315062d0f44133628a340",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Reflection/Variant3abcee099766404ad47df1085a9e2fe6ca1576f0f5412d3f5f11ef34e862ca28.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c332c9b8-9c33-a236-f9e5-d8e0d82332f4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 413–427.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma reflection_reflection_iterate
    (hfx : f x = 2) (hgy : g y = 2) (hgxfy : f y * g x = 4) (n : ℕ) :
    ((reflection hgy).trans (reflection hfx))^[n] y = y + n • (f y • x - (2 : R) • y) := by
  induction n with
  | zero => simp
  | succ n ih =>
    have hz : ∀ z : M, f y • g x • z = 2 • 2 • z := by
      intro z
      rw [smul_smul, hgxfy, smul_smul, ← Nat.cast_smul_eq_nsmul R (2 * 2), show 2 * 2 = 4 from rfl,
        Nat.cast_ofNat]
    simp only [iterate_succ', comp_apply, ih, two_smul, smul_sub, smul_add, map_add,
      LinearEquiv.trans_apply, reflection_apply_self, map_neg, reflection_apply, neg_sub, map_sub,
      map_nsmul, map_smul, smul_neg, hz, add_smul]
    abel

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Reflection/Variant3abcee099766404ad47df1085a9e2fe6ca1576f0f5412d3f5f11ef34e862ca28.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Reflection/Variant3abcee099766404ad47df1085a9e2fe6ca1576f0f5412d3f5f11ef34e862ca28.lean#L413).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `884c32c24663e523356ed851a8747163a98cb019` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
