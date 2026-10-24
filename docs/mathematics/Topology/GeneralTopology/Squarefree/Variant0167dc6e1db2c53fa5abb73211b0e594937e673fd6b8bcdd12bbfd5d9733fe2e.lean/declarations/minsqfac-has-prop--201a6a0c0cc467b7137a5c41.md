# minSqFac_has_prop

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "56bc98e5e10a0538253bdd06defddebadf2b7d28",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 202,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/01/0167dc6e1db2c53fa5abb73211b0e594937e673fd6b8bcdd12bbfd5d9733fe2e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:bb119b35-a910-6613-a1ef-77e50e018e88",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:143e1d3d-1c21-1595-6deb-dc91da2338b9",
  "kind": "theorem",
  "lexical_name": "minSqFac_has_prop",
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
  "slug": "minsqfac-has-prop--201a6a0c0cc467b7137a5c41",
  "source": {
    "blob": "56bc98e5e10a0538253bdd06defddebadf2b7d28",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 221,
    "line": 202,
    "path": "GRWTSK/Topology/GeneralTopology/Squarefree/Variant0167dc6e1db2c53fa5abb73211b0e594937e673fd6b8bcdd12bbfd5d9733fe2e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:201a6a0c0cc467b7137a5c4160721c92f181a77455815d5b32c79e22b34d50c9",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Squarefree/Variant0167dc6e1db2c53fa5abb73211b0e594937e673fd6b8bcdd12bbfd5d9733fe2e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:143e1d3d-1c21-1595-6deb-dc91da2338b9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 202–221.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem minSqFac_has_prop (n : ℕ) : MinSqFacProp n (minSqFac n) := by
  dsimp only [minSqFac]; split_ifs with d2 d4
  · exact ⟨prime_two, (dvd_div_iff d2).1 d4, fun p pp _ => pp.two_le⟩
  · cases' Nat.eq_zero_or_pos n with n0 n0
    · subst n0
      cases d4 (by decide)
    refine' minSqFacProp_div _ prime_two d2 (mt (dvd_div_iff d2).2 d4) _
    refine' minSqFacAux_has_prop 3 (Nat.div_pos (le_of_dvd n0 d2) (by decide)) 0 rfl _
    refine' fun p pp dp => succ_le_of_lt (lt_of_le_of_ne pp.two_le _)
    rintro rfl
    contradiction
  · cases' Nat.eq_zero_or_pos n with n0 n0
    · subst n0
      cases d2 (by decide)
    refine' minSqFacAux_has_prop _ n0 0 rfl _
    refine' fun p pp dp => succ_le_of_lt (lt_of_le_of_ne pp.two_le _)
    rintro rfl
    contradiction
#align nat.min_sq_fac_has_prop Nat.minSqFac_has_prop

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Squarefree/Variant0167dc6e1db2c53fa5abb73211b0e594937e673fd6b8bcdd12bbfd5d9733fe2e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Squarefree/Variant0167dc6e1db2c53fa5abb73211b0e594937e673fd6b8bcdd12bbfd5d9733fe2e.lean#L202).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `56bc98e5e10a0538253bdd06defddebadf2b7d28` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
