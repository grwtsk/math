# cappedValuation_eq_of_fin_profile

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
      "line": 69,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c9/c9aa44daa2caec5cd1c3e7fbeaaad9eafef9682eac41813d7ce7469bfe8748c2.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6882c376-6d70-9cd3-3c41-802d804e6cf6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:40e3f8cf-ea3f-761f-28ee-f7695064833e",
  "kind": "theorem",
  "lexical_name": "cappedValuation_eq_of_fin_profile",
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
  "slug": "cappedvaluation-eq-of-fin-profile--98585e76ae82e868cf2194b1",
  "source": {
    "blob": "fcf79c1e67cc6bd7d4db361cc94dccdef8eba2c3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 78,
    "line": 69,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/PackingObservations/Variantc9aa44daa2caec5cd1c3e7fbeaaad9eafef9682eac41813d7ce7469bfe8748c2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:98585e76ae82e868cf2194b10cb65daa5b90b6042dcd8af35120f8ba4dc7f79a",
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

Occurrence: `result:40e3f8cf-ea3f-761f-28ee-f7695064833e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 69–78.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cappedValuation_eq_of_fin_profile (p r e : ℕ) (z : ℤ) (hp : p.Prime)
    (he : e ≤ r)
    (profile : ∀ k : Fin (r + 1), k.val ≤ e ↔ (p : ℤ) ^ k.val ∣ z) :
    cappedValuation p r z = e := by
  apply cappedValuation_eq_of_profile p r e z hp he
  intro k hk
  exact profile ⟨k, Nat.lt_succ_of_le hk⟩

/-- A genuinely finite signature. Composite and unit indices carry fixed zero;
only prime indices observe translated integer values. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/PackingObservations/Variantc9aa44daa2caec5cd1c3e7fbeaaad9eafef9682eac41813d7ce7469bfe8748c2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/PackingObservations/Variantc9aa44daa2caec5cd1c3e7fbeaaad9eafef9682eac41813d7ce7469bfe8748c2.lean#L69).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fcf79c1e67cc6bd7d4db361cc94dccdef8eba2c3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
