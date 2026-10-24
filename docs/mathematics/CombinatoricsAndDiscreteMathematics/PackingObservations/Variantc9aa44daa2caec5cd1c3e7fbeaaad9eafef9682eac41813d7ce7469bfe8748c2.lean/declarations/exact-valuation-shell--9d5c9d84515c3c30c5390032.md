# exact_valuation_shell

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "fcf79c1e67cc6bd7d4db361cc94dccdef8eba2c3",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 289,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c9/c9aa44daa2caec5cd1c3e7fbeaaad9eafef9682eac41813d7ce7469bfe8748c2.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f8cd3051-23b7-3e84-c094-e9a4b7d11f34",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ef05593b-1b5a-2a27-0401-dd9df5fe3162",
  "kind": "theorem",
  "lexical_name": "exact_valuation_shell",
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
  "slug": "exact-valuation-shell--9d5c9d84515c3c30c5390032",
  "source": {
    "blob": "fcf79c1e67cc6bd7d4db361cc94dccdef8eba2c3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 295,
    "line": 289,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/PackingObservations/Variantc9aa44daa2caec5cd1c3e7fbeaaad9eafef9682eac41813d7ce7469bfe8748c2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9d5c9d84515c3c30c53900323641160cc42c8fbddcaf5ab6d92b4f59d1907cbd",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/PackingObservations/Variantc9aa44daa2caec5cd1c3e7fbeaaad9eafef9682eac41813d7ce7469bfe8748c2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ef05593b-1b5a-2a27-0401-dd9df5fe3162`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 289–295.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exact_valuation_shell (p k : ℕ) (hp : p.Prime) (n : ℕ) (hn : n ≠ 0) :
    padicValNat p n = k ↔ p ^ k ∣ n ∧ ¬p ^ (k + 1) ∣ n := by
  rw [padicValNat_dvd_iff_le_of_ne_one hp.ne_one hn,
    padicValNat_dvd_iff_le_of_ne_one hp.ne_one hn]
  omega

/-- Exact finite valuation-shell cardinality in one full positive period. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/PackingObservations/Variantc9aa44daa2caec5cd1c3e7fbeaaad9eafef9682eac41813d7ce7469bfe8748c2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/PackingObservations/Variantc9aa44daa2caec5cd1c3e7fbeaaad9eafef9682eac41813d7ce7469bfe8748c2.lean#L289).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fcf79c1e67cc6bd7d4db361cc94dccdef8eba2c3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
