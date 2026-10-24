# vanishingIdeal_range_comap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8595a4eca910e154d0983fef668e2cc977aa1a0a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 927,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f4/f400ec04ef7cbe468ce7109ba581b2abb13a163bc23361388d6c3e4846b2426d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:fd676ab3-5aa3-f154-6fff-1533017a996f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f3b87dec-ddd9-115a-8123-5b249280345e",
  "kind": "lemma",
  "lexical_name": "vanishingIdeal_range_comap",
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
  "slug": "vanishingideal-range-comap--38ee943f0a205dda5127b0a5",
  "source": {
    "blob": "8595a4eca910e154d0983fef668e2cc977aa1a0a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 934,
    "line": 927,
    "path": "GRWTSK/Topology/GeneralTopology/Topology/Variantf400ec04ef7cbe468ce7109ba581b2abb13a163bc23361388d6c3e4846b2426d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:38ee943f0a205dda5127b0a5033279d672c28d29acb9d63c35334db430179368",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Topology/Variantf400ec04ef7cbe468ce7109ba581b2abb13a163bc23361388d6c3e4846b2426d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f3b87dec-ddd9-115a-8123-5b249280345e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 927–934.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma vanishingIdeal_range_comap :
    vanishingIdeal (Set.range (comap f)) = (RingHom.ker f).radical := by
  ext x
  rw [RingHom.ker_eq_comap_bot, ← Ideal.comap_radical, Ideal.radical_eq_sInf]
  simp only [mem_vanishingIdeal, Set.mem_range, forall_exists_index, forall_apply_eq_imp_iff,
    comap_asIdeal, Ideal.mem_comap, bot_le, true_and, Submodule.mem_sInf, Set.mem_ofPred_eq]
  exact ⟨fun H I hI ↦ H ⟨I, hI⟩, fun H I ↦ H I.1 I.2⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Topology/Variantf400ec04ef7cbe468ce7109ba581b2abb13a163bc23361388d6c3e4846b2426d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Topology/Variantf400ec04ef7cbe468ce7109ba581b2abb13a163bc23361388d6c3e4846b2426d.lean#L927).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8595a4eca910e154d0983fef668e2cc977aa1a0a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
