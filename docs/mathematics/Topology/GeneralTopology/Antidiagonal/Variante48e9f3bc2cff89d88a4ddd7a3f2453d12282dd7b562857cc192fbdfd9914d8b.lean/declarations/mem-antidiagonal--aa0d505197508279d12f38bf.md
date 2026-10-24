# mem_antidiagonal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "af8de7d4977d661d716d175e5eefa09e3fc7c2df",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 46,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e4/e48e9f3bc2cff89d88a4ddd7a3f2453d12282dd7b562857cc192fbdfd9914d8b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:293854ff-f08f-6807-b6e7-2208dfa45c77",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:65346434-1896-2039-2ea6-267a647adc50",
  "kind": "theorem",
  "lexical_name": "mem_antidiagonal",
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
  "slug": "mem-antidiagonal--aa0d505197508279d12f38bf",
  "source": {
    "blob": "af8de7d4977d661d716d175e5eefa09e3fc7c2df",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 52,
    "line": 46,
    "path": "GRWTSK/Topology/GeneralTopology/Antidiagonal/Variante48e9f3bc2cff89d88a4ddd7a3f2453d12282dd7b562857cc192fbdfd9914d8b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:aa0d505197508279d12f38bfa820fed4f74a414ccf0df0ce11c4c5bd7e03ed54",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Antidiagonal/Variante48e9f3bc2cff89d88a4ddd7a3f2453d12282dd7b562857cc192fbdfd9914d8b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:65346434-1896-2039-2ea6-267a647adc50`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 46–52.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_antidiagonal {f : α →₀ ℕ} {p : (α →₀ ℕ) × (α →₀ ℕ)} :
    p ∈ antidiagonal f ↔ p.1 + p.2 = f := by
  rcases p with ⟨p₁, p₂⟩
  simp [antidiagonal, antidiagonal', ← and_assoc, Multiset.toFinsupp_eq_iff,
    ← Multiset.toFinsupp_eq_iff (f := f)]
#align finsupp.mem_antidiagonal Finsupp.mem_antidiagonal

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Antidiagonal/Variante48e9f3bc2cff89d88a4ddd7a3f2453d12282dd7b562857cc192fbdfd9914d8b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Antidiagonal/Variante48e9f3bc2cff89d88a4ddd7a3f2453d12282dd7b562857cc192fbdfd9914d8b.lean#L46).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `af8de7d4977d661d716d175e5eefa09e3fc7c2df` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
