# Module.annihilator_eq_bot

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ceade86412c40fc87daf1c0326e113e404ab6857",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 797,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d7/d712655ba919d0beaca1d8d0dfad17a129b4e87acd4ff812d0a343d112aad3df.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:aa72cbea-1720-7e96-8868-91d26b0bb054",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d2d63280-998b-3301-232b-e837740ca010",
  "kind": "lemma",
  "lexical_name": "Module.annihilator_eq_bot",
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
  "slug": "module-annihilator-eq-bot--74262f99b76fb0b60f49f259",
  "source": {
    "blob": "ceade86412c40fc87daf1c0326e113e404ab6857",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 805,
    "line": 797,
    "path": "GRWTSK/Algebra/Maps/Variantd712655ba919d0beaca1d8d0dfad17a129b4e87acd4ff812d0a343d112aad3df.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:74262f99b76fb0b60f49f259c830f5b3537ecf83e51ce9e29c2d4532b1d64c64",
  "verification": {
    "reference": "docs/verification/Algebra/Maps/Variantd712655ba919d0beaca1d8d0dfad17a129b4e87acd4ff812d0a343d112aad3df.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d2d63280-998b-3301-232b-e837740ca010`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 797–805.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Module.annihilator_eq_bot {R M} [Ring R] [AddCommGroup M] [Module R M] :
    Module.annihilator R M = ⊥ ↔ FaithfulSMul R M := by
  rw [← le_bot_iff]
  refine ⟨fun H ↦ ⟨fun {r s} H' ↦ ?_⟩, fun ⟨H⟩ {a} ha ↦ ?_⟩
  · rw [← sub_eq_zero]
    exact H (Module.mem_annihilator (r := r - s).mpr
      (by simp only [sub_smul, H', sub_self, implies_true]))
  · exact @H a 0 (by simp [Module.mem_annihilator.mp ha])

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Maps/Variantd712655ba919d0beaca1d8d0dfad17a129b4e87acd4ff812d0a343d112aad3df.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Maps/Variantd712655ba919d0beaca1d8d0dfad17a129b4e87acd4ff812d0a343d112aad3df.lean#L797).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ceade86412c40fc87daf1c0326e113e404ab6857` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
