# IsBigO.trans_isEquivalent

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2cb7df4d-167a-46a9-4206-d5f2ec95def5",
  "kind": "theorem",
  "lexical_name": "IsBigO.trans_isEquivalent",
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
  "slug": "isbigo-trans-isequivalent--9a947fde337648d90be11f6c",
  "source": {
    "blob": "e3721128507af0291f8ac0b223a7ade4f362d0a1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 440,
    "line": 437,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/AsymptoticEquivalent/Variant1ae37c4ba9ad9d7d5a271484f89eae8a58ffb60429fbc273544bbe9998223d3b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9a947fde337648d90be11f6c03a81a2ebfc8f6ad612d83185477a517c983e048",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/AsymptoticEquivalent/Variant1ae37c4ba9ad9d7d5a271484f89eae8a58ffb60429fbc273544bbe9998223d3b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2cb7df4d-167a-46a9-4206-d5f2ec95def5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 437–440.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsBigO.trans_isEquivalent {f : α → β₂} {g₁ g₂ : α → β} (h : f =O[l] g₁) (h₂ : g₁ ~[l] g₂) :
    f =O[l] g₂ :=
  IsBigO.trans h h₂.isBigO

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/AsymptoticEquivalent/Variant1ae37c4ba9ad9d7d5a271484f89eae8a58ffb60429fbc273544bbe9998223d3b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/AsymptoticEquivalent/Variant1ae37c4ba9ad9d7d5a271484f89eae8a58ffb60429fbc273544bbe9998223d3b.lean#L437).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e3721128507af0291f8ac0b223a7ade4f362d0a1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
