# blockCumulantValue_eq_of_agreeBelow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b09fc381b0c955580f910c55928e7b0e554ff347",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 241,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a2/a2b02fcae4c27a314b82b7a596e460157928c60970a65ace44bab1b6a158f897.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:484170f0-756e-775a-a1ef-075b6980a2f6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:32cee34f-3eac-5316-7436-b3d847ee10b8",
  "kind": "theorem",
  "lexical_name": "blockCumulantValue_eq_of_agreeBelow",
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
  "slug": "blockcumulantvalue-eq-of-agreebelow--288388a7000f1cfb251ba89c",
  "source": {
    "blob": "b09fc381b0c955580f910c55928e7b0e554ff347",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 253,
    "line": 241,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/A2b02fcae4c27a314b82b7a596e460157928c60970a65ace44bab1b6a158f897BlockDirectionRe/Varianta2b02fcae4c27a314b82b7a596e460157928c60970a65ace44bab1b6a158f897.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:288388a7000f1cfb251ba89c1ac0ba83f00b22f64290fb16c2d2001f4fdf40a4",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/A2b02fcae4c27a314b82b7a596e460157928c60970a65ace44bab1b6a158f897BlockDirectionRe/Varianta2b02fcae4c27a314b82b7a596e460157928c60970a65ace44bab1b6a158f897.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:32cee34f-3eac-5316-7436-b3d847ee10b8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 241–253.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem blockCumulantValue_eq_of_agreeBelow
    {n : ℕ}
    {κ₁ κ₂ : DirectionCumulantFamily E R}
    (h : AgreeBelow n κ₁ κ₂)
    (directions : Fin n → E)
    {B : Finset (Fin n)}
    (hcard : B.card < n) :
    blockCumulantValue κ₁ directions B =
      blockCumulantValue κ₂ directions B :=
  h B.card hcard (blockDirections directions B)

/-- Every partition weight of a proper partition depends only on cumulant
orders strictly below n. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/A2b02fcae4c27a314b82b7a596e460157928c60970a65ace44bab1b6a158f897BlockDirectionRe/Varianta2b02fcae4c27a314b82b7a596e460157928c60970a65ace44bab1b6a158f897.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/A2b02fcae4c27a314b82b7a596e460157928c60970a65ace44bab1b6a158f897BlockDirectionRe/Varianta2b02fcae4c27a314b82b7a596e460157928c60970a65ace44bab1b6a158f897.lean#L241).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b09fc381b0c955580f910c55928e7b0e554ff347` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
