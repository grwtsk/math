# exists_unique_greatest_maximizer_of_attained

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4bb08d44-ef55-78e1-7ca8-d099f78205b2",
  "kind": "theorem",
  "lexical_name": "exists_unique_greatest_maximizer_of_attained",
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
  "slug": "exists-unique-greatest-maximizer-of-attained--ef66ca471b7c359ae4739997",
  "source": {
    "blob": "604ee4e1fd6651b2b7ad0065ff0d4aed24f828b2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 81,
    "line": 60,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/D429b98523c875ffe65c5c048f40a68619fb6eed79ec0d3e3819ed79dafba8f9Candidate/Variant65249539a6dfbda433420dc1fa356c93708bc1d5a042145ecefbbd9104db5a7a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ef66ca471b7c359ae473999734078bb9e21905086676c214dfd0bc2ea57a010e",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/D429b98523c875ffe65c5c048f40a68619fb6eed79ec0d3e3819ed79dafba8f9Candidate/Variant65249539a6dfbda433420dc1fa356c93708bc1d5a042145ecefbbd9104db5a7a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4bb08d44-ef55-78e1-7ca8-d099f78205b2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 60–81.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_unique_greatest_maximizer_of_attained
    {f : α → ℝ} (hf : Supermodular f)
    (hfinite : {x | IsMaximizer f x}.Finite)
    (hattained : ∃ x, IsMaximizer f x) :
    ∃! g, IsGreatest {x | IsMaximizer f x} g := by
  classical
  let s := hfinite.toFinset
  have hs : s.Nonempty := by
    obtain ⟨x, hx⟩ := hattained
    exact ⟨x, hfinite.mem_toFinset.mpr hx⟩
  let g := s.sup' hs id
  have hg : IsGreatest {x | IsMaximizer f x} g := by
    constructor
    · exact Finset.sup'_induction hs id
        (fun x hx y hy => (maximizers_inf_sup hf hx hy).2)
        (fun x hx => hfinite.mem_toFinset.mp hx)
    · intro x hx
      exact Finset.le_sup' id (hfinite.mem_toFinset.mpr hx)
  exact ⟨g, hg, fun y hy => hy.unique hg⟩

/-- A nonempty finite lattice supplies both attainment and a finite maximizer
set; no numerical upper bound on the attained defect is asserted. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/D429b98523c875ffe65c5c048f40a68619fb6eed79ec0d3e3819ed79dafba8f9Candidate/Variant65249539a6dfbda433420dc1fa356c93708bc1d5a042145ecefbbd9104db5a7a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/D429b98523c875ffe65c5c048f40a68619fb6eed79ec0d3e3819ed79dafba8f9Candidate/Variant65249539a6dfbda433420dc1fa356c93708bc1d5a042145ecefbbd9104db5a7a.lean#L60).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `604ee4e1fd6651b2b7ad0065ff0d4aed24f828b2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
