# limsup_sub_const

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4dc69167b8b51091fd109d35c49d559c2852b729",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 214,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/24/2473cec76d45267fed32154ae389f3a58b6ffbba66047d596724113b324b05c5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5a651b69-f308-26d7-1c3b-56fadf6e6200",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5f4eb145-694d-5a58-41cf-1b8b174cd5de",
  "kind": "lemma",
  "lexical_name": "limsup_sub_const",
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
  "slug": "limsup-sub-const--8e5ac831427c2e00ce803ad0",
  "source": {
    "blob": "4dc69167b8b51091fd109d35c49d559c2852b729",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 231,
    "line": 214,
    "path": "GRWTSK/Topology/GeneralTopology/LiminfLimsup/Variant2473cec76d45267fed32154ae389f3a58b6ffbba66047d596724113b324b05c5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8e5ac831427c2e00ce803ad00643c7faf20c2c9dcad3567345332f7b3b87dc32",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/LiminfLimsup/Variant2473cec76d45267fed32154ae389f3a58b6ffbba66047d596724113b324b05c5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5f4eb145-694d-5a58-41cf-1b8b174cd5de`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 214–231.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma limsup_sub_const (F : Filter ι) [AddCommSemigroup R] [Sub R] [ContinuousSub R] [OrderedSub R]
    (f : ι → R) (c : R)
    (bdd_above : F.IsBoundedUnder (· ≤ ·) f) (cobdd : F.IsCoboundedUnder (· ≤ ·) f) :
    Filter.limsup (fun i ↦ f i - c) F = Filter.limsup f F - c := by
  rcases F.eq_or_neBot with rfl | _
  · have {a : R} : sInf Set.univ ≤ a := by
      apply csInf_le _ (Set.mem_univ a)
      simp only [IsCoboundedUnder, IsCobounded, map_bot, eventually_bot, true_implies] at cobdd
      rcases cobdd with ⟨x, hx⟩
      refine ⟨x, mem_lowerBounds.2 fun y ↦ ?_⟩
      simp only [Set.mem_univ, hx y, implies_true]
    simp only [limsup, limsSup, map_bot, eventually_bot, Set.ofPred_true]
    exact this.antisymm (tsub_le_iff_right.2 this)
  · apply (Monotone.map_limsSup_of_continuousAt (F := F.map f) (f := fun (x : R) ↦ x - c) _ _).symm
    · exact fun _ _ h ↦ tsub_le_tsub_right h c
    · exact (continuous_sub_right c).continuousAt

/-- `liminf (c - xᵢ) = c - limsup xᵢ`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LiminfLimsup/Variant2473cec76d45267fed32154ae389f3a58b6ffbba66047d596724113b324b05c5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LiminfLimsup/Variant2473cec76d45267fed32154ae389f3a58b6ffbba66047d596724113b324b05c5.lean#L214).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4dc69167b8b51091fd109d35c49d559c2852b729` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
