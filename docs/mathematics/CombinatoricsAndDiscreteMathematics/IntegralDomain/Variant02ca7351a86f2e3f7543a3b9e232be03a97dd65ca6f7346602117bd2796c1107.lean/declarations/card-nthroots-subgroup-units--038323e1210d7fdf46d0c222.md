# card_nthRoots_subgroup_units

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "dab793a51b446a47f1e20f77b103db770df84a5a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 122,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/02/02ca7351a86f2e3f7543a3b9e232be03a97dd65ca6f7346602117bd2796c1107.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9f140e45-3b08-2230-3548-f283923e90e3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d3454b97-c646-61ee-4c56-fe8845b321b1",
  "kind": "theorem",
  "lexical_name": "card_nthRoots_subgroup_units",
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
  "slug": "card-nthroots-subgroup-units--038323e1210d7fdf46d0c222",
  "source": {
    "blob": "dab793a51b446a47f1e20f77b103db770df84a5a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 136,
    "line": 122,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/IntegralDomain/Variant02ca7351a86f2e3f7543a3b9e232be03a97dd65ca6f7346602117bd2796c1107.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:038323e1210d7fdf46d0c2225b77cc70670bf819b6b1b951c0335db53e3db6e1",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/IntegralDomain/Variant02ca7351a86f2e3f7543a3b9e232be03a97dd65ca6f7346602117bd2796c1107.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d3454b97-c646-61ee-4c56-fe8845b321b1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 122–136.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem card_nthRoots_subgroup_units [Fintype G] [DecidableEq G] (f : G →* R) (hf : Injective f)
  {n : ℕ} (hn : 0 < n) (g₀ : G) :
    Finset.card (Finset.univ.filter (fun g ↦ g^n = g₀)) ≤ Multiset.card (nthRoots n (f g₀)) := by
  haveI : DecidableEq R := Classical.decEq _
  refine' le_trans _ (nthRoots n (f g₀)).toFinset_card_le
  apply card_le_card_of_inj_on f
  · intro g hg
    rw [mem_filter] at hg
    rw [Multiset.mem_toFinset, mem_nthRoots hn, ← f.map_pow, hg.2]
  · intros
    apply hf
    assumption
#align card_nth_roots_subgroup_units card_nthRoots_subgroup_units

/-- A finite subgroup of the unit group of an integral domain is cyclic. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/IntegralDomain/Variant02ca7351a86f2e3f7543a3b9e232be03a97dd65ca6f7346602117bd2796c1107.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/IntegralDomain/Variant02ca7351a86f2e3f7543a3b9e232be03a97dd65ca6f7346602117bd2796c1107.lean#L122).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dab793a51b446a47f1e20f77b103db770df84a5a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
