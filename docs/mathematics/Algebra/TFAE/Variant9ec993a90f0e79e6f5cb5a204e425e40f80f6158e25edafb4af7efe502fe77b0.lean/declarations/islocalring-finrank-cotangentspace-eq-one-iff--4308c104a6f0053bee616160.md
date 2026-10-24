# IsLocalRing.finrank_CotangentSpace_eq_one_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5ea80ce06a3b0967bfd51d9df335e40732a28981",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 224,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9e/9ec993a90f0e79e6f5cb5a204e425e40f80f6158e25edafb4af7efe502fe77b0.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7203f3bc-7d5c-81b2-f53c-ca3bc2de408f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f8ab4088-4948-407e-41b4-07ada0b8b369",
  "kind": "lemma",
  "lexical_name": "IsLocalRing.finrank_CotangentSpace_eq_one_iff",
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
  "slug": "islocalring-finrank-cotangentspace-eq-one-iff--4308c104a6f0053bee616160",
  "source": {
    "blob": "5ea80ce06a3b0967bfd51d9df335e40732a28981",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 236,
    "line": 224,
    "path": "GRWTSK/Algebra/TFAE/Variant9ec993a90f0e79e6f5cb5a204e425e40f80f6158e25edafb4af7efe502fe77b0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4308c104a6f0053bee6161608904410708cd45e1fca9f841b9c74c8ab5df7eb4",
  "verification": {
    "reference": "docs/verification/Algebra/TFAE/Variant9ec993a90f0e79e6f5cb5a204e425e40f80f6158e25edafb4af7efe502fe77b0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f8ab4088-4948-407e-41b4-07ada0b8b369`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 224–236.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IsLocalRing.finrank_CotangentSpace_eq_one_iff [IsNoetherianRing R] [IsLocalRing R]
    [IsDomain R] : finrank (ResidueField R) (CotangentSpace R) = 1 ↔ IsDiscreteValuationRing R := by
  by_cases hR : IsField R
  · letI := hR.toField
    simp only [finrank_cotangentSpace_eq_zero, zero_ne_one, false_iff]
    exact fun h ↦ h.3 maximalIdeal_eq_bot
  · exact (IsDiscreteValuationRing.TFAE R hR).out 5 0

@[deprecated (since := "2024-11-09")]
alias LocalRing.finrank_CotangentSpace_eq_one_iff := IsLocalRing.finrank_CotangentSpace_eq_one_iff

variable (R)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/TFAE/Variant9ec993a90f0e79e6f5cb5a204e425e40f80f6158e25edafb4af7efe502fe77b0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/TFAE/Variant9ec993a90f0e79e6f5cb5a204e425e40f80f6158e25edafb4af7efe502fe77b0.lean#L224).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5ea80ce06a3b0967bfd51d9df335e40732a28981` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
