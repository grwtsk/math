# trichotomy

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7289e2f8-c657-ca22-f68d-804b87a0d9ae",
  "kind": "theorem",
  "lexical_name": "trichotomy",
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
  "slug": "trichotomy--dc704e79b88344c88bcdee47",
  "source": {
    "blob": "fb1a85629a9958306a476a1bcc053e1db528ce27",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 633,
    "line": 616,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant4e868fd1555245c262478bb4cc6ef1ea240aa1af0b483a896dc3b470dba0aa4c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dc704e79b88344c88bcdee47dba820c6b58cd60474852fa513fb1fd7c0f61f49",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant4e868fd1555245c262478bb4cc6ef1ea240aa1af0b483a896dc3b470dba0aa4c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7289e2f8-c657-ca22-f68d-804b87a0d9ae`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 616–633.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem trichotomy (f : CauSeq α abs) : Pos f ∨ LimZero f ∨ Pos (-f) := by
  rcases Classical.em (LimZero f) with h | h <;> simp [*]
  rcases abv_pos_of_not_limZero h with ⟨K, K0, hK⟩
  rcases exists_forall_ge_and hK (f.cauchy₃ K0) with ⟨i, hi⟩
  refine (le_total 0 (f i)).imp ?_ ?_ <;>
    refine fun h => ⟨K, K0, i, fun j ij => ?_⟩ <;>
    have := (hi _ ij).1 <;>
    obtain ⟨h₁, h₂⟩ := hi _ le_rfl
  · rwa [abs_of_nonneg] at this
    rw [abs_of_nonneg h] at h₁
    exact
      (le_add_iff_nonneg_right _).1
        (le_trans h₁ <| neg_le_sub_iff_le_add'.1 <| le_of_lt (abs_lt.1 <| h₂ _ ij).1)
  · rwa [abs_of_nonpos] at this
    rw [abs_of_nonpos h] at h₁
    rw [← sub_le_sub_iff_right, zero_sub]
    exact le_trans (le_of_lt (abs_lt.1 <| h₂ _ ij).2) h₁

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant4e868fd1555245c262478bb4cc6ef1ea240aa1af0b483a896dc3b470dba0aa4c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant4e868fd1555245c262478bb4cc6ef1ea240aa1af0b483a896dc3b470dba0aa4c.lean#L616).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fb1a85629a9958306a476a1bcc053e1db528ce27` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
