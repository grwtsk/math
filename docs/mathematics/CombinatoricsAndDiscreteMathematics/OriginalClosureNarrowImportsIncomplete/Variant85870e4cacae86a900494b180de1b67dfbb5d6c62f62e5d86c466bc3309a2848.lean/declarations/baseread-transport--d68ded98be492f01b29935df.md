# baseRead_transport

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:af7cdb6b-f562-ff8e-0767-877cd9afb69e",
  "kind": "theorem",
  "lexical_name": "baseRead_transport",
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
  "slug": "baseread-transport--d68ded98be492f01b29935df",
  "source": {
    "blob": "5514d29223fb16c1232d1bbca664d511f492ba3b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 12067,
    "line": 12033,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OriginalClosureNarrowImportsIncomplete/Variant85870e4cacae86a900494b180de1b67dfbb5d6c62f62e5d86c466bc3309a2848.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d68ded98be492f01b29935dfb5635224a52d4e30591f06ffa90aab8f8f0de2c0",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OriginalClosureNarrowImportsIncomplete/Variant85870e4cacae86a900494b180de1b67dfbb5d6c62f62e5d86c466bc3309a2848.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:af7cdb6b-f562-ff8e-0767-877cd9afb69e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 12033–12067.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
 theorem baseRead_transport {Γ : List (Expr S)} {M N T : Expr S}
    (ht : HasType P Γ M T) (t' : TypingTree P Γ N T)
    (e : Environment (hw := hw) Ω C hno Γ)
    (hMN : (M.subst e.images).normalForm = (N.subst e.images).normalForm)
    (hne : Neutral M → Neutral N)
    (v : ActiveLayer P C (Ω.profile (T.subst e.images).normalForm) →
      Value (hw := hw) Ω C hno (T.subst e.images).normalForm) (G : Prop)
    (hr : baseGood Ω C M T e.images G)
    (hv : ∀ ha, G → ValGood Ω C t' e.images ∧ (v ha).val = ((preEvaluate Ω C hno t' e).val ha).val) :
    ReadGood Ω C t' e.images ∧ (PreResult.baseRead ht v).val = (preEvaluate Ω C hno t' e).read.val := by
  by_cases hm : Ω.profile (M.subst e.images).normalForm ∈ C
  · have hm' : Ω.profile (N.subst e.images).normalForm ∈ C := hMN ▸ hm
    obtain ⟨s,hs,hsC,hval,hn⟩ := hr (by simpa only [Ω.profile_normalForm] using hm)
    subst T
    by_cases ha : ActiveLayer P C (Ω.profile (Expr.sort s |>.subst e.images).normalForm)
    · have hvg := hv ha (hval (by simpa only [Ω.profile_normalForm] using ha))
      refine ⟨(readGood_active_iff Ω C t' (by simpa only [Ω.profile_normalForm] using hm') hsC
        (by simpa only [Ω.profile_normalForm] using ha)).mpr hvg.1,?_⟩
      refine Eq.trans (PreResult.baseRead_eq ht v hm hsC ha)
        (Eq.trans ?_ (preEvaluate_read_base Ω C hno t' e hm' hsC ha).symm)
      rw [hvg.2]
      exact congrArg (fun X : ActualType Ω =>
        ((RawValue.base Ω C hno ((preEvaluate Ω C hno t' e).val ha).val) X).val) (Subtype.ext hMN)
    · have hn' := hne (hn (by simpa only [Ω.profile_normalForm] using ha))
      refine ⟨neutral_readGood Ω C t' hn' e.images hsC (by simpa only [Expr.subst,Ω.profile_sort,Ω.profile_normalForm] using ha),?_⟩
      have hex : ∃ s', Expr.sort s = Expr.sort s' ∧ ({s'} : Set S) ∈ C := ⟨s,rfl,hsC⟩
      rw [preEvaluate_neutral_read_inactive Ω C hno t' e hn' ha]
      simp only [PreResult.baseRead,dite_eq_left hm,dite_eq_left hex,dite_eq_right ha]
      exact congrArg (Candidates.Top Ω) hMN
  · have hm' : Ω.profile (N.subst e.images).normalForm ∉ C := hMN ▸ hm
    refine ⟨readGood_outside Ω C t' e.images (by simpa only [Ω.profile_normalForm] using hm'),?_⟩
    rw [preEvaluate_read_outside Ω C hno t' e hm']
    simp only [PreResult.baseRead,dite_eq_right hm]
    exact congrArg (Candidates.Top Ω) hMN

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/OriginalClosureNarrowImportsIncomplete/Variant85870e4cacae86a900494b180de1b67dfbb5d6c62f62e5d86c466bc3309a2848.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OriginalClosureNarrowImportsIncomplete/Variant85870e4cacae86a900494b180de1b67dfbb5d6c62f62e5d86c466bc3309a2848.lean#L12033).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5514d29223fb16c1232d1bbca664d511f492ba3b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
