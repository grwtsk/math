# rank_eq_zero_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d0859dda-5e1e-9da9-9dce-a229d9c0de81",
  "kind": "theorem",
  "lexical_name": "rank_eq_zero_iff",
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
  "slug": "rank-eq-zero-iff--c8a6b6976b2e8a789956d147",
  "source": {
    "blob": "a95ed8709c866b5be0c8f5f63a72a08f6be0da4b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 156,
    "line": 140,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Atlas/Variantea20961cb06132d7fce63adae595a7daa385e59a9380c8f1983a87073fe5b5e9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c8a6b6976b2e8a789956d14776ca54a6bc15b3927a85ecd51c0f29cbec18d5f3",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Atlas/Variantea20961cb06132d7fce63adae595a7daa385e59a9380c8f1983a87073fe5b5e9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d0859dda-5e1e-9da9-9dce-a229d9c0de81`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 140–156.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem rank_eq_zero_iff {cl : ClosureOperator (Finset α)}
    {candidates atlas targets : Finset α} :
    rank cl candidates atlas targets = some 0 ↔ targets ⊆ cl atlas := by
  constructor
  · intro h
    obtain ⟨carriers, _, hsuff, hcard⟩ := rank_attained h
    have hempty := Finset.card_eq_zero.mp hcard
    simpa [Sufficient, hempty] using hsuff
  · intro h
    have hsuff : Sufficient cl atlas targets ∅ := by simpa [Sufficient] using h
    obtain ⟨n, hn⟩ := rank_defined_of_sufficient (Finset.empty_subset candidates) hsuff
    have hz : n = 0 := Nat.eq_zero_of_le_zero (by
      simpa using rank_le_card hn (Finset.empty_subset candidates) hsuff)
    simpa [hz] using hn

/-- Structural transfer gain is returned only for defined, correctly ordered finite ranks.
The order guard records the premise just proved by `attachment_burden_antitone`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Atlas/Variantea20961cb06132d7fce63adae595a7daa385e59a9380c8f1983a87073fe5b5e9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Atlas/Variantea20961cb06132d7fce63adae595a7daa385e59a9380c8f1983a87073fe5b5e9.lean#L140).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a95ed8709c866b5be0c8f5f63a72a08f6be0da4b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
