# rawToBanach_eq_zero_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ebf0b5e2-35b6-e0bc-7e22-3cf296e20b80",
  "kind": "theorem",
  "lexical_name": "rawToBanach_eq_zero_iff",
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
  "slug": "rawtobanach-eq-zero-iff--aef33276a2da9f4f5d2fcde8",
  "source": {
    "blob": "40ab2b1a81d5049cb4c039c85961b6243fb642a7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 203,
    "line": 186,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/BanachCompletion/Variant3a26e2f078efc305de53a5a0046d4d006ff83adf1513350c4d7a53b85fdce829.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:aef33276a2da9f4f5d2fcde8b76199f81ac7999cfcf6a176f08890cf8d14edcd",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/BanachCompletion/Variant3a26e2f078efc305de53a5a0046d4d006ff83adf1513350c4d7a53b85fdce829.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ebf0b5e2-35b6-e0bc-7e22-3cf296e20b80`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 186–203.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem rawToBanach_eq_zero_iff
    {Atom : Type u}
    (data : QuotientNormData Atom)
    (combination : SemanticCombination Atom) :
    rawToBanach data combination = 0 ↔
      combination ∈ data.relations := by
  constructor
  · intro mappedZero
    have normZero :
        data.semanticSeminorm combination = 0 := by
      rw [← norm_rawToBanach data combination, mappedZero, norm_zero]
    exact (data.null_iff_relations combination).mp normZero
  · intro relationMember
    apply norm_eq_zero.mp
    rw [norm_rawToBanach]
    exact (data.null_iff_relations combination).mpr relationMember

/-- Canonical completed state of one semantic atom. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/BanachCompletion/Variant3a26e2f078efc305de53a5a0046d4d006ff83adf1513350c4d7a53b85fdce829.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/BanachCompletion/Variant3a26e2f078efc305de53a5a0046d4d006ff83adf1513350c4d7a53b85fdce829.lean#L186).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `40ab2b1a81d5049cb4c039c85961b6243fb642a7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
