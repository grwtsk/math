# tendsto_ite

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "bd81ffb1f715715691664137e04ce637cf678dbd",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 45,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/12/128997a2aff4d9f6c99996728cf4a82d7fbf47d7f43131fa64efc5621d09764f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:fbe4db07-ba25-5ffb-40f8-36e99bef5334",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:85505908-b572-ee93-f697-7b9130c6c244",
  "kind": "lemma",
  "lexical_name": "tendsto_ite",
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
  "slug": "tendsto-ite--0642d6a972b1d62e41cb4a90",
  "source": {
    "blob": "bd81ffb1f715715691664137e04ce637cf678dbd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 73,
    "line": 45,
    "path": "GRWTSK/Topology/GeneralTopology/IndicatorConstPointwise/Variant128997a2aff4d9f6c99996728cf4a82d7fbf47d7f43131fa64efc5621d09764f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0642d6a972b1d62e41cb4a9003acbc557452e0c19af0768b1b2e5137b0e40563",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/IndicatorConstPointwise/Variant128997a2aff4d9f6c99996728cf4a82d7fbf47d7f43131fa64efc5621d09764f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:85505908-b572-ee93-f697-7b9130c6c244`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 45–73.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma tendsto_ite {β : Type*} {p : ι → Prop} [DecidablePred p] {q : Prop} [Decidable q]
    {a b : β} {F G : Filter β}
    (haG : {a}ᶜ ∈ G) (hbF : {b}ᶜ ∈ F) (haF : principal {a} ≤ F) (hbG : principal {b} ≤ G) :
    Tendsto (fun i ↦ if p i then a else b) L (if q then F else G) ↔ ∀ᶠ i in L, p i ↔ q := by
  constructor <;> intro h
  · by_cases hq : q
    · simp only [hq, ite_true] at h
      filter_upwards [mem_map.mp (h hbF)] with i hi
      simp only [Set.preimage_compl, Set.mem_compl_iff, Set.mem_preimage, Set.mem_singleton_iff,
        ite_eq_right_iff, not_forall, exists_prop] at hi
      tauto
    · simp only [hq, ite_false] at h
      filter_upwards [mem_map.mp (h haG)] with i hi
      simp only [Set.preimage_compl, Set.mem_compl_iff, Set.mem_preimage, Set.mem_singleton_iff,
        ite_eq_left_iff, not_forall, exists_prop] at hi
      tauto
  · have obs : (fun _ ↦ if q then a else b) =ᶠ[L] (fun i ↦ if p i then a else b) := by
      filter_upwards [h] with i hi
      simp only [hi]
    apply Tendsto.congr' obs
    by_cases hq : q
    · simp only [hq, ite_true]
      apply le_trans _ haF
      simp
    · simp only [hq, ite_false]
      apply le_trans _ hbG
      simp only [principal_singleton, le_pure_iff, mem_map, Set.mem_singleton_iff,
        Set.preimage_const_of_mem, univ_mem]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/IndicatorConstPointwise/Variant128997a2aff4d9f6c99996728cf4a82d7fbf47d7f43131fa64efc5621d09764f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/IndicatorConstPointwise/Variant128997a2aff4d9f6c99996728cf4a82d7fbf47d7f43131fa64efc5621d09764f.lean#L45).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bd81ffb1f715715691664137e04ce637cf678dbd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
