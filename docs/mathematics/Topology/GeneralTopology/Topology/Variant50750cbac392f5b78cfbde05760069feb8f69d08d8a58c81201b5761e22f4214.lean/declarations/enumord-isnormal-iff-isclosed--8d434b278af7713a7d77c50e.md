# enumOrd_isNormal_iff_isClosed

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c94df9812d0aa9472f246d518a938f3b94ebd2bf",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 205,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/50/50750cbac392f5b78cfbde05760069feb8f69d08d8a58c81201b5761e22f4214.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:28116ff5-318d-5743-efc4-b2fe053a54a3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7c9617b1-285a-3330-0a17-3eb6c6f87f20",
  "kind": "theorem",
  "lexical_name": "enumOrd_isNormal_iff_isClosed",
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
  "slug": "enumord-isnormal-iff-isclosed--8d434b278af7713a7d77c50e",
  "source": {
    "blob": "c94df9812d0aa9472f246d518a938f3b94ebd2bf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 235,
    "line": 205,
    "path": "GRWTSK/Topology/GeneralTopology/Topology/Variant50750cbac392f5b78cfbde05760069feb8f69d08d8a58c81201b5761e22f4214.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8d434b278af7713a7d77c50e437ddd82041b8ce76dfb9ab3f641e606cdcf71d2",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Topology/Variant50750cbac392f5b78cfbde05760069feb8f69d08d8a58c81201b5761e22f4214.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7c9617b1-285a-3330-0a17-3eb6c6f87f20`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 205–235.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem enumOrd_isNormal_iff_isClosed (hs : ¬ BddAbove s) :
    IsNormal (enumOrd s) ↔ IsClosed s := by
  have Hs := enumOrd_strictMono hs
  refine
    ⟨fun h => isClosed_iff_iSup.2 fun {ι} hι f hf => ?_, fun h =>
      (isNormal_iff_strictMono_limit _).2 ⟨Hs, fun a ha o H => ?_⟩⟩
  · let g : ι → Ordinal.{u} := fun i => (enumOrdOrderIso s hs).symm ⟨_, hf i⟩
    suffices enumOrd s (⨆ i, g i) = ⨆ i, f i by
      rw [← this]
      exact enumOrd_mem hs _
    rw [IsNormal.map_iSup h g]
    congr
    ext x
    change (enumOrdOrderIso s hs _).val = f x
    rw [OrderIso.apply_symm_apply]
  · rw [isClosed_iff_bsup] at h
    suffices enumOrd s a ≤ bsup.{u, u} a fun b (_ : b < a) => enumOrd s b from
      this.trans (bsup_le H)
    obtain ⟨b, hb⟩ := enumOrd_surjective hs (h ha.ne_zero (fun b _ => enumOrd s b)
      fun b _ => enumOrd_mem hs b)
    rw [← hb]
    apply Hs.monotone
    by_contra! hba
    apply (Hs (lt_succ b)).not_le
    rw [hb]
    exact le_bsup.{u, u} _ _ (ha.succ_lt hba)

open Set Filter Set.Notation

/-- An ordinal is an accumulation point of a set of ordinals if it is positive and there
are elements in the set arbitrarily close to the ordinal from below. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Topology/Variant50750cbac392f5b78cfbde05760069feb8f69d08d8a58c81201b5761e22f4214.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Topology/Variant50750cbac392f5b78cfbde05760069feb8f69d08d8a58c81201b5761e22f4214.lean#L205).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c94df9812d0aa9472f246d518a938f3b94ebd2bf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
