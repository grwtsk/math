# exists_ultrafilter_of_finite_inter_nonempty

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6630402da1f82eff60f11a532d87c6bfb0712e91",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 70,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f0/f033e3e95449119bf6648283ff11e94a2d5676bb6dfa5a2ba60f100fac77e691.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d9b9f021-ddd4-1db4-9d41-da5b0e5cef38",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:78463653-359c-df8f-3a09-009ce3ff0522",
  "kind": "theorem",
  "lexical_name": "exists_ultrafilter_of_finite_inter_nonempty",
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
  "slug": "exists-ultrafilter-of-finite-inter-nonempty--953d878b26dff39986f2373b",
  "source": {
    "blob": "6630402da1f82eff60f11a532d87c6bfb0712e91",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 84,
    "line": 70,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variantf033e3e95449119bf6648283ff11e94a2d5676bb6dfa5a2ba60f100fac77e691.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:953d878b26dff39986f2373b9640efc0810d7bd261e01085f5afab51020a026f",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variantf033e3e95449119bf6648283ff11e94a2d5676bb6dfa5a2ba60f100fac77e691.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:78463653-359c-df8f-3a09-009ce3ff0522`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 70–84.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_ultrafilter_of_finite_inter_nonempty (S : Set (Set α))
    (cond : ∀ T : Finset (Set α), (↑T : Set (Set α)) ⊆ S → (⋂₀ (↑T : Set (Set α))).Nonempty) :
    ∃ F : Ultrafilter α, S ⊆ F.sets :=
  haveI : NeBot (generate S) :=
    generate_neBot_iff.2 fun _ hts ht =>
      ht.coe_toFinset ▸ cond ht.toFinset (ht.coe_toFinset.symm ▸ hts)
  ⟨of (generate S), fun _ ht => (of_le <| generate S) <| GenerateSets.basic ht⟩

end Ultrafilter

namespace Filter

open Ultrafilter

@[to_dual]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variantf033e3e95449119bf6648283ff11e94a2d5676bb6dfa5a2ba60f100fac77e691.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variantf033e3e95449119bf6648283ff11e94a2d5676bb6dfa5a2ba60f100fac77e691.lean#L70).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6630402da1f82eff60f11a532d87c6bfb0712e91` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
