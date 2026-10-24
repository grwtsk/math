# exists_lt_notMem_of_disjoint

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b47ee8c2c45d657154d32505e8286e543cb650c5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 48,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2a/2ac61e213499dd2052e6ef98d6db4796325683bb8bd5f660d31757cc38c77f30.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:62458c2b-dca0-ca9a-a288-a3d8f77fad14",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:81cfce0c-b3b1-7687-8dcb-ac1cb25d4460",
  "kind": "lemma",
  "lexical_name": "exists_lt_notMem_of_disjoint",
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
  "slug": "exists-lt-notmem-of-disjoint--182ed58acbc4f485c8c13bda",
  "source": {
    "blob": "b47ee8c2c45d657154d32505e8286e543cb650c5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 57,
    "line": 48,
    "path": "GRWTSK/Topology/GeneralTopology/Omega1Space/Variant2ac61e213499dd2052e6ef98d6db4796325683bb8bd5f660d31757cc38c77f30.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:182ed58acbc4f485c8c13bdaf1aaa88389cca08d301c36d225e09013d275f72a",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Omega1Space/Variant2ac61e213499dd2052e6ef98d6db4796325683bb8bd5f660d31757cc38c77f30.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:81cfce0c-b3b1-7687-8dcb-ac1cb25d4460`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 48–57.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma exists_lt_notMem_of_disjoint {U V : Set (Iic ω₁)} (hV : V ∈ 𝓝 ⊤)
    (hUV : Disjoint U V) (x : Iio ω₁) : ∃ y, x < y ∧ inc y ∉ U := by
  obtain ⟨c, hc, hcV⟩ := nhds_top_basis.mem_iff.mp hV
  obtain ⟨z, hz', hz⟩ := (Cardinal.isSuccLimit_omega 1).lt_iff_nonempty_Ioo.mp
    (max_lt x.2 (Subtype.coe_lt_coe.mpr hc))
  have hcz : c < inc ⟨z, hz⟩ := Subtype.coe_lt_coe.mp ((le_max_right _ _).trans_lt hz')
  exact ⟨⟨z, hz⟩, Subtype.coe_lt_coe.mp ((le_max_left _ _).trans_lt hz'),
    disjoint_right.mp hUV (hcV hcz)⟩

/-- Main theorem: `Iio ω₁ × Iic ω₁` is not normal. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Omega1Space/Variant2ac61e213499dd2052e6ef98d6db4796325683bb8bd5f660d31757cc38c77f30.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Omega1Space/Variant2ac61e213499dd2052e6ef98d6db4796325683bb8bd5f660d31757cc38c77f30.lean#L48).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b47ee8c2c45d657154d32505e8286e543cb650c5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
