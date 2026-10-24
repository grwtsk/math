# perfect_image_finset_intersection

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5e58b9bdf0e960862417a47fc0bb013cdf16e29d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 32,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/59/59494672645b057178153c09b7662af7c352019673224cdca02f95da6c9a4d30.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:998fd24a-ef99-a055-6511-345992d54af9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f2cc9e11-a22b-5dde-dcaa-55fa51b047a1",
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
  "slug": "perfect-image-finset-intersection--84cc013ac04f20ff2364f962",
  "source": {
    "blob": "5e58b9bdf0e960862417a47fc0bb013cdf16e29d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 53,
    "line": 32,
    "path": "GRWTSK/Algebra/GroupTheory/PerfectImageIntersection/Variant59494672645b057178153c09b7662af7c352019673224cdca02f95da6c9a4d30.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:84cc013ac04f20ff2364f9624f06d62914cf0c0642ce980a35b8d22721b63588",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/PerfectImageIntersection/Variant59494672645b057178153c09b7662af7c352019673224cdca02f95da6c9a4d30.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f2cc9e11-a22b-5dde-dcaa-55fa51b047a1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 32–53.

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

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/PerfectImageIntersection/Variant59494672645b057178153c09b7662af7c352019673224cdca02f95da6c9a4d30.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/PerfectImageIntersection/Variant59494672645b057178153c09b7662af7c352019673224cdca02f95da6c9a4d30.lean#L32).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5e58b9bdf0e960862417a47fc0bb013cdf16e29d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
