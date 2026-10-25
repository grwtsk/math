# mem_of_subset'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:be1d1046-1479-255c-fabb-ea87dffe29a8",
  "kind": "theorem",
  "lexical_name": "mem_of_subset'",
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
  "slug": "mem-of-subset--273419476f99a27fcb46ba9f",
  "source": {
    "blob": "df5ecb33c68697a9d3be27bc7615c9452583bd80",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 210,
    "line": 201,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Lists/Variant55e101d47eaf29e9b9d2d650b0e465827237709e215d26c3f40d42fa4ef00b4d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:273419476f99a27fcb46ba9f68139bd3e2c55904d10a4a9218b6e060ee011711",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Lists/Variant55e101d47eaf29e9b9d2d650b0e465827237709e215d26c3f40d42fa4ef00b4d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:be1d1046-1479-255c-fabb-ea87dffe29a8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 201–210.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_of_subset' {a} : ∀ {l₁ l₂ : Lists' α true} (_ : l₁ ⊆ l₂) (_ : a ∈ l₁.toList), a ∈ l₂
  | nil, _, Lists'.Subset.nil, h => by cases h
  | cons' a0 l0, l₂, s, h => by
    cases' s with _ _ _ _ _ e m s
    simp only [toList, Sigma.eta, List.find?, List.mem_cons] at h
    rcases h with (rfl | h)
    · exact ⟨_, m, e⟩
    · exact mem_of_subset' s h
#align lists'.mem_of_subset' Lists'.mem_of_subset'

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Lists/Variant55e101d47eaf29e9b9d2d650b0e465827237709e215d26c3f40d42fa4ef00b4d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Lists/Variant55e101d47eaf29e9b9d2d650b0e465827237709e215d26c3f40d42fa4ef00b4d.lean#L201).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `df5ecb33c68697a9d3be27bc7615c9452583bd80` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
