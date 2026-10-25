# advance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:65cf5d80-a50f-41b1-645c-275f52f8d40b",
  "kind": "theorem",
  "lexical_name": "advance",
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
  "slug": "advance--ce5a2ae6ae2fee8a823bd2f0",
  "source": {
    "blob": "68baae488ecd98ceb41720aa3fd546b20530119f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 343,
    "line": 312,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Components/Variant644d97dbe49446a00680c0b313db4b3715467897a385a9fbb64bb7e52fb570c8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ce5a2ae6ae2fee8a823bd2f0d9f98cd66cfcd1f1e5cb40a9195b24a00c85a623",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Components/Variant644d97dbe49446a00680c0b313db4b3715467897a385a9fbb64bb7e52fb570c8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:65cf5d80-a50f-41b1-645c-275f52f8d40b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 312–343.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem advance {T : Expr S} (hT : ActualType Ω T) (hC : Ω.profile T ∈ C) :
    Ground Ω T = Top Ω T := by
  apply Set.Subset.antisymm ground_le_top
  intro h hh
  rcases hT with ⟨hN,s,ks,ht⟩ | ⟨s,rfl⟩
  · refine ⟨hh.1,?_⟩
    intro ns hstack
    obtain ⟨kn,hs⟩ := hstack.common_stage
    obtain ⟨kh,hhT⟩ := hh.1
    let k := max ks (max kn kh)
    have hkT : ks ≤ k := le_max_left _ _
    have hkN : kn ≤ k := le_trans (le_max_left _ _) (le_max_right _ _)
    have hkH : kh ≤ k := le_trans (le_max_right _ _) (le_max_right _ _)
    have ht' := Ω.at_mono ht hkT
    have hh' := Ω.at_mono hhT hkH
    obtain ⟨e,he⟩ := J.inhabit (.var ∘ Expr.reverseIndex k) (.identity k)
    have hr := (J.sn_fundamental H (hh.2.reverseIndex k) _ _ hh' e
      (J.identity_admissible he)).1
    rw [J.identity_actual he] at hr
    exact J.run_stack H he (hs.mono hkN) ht' hN (.inr hC) h hr
  · rwa [sort_ground_eq_top]

end ComponentInterface
end

universe u v
open Candidates

namespace Beta
variable {S : Type u}
open Classical in
/-- Renaming cannot create a redex, and every renamed step has an exact source. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Components/Variant644d97dbe49446a00680c0b313db4b3715467897a385a9fbb64bb7e52fb570c8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Components/Variant644d97dbe49446a00680c0b313db4b3715467897a385a9fbb64bb7e52fb570c8.lean#L312).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `68baae488ecd98ceb41720aa3fd546b20530119f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
