# perfect_image_finset_intersection

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:76215cc2-222b-a39b-3a4c-218d72bc4cdf",
  "kind": "theorem",
  "lexical_name": "perfect_image_finset_intersection",
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
  "slug": "perfect-image-finset-intersection--0489e1eae0c47ceff4e3f71a",
  "source": {
    "blob": "c6ae0f07a35bdeaf403d2d960dc8d56901bd4e09",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 61,
    "line": 40,
    "path": "GRWTSK/Algebra/GroupTheory/PerfectImageIntersection/Variant3251894f5eae915cac57fc2c165148ae2e1b7ac8af35aacc35dfde6774f41606.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0489e1eae0c47ceff4e3f71a7664a98cfb7b2921e0aec380cbe2bd77cd1a0bf9",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/PerfectImageIntersection/Variant3251894f5eae915cac57fc2c165148ae2e1b7ac8af35aacc35dfde6774f41606.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:76215cc2-222b-a39b-3a4c-218d72bc4cdf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 40–61.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem perfect_image_finset_intersection {G H ι : Type*} [Group G] [Group H]
    (f : G →* H) (P : Subgroup H) (hP : ⁅P, P⁆ = P)
    (B : ι → Subgroup G) [∀ i, (B i).Normal]
    (s : Finset ι) (hne : s.Nonempty) (hB : ∀ i ∈ s, P ≤ (B i).map f) :
    P ≤ (⨅ i ∈ s, B i).map f := by
  classical
  induction s using Finset.induction_on with
  | empty => simp at hne
  | @insert i s hi ih =>
    by_cases hs : s.Nonempty
    · have hfirst := hB i (Finset.mem_insert_self i s)
      have hrest := ih hs (fun j hj => hB j (Finset.mem_insert_of_mem hj))
      have : (⨅ j ∈ s, B j).Normal :=
        Subgroup.normal_iInf_normal (fun _ => Subgroup.normal_iInf_normal (fun _ => inferInstance))
      simpa only [Finset.iInf_insert] using
        perfect_image_intersection f P hP (B i) (⨅ j ∈ s, B j) hfirst hrest
    · have hs0 : s = ∅ := Finset.not_nonempty_iff_eq_empty.mp hs
      subst s
      simpa using hB i (Finset.mem_insert_self i ∅)

/-- The actual divisor/CRT cyclic source is abelian. Its only perfect subgroup
is trivial, so the nonabelian-inner-image gluing route has no nontrivial packet here. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/PerfectImageIntersection/Variant3251894f5eae915cac57fc2c165148ae2e1b7ac8af35aacc35dfde6774f41606.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/PerfectImageIntersection/Variant3251894f5eae915cac57fc2c165148ae2e1b7ac8af35aacc35dfde6774f41606.lean#L40).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c6ae0f07a35bdeaf403d2d960dc8d56901bd4e09` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
