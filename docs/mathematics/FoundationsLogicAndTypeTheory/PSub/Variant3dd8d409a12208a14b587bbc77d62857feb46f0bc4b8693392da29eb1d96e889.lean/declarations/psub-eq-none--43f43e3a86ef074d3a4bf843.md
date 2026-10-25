# psub_eq_none

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c5082d9e-2d0c-1658-9c6a-c5777a432a7d",
  "kind": "theorem",
  "lexical_name": "psub_eq_none",
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
  "slug": "psub-eq-none--43f43e3a86ef074d3a4bf843",
  "source": {
    "blob": "6b9b86f3da4ae2ac5498a229d5e24d314275af25",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 105,
    "line": 95,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/PSub/Variant3dd8d409a12208a14b587bbc77d62857feb46f0bc4b8693392da29eb1d96e889.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:43f43e3a86ef074d3a4bf84376aa2eb2734f11f241a2b73d6fff17fa426ee0de",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/PSub/Variant3dd8d409a12208a14b587bbc77d62857feb46f0bc4b8693392da29eb1d96e889.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c5082d9e-2d0c-1658-9c6a-c5777a432a7d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 95–105.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem psub_eq_none {m n : ℕ} : psub m n = none ↔ m < n := by
  cases s : psub m n <;> simp [eq_comm]
  · show m < n
    refine' lt_of_not_ge fun h => _
    cases' le.dest h with k e
    injection s.symm.trans (psub_eq_some.2 <| (add_comm _ _).trans e)
  · show n ≤ m
    rw [← psub_eq_some.1 s]
    apply Nat.le_add_left
#align nat.psub_eq_none Nat.psub_eq_none

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/PSub/Variant3dd8d409a12208a14b587bbc77d62857feb46f0bc4b8693392da29eb1d96e889.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/PSub/Variant3dd8d409a12208a14b587bbc77d62857feb46f0bc4b8693392da29eb1d96e889.lean#L95).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6b9b86f3da4ae2ac5498a229d5e24d314275af25` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
