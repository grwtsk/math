# iSup_add_one_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "fc6f0b37989fdd50f3202495010a2e0fadfc400b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 47,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2d/2dcbe50f8da681c3552a87b50de2cf3db0602294c3868529db04e08ad1ac7eea.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c3c55b41-828f-8c09-40de-934ec4a3e4a5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:84087701-8377-eadb-bd39-73b60b55476c",
  "kind": "theorem",
  "lexical_name": "iSup_add_one_eq",
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
  "slug": "isup-add-one-eq--09c370679acb1141c3104e6e",
  "source": {
    "blob": "fc6f0b37989fdd50f3202495010a2e0fadfc400b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 56,
    "line": 47,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/FundamentalSequence/Variant2dcbe50f8da681c3552a87b50de2cf3db0602294c3868529db04e08ad1ac7eea.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:09c370679acb1141c3104e6e710275a17ca9886e52ac07b42e6e93156fc28071",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/FundamentalSequence/Variant2dcbe50f8da681c3552a87b50de2cf3db0602294c3868529db04e08ad1ac7eea.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:84087701-8377-eadb-bd39-73b60b55476c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 47–56.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem iSup_add_one_eq (hf : IsFundamentalSeq f) : ⨆ i, (f i).1 + 1 = o := by
  apply le_antisymm
  · simp_rw [Ordinal.iSup_le_iff, add_one_le_iff]
    exact fun i ↦ (f i).2
  · refine le_of_forall_lt fun b hb ↦ ?_
    obtain ⟨_, ⟨c, rfl⟩, hc : b ≤ _⟩ := hf.isCofinal_range ⟨b, hb⟩
    apply hc.trans_lt
    rw [← add_one_le_iff]
    apply Ordinal.le_iSup

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/FundamentalSequence/Variant2dcbe50f8da681c3552a87b50de2cf3db0602294c3868529db04e08ad1ac7eea.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/FundamentalSequence/Variant2dcbe50f8da681c3552a87b50de2cf3db0602294c3868529db04e08ad1ac7eea.lean#L47).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fc6f0b37989fdd50f3202495010a2e0fadfc400b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
