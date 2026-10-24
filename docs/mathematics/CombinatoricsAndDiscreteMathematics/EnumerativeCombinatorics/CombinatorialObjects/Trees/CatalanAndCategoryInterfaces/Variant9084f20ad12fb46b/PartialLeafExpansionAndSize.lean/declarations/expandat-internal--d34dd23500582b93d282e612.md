# expandAt?_internal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7b3f5ab3-a0dc-46d6-60a2-a4a526d29667",
  "kind": "theorem",
  "lexical_name": "expandAt?_internal",
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
  "slug": "expandat-internal--d34dd23500582b93d282e612",
  "source": {
    "blob": "bfde85bb8287f3443c5357e852502b51c5f4ccf5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 97,
    "line": 55,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CombinatorialObjects/Trees/CatalanAndCategoryInterfaces/Variant9084f20ad12fb46b/PartialLeafExpansionAndSize.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d34dd23500582b93d282e6123619856416486e91ea6edf8b26ae131d67245e11",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CombinatorialObjects/Trees/CatalanAndCategoryInterfaces/Variant9084f20ad12fb46b/PartialLeafExpansionAndSize.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7b3f5ab3-a0dc-46d6-60a2-a4a526d29667`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 55–97.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem expandAt?_internal :
    ∀ {T : CTree} {a : Address} {U : CTree},
      T.expandAt? a = some U →
        U.internal = T.internal + 1 := by
  intro T
  induction T with
  | leaf =>
      intro a U h
      cases a with
      | nil =>
          simp [expandAt?] at h
          cases h
          simp [internal]
      | cons d rest =>
          cases d <;> simp [expandAt?] at h
  | node l r ihl ihr =>
      intro a U h
      cases a with
      | nil =>
          simp [expandAt?] at h
      | cons d rest =>
          cases d with
          | left =>
              cases hl : l.expandAt? rest with
              | none =>
                  simp [expandAt?, hl] at h
              | some l' =>
                  simp [expandAt?, hl] at h
                  cases h
                  have hl' := ihl hl
                  simp [internal, hl']
                  omega
          | right =>
              cases hr : r.expandAt? rest with
              | none =>
                  simp [expandAt?, hr] at h
              | some r' =>
                  simp [expandAt?, hr] at h
                  cases h
                  have hr' := ihr hr
                  simp [internal, hr']
                  omega

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../verification/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CombinatorialObjects/Trees/CatalanAndCategoryInterfaces/Variant9084f20ad12fb46b/PartialLeafExpansionAndSize.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CombinatorialObjects/Trees/CatalanAndCategoryInterfaces/Variant9084f20ad12fb46b/PartialLeafExpansionAndSize.lean#L55).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bfde85bb8287f3443c5357e852502b51c5f4ccf5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
