# isBoundedUnder_le_finset_sup'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d1de936a-7160-b5b9-6492-04d92b836b35",
  "kind": "theorem",
  "lexical_name": "isBoundedUnder_le_finset_sup'",
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
  "slug": "isboundedunder-le-finset-sup--21dd6a0d23d5b254af9291f9",
  "source": {
    "blob": "a0632c7969cafd48efce9bb8f5bcd6e44b36284f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 490,
    "line": 479,
    "path": "GRWTSK/Topology/GeneralTopology/IsBounded/Variant38666f7346e1209e24521fe28c3634a1ffafc2ed5aae39c2fbfeb3c79e7a46fb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:21dd6a0d23d5b254af9291f9a55b7c7348077ed8200144f7be7dd26e585f3d86",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/IsBounded/Variant38666f7346e1209e24521fe28c3634a1ffafc2ed5aae39c2fbfeb3c79e7a46fb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d1de936a-7160-b5b9-6492-04d92b836b35`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 479–490.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isBoundedUnder_le_finset_sup' [LinearOrder β] [Nonempty β] {f : Filter α} {F : ι → α → β}
    {s : Finset ι} (hs : s.Nonempty) (h : ∀ i ∈ s, f.IsBoundedUnder (· ≤ ·) (F i)) :
    f.IsBoundedUnder (· ≤ ·) (fun a ↦ sup' s hs (fun i ↦ F i a)) := by
  choose! m hm using h
  use sup' s hs m
  simp only [eventually_map] at hm ⊢
  rw [← eventually_all_finset s] at hm
  refine hm.mono fun a h ↦ ?_
  simp only [sup'_le_iff]
  exact fun i i_s ↦ le_trans (h i i_s) (le_sup' m i_s)

@[to_dual isCoboundedUnder_ge_finset_inf']
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/IsBounded/Variant38666f7346e1209e24521fe28c3634a1ffafc2ed5aae39c2fbfeb3c79e7a46fb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/IsBounded/Variant38666f7346e1209e24521fe28c3634a1ffafc2ed5aae39c2fbfeb3c79e7a46fb.lean#L479).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a0632c7969cafd48efce9bb8f5bcd6e44b36284f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
