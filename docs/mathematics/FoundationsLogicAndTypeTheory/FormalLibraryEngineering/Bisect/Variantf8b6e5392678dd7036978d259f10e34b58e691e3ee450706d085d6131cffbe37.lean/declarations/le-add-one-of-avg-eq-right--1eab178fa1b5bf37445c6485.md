# le_add_one_of_avg_eq_right

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:39b5791a-8ca3-c445-f2ae-3553645838fa",
  "kind": "theorem",
  "lexical_name": "le_add_one_of_avg_eq_right",
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
  "slug": "le-add-one-of-avg-eq-right--1eab178fa1b5bf37445c6485",
  "source": {
    "blob": "c62ef9c4edd4c125ffb02b7b190676f2246ec85a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 67,
    "line": 55,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bisect/Variantf8b6e5392678dd7036978d259f10e34b58e691e3ee450706d085d6131cffbe37.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1eab178fa1b5bf37445c6485815cb277c2cd8b99e2c53009cf31a1eee8461983",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bisect/Variantf8b6e5392678dd7036978d259f10e34b58e691e3ee450706d085d6131cffbe37.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:39b5791a-8ca3-c445-f2ae-3553645838fa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 55–67.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem le_add_one_of_avg_eq_right (h : avg a b = b) : a ≤ b + 1 := by
  cases Nat.lt_or_ge a (b+2) with
  | inl hlt => exact Nat.le_of_lt_add_one hlt
  | inr hge =>
    absurd Nat.lt_irrefl b
    conv => rhs; rw [← h]
    rw [← Nat.add_one_le_iff, Nat.le_div_iff_mul_le Nat.zero_lt_two]
    omega

/--
Given natural numbers `a < b` such that `p a = true` and `p b = false`, `bisect` finds a natural
number `a ≤ c < b` such that `p c = true` and `p (c+1) = false`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bisect/Variantf8b6e5392678dd7036978d259f10e34b58e691e3ee450706d085d6131cffbe37.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bisect/Variantf8b6e5392678dd7036978d259f10e34b58e691e3ee450706d085d6131cffbe37.lean#L55).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c62ef9c4edd4c125ffb02b7b190676f2246ec85a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
