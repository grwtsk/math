# sigmaIsoHom_inj

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "98ac14221feed80c740cdd90d39d13512465f8b7",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 34,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c8/c8c7302b94136443f257d58f6c2ff16e343fbe9ce040eb94a89b5ce8f614dbf1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d4d0d33e-855b-e24e-74e8-a0d66a805ac4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5243dfcd-57bb-e336-6d95-b63aa3532e1d",
  "kind": "lemma",
  "lexical_name": "sigmaIsoHom_inj",
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
  "slug": "sigmaisohom-inj--ffa86bf9c0b8a722eca4c887",
  "source": {
    "blob": "98ac14221feed80c740cdd90d39d13512465f8b7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 40,
    "line": 34,
    "path": "GRWTSK/Topology/GeneralTopology/FiberPartition/Variantc8c7302b94136443f257d58f6c2ff16e343fbe9ce040eb94a89b5ce8f614dbf1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ffa86bf9c0b8a722eca4c887a11f7befe002a5cbb141ed44205d6216e37cc669",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/FiberPartition/Variantc8c7302b94136443f257d58f6c2ff16e343fbe9ce040eb94a89b5ce8f614dbf1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5243dfcd-57bb-e336-6d95-b63aa3532e1d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 34–40.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma sigmaIsoHom_inj : Function.Injective (sigmaIsoHom f) := by
  rintro ⟨⟨_, _, rfl⟩, ⟨_, hx⟩⟩ ⟨⟨_, _, rfl⟩, ⟨_, hy⟩⟩ h
  refine Sigma.subtype_ext ?_ h
  simp only [sigmaIsoHom_apply] at h
  rw [Set.mem_preimage, Set.mem_singleton_iff] at hx hy
  simp [← hx, ← hy, h]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/FiberPartition/Variantc8c7302b94136443f257d58f6c2ff16e343fbe9ce040eb94a89b5ce8f614dbf1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/FiberPartition/Variantc8c7302b94136443f257d58f6c2ff16e343fbe9ce040eb94a89b5ce8f614dbf1.lean#L34).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `98ac14221feed80c740cdd90d39d13512465f8b7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
