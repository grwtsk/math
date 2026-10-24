# apply_bucket_with_proof

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:43dbcc36-9935-b586-b2c9-7f6ac282df82",
  "kind": "theorem",
  "lexical_name": "apply_bucket_with_proof",
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
  "slug": "apply-bucket-with-proof--af84967888d4a5571f94d6ae",
  "source": {
    "blob": "d94f298e36674840a00580338c5a67133982a1b4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 195,
    "line": 180,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Model/Variant648473f8fe1c324e604e6e51922527fe93ad03daa1697418277b64744ebcf6f2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:af84967888d4a5571f94d6aec4842b4ba871f52781d21952da1208e556efa628",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Model/Variant648473f8fe1c324e604e6e51922527fe93ad03daa1697418277b64744ebcf6f2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:43dbcc36-9935-b586-b2c9-7f6ac282df82`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 180–195.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem apply_bucket_with_proof {γ : α → Type w} [BEq α] [Hashable α] [PartialEquivBEq α]
    [LawfulHashable α] {m : Raw₀ α β} (hm : Raw.WFImp m.1) (a : α)
    (f : (a : α) → (l : AssocList α β) → l.contains a → γ a)
    (g : (a : α) → (l : List ((a : α) × β a)) → containsKey a l → γ a)
    (hfg : ∀ {a l h}, f a l h = g a l.toList (AssocList.contains_eq.symm.trans h))
    (hg₁ : ∀ {l l' a h}, DistinctKeys l → (hl' : Perm l l') →
      g a l h = g a l' ((List.containsKey_of_perm hl').symm.trans h)) {h h'}
    (hg₂ : ∀ {l l' a h}, (hl' : containsKey a l' = false) →
      g a (l ++ l') h = g a l ((List.containsKey_append_of_not_contains_right hl').symm.trans h)) :
    f a (bucket m.1.buckets m.2 a) h = g a (toListModel m.1.buckets) h' := by
  obtain ⟨l, hl, hlk⟩ := exists_bucket m.1.buckets m.2 a
  refine Eq.trans ?_ (hg₁ hm.distinct hl).symm
  rw [hfg, hg₂]
  exact hlk hm.buckets_hash_self _ rfl

/-- This is the general theorem to show that modification operations are correct. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Model/Variant648473f8fe1c324e604e6e51922527fe93ad03daa1697418277b64744ebcf6f2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Model/Variant648473f8fe1c324e604e6e51922527fe93ad03daa1697418277b64744ebcf6f2.lean#L180).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d94f298e36674840a00580338c5a67133982a1b4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
