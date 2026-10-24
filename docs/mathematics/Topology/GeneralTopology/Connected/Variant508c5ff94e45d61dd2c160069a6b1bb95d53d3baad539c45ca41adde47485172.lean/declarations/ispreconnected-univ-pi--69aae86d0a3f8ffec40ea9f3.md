# isPreconnected_univ_pi

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "cb42d9e9235f9b07a8c938b2ed90b94b6875cd43",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 481,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/50/508c5ff94e45d61dd2c160069a6b1bb95d53d3baad539c45ca41adde47485172.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:25edfb2a-20f2-69a3-d0c6-b16efad45869",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:98bc6ff6-9140-2da8-8671-656d6d2cbed9",
  "kind": "theorem",
  "lexical_name": "isPreconnected_univ_pi",
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
  "slug": "ispreconnected-univ-pi--69aae86d0a3f8ffec40ea9f3",
  "source": {
    "blob": "cb42d9e9235f9b07a8c938b2ed90b94b6875cd43",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 504,
    "line": 481,
    "path": "GRWTSK/Topology/GeneralTopology/Connected/Variant508c5ff94e45d61dd2c160069a6b1bb95d53d3baad539c45ca41adde47485172.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:69aae86d0a3f8ffec40ea9f3ceee053b7a658e2cac2d35f5dcc17f190b15abd5",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Connected/Variant508c5ff94e45d61dd2c160069a6b1bb95d53d3baad539c45ca41adde47485172.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:98bc6ff6-9140-2da8-8671-656d6d2cbed9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 481–504.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isPreconnected_univ_pi [∀ i, TopologicalSpace (π i)] {s : ∀ i, Set (π i)}
    (hs : ∀ i, IsPreconnected (s i)) : IsPreconnected (pi univ s) := by
  rintro u v uo vo hsuv ⟨f, hfs, hfu⟩ ⟨g, hgs, hgv⟩
  rcases exists_finset_piecewise_mem_of_mem_nhds (uo.mem_nhds hfu) g with ⟨I, hI⟩
  induction' I using Finset.induction_on with i I _ ihI
  · refine' ⟨g, hgs, ⟨_, hgv⟩⟩
    simpa using hI
  · rw [Finset.piecewise_insert] at hI
    have := I.piecewise_mem_set_pi hfs hgs
    refine' (hsuv this).elim ihI fun h => _
    set S := update (I.piecewise f g) i '' s i
    have hsub : S ⊆ pi univ s := by
      refine' image_subset_iff.2 fun z hz => _
      rwa [update_preimage_univ_pi]
      exact fun j _ => this j trivial
    have hconn : IsPreconnected S :=
      (hs i).image _ (continuous_const.update i continuous_id).continuousOn
    have hSu : (S ∩ u).Nonempty := ⟨_, mem_image_of_mem _ (hfs _ trivial), hI⟩
    have hSv : (S ∩ v).Nonempty := ⟨_, ⟨_, this _ trivial, update_eq_self _ _⟩, h⟩
    refine' (hconn u v uo vo (hsub.trans hsuv) hSu hSv).mono _
    exact inter_subset_inter_left _ hsub
#align is_preconnected_univ_pi isPreconnected_univ_pi

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Connected/Variant508c5ff94e45d61dd2c160069a6b1bb95d53d3baad539c45ca41adde47485172.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Connected/Variant508c5ff94e45d61dd2c160069a6b1bb95d53d3baad539c45ca41adde47485172.lean#L481).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cb42d9e9235f9b07a8c938b2ed90b94b6875cd43` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
