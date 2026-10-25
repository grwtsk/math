# ratCast_ne

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c4308a51-e18a-ee1e-af09-aacb1a3f0328",
  "kind": "lemma",
  "lexical_name": "ratCast_ne",
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
  "slug": "ratcast-ne--4746c85c5d26401b284eb2ef",
  "source": {
    "blob": "5cceff67a2024a5a4b623bafd66d12c90a71c8ad",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 123,
    "line": 113,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rify/Variant03682726a2e67c333cf4bdf06a6a2223d563c26308fbb587546b5be93e7adf58.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4746c85c5d26401b284eb2ef1afec69f4fe884ab9086933996ca6921624a7c28",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rify/Variant03682726a2e67c333cf4bdf06a6a2223d563c26308fbb587546b5be93e7adf58.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c4308a51-e18a-ee1e-af09-aacb1a3f0328`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 113–123.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[rify_simps] lemma ratCast_ne (a b : ℚ) : a ≠ b ↔ (a : ℝ) ≠ (b : ℝ) := by simp

/- The following lemmas are included in `Mathlib.Basic.NNReal.Basic` (so that they
don't need to be imported when using this tactic for `ℕ, ℤ`, or `ℚ`)

`@[rify_simps] lemma toReal_eq (a b : ℝ≥0) : a = b ↔ (a : ℝ) = (b : ℝ) := by simp`
`@[rify_simps] lemma toReal_le (a b : ℝ≥0) : a ≤ b ↔ (a : ℝ) ≤ (b : ℝ) := by simp`
`@[rify_simps] lemma toReal_lt (a b : ℝ≥0) : a < b ↔ (a : ℝ) < (b : ℝ) := by simp`
`@[rify_simps] lemma toReal_ne (a b : ℝ≥0) : a ≠ b ↔ (a : ℝ) ≠ (b : ℝ) := by simp`
-/

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rify/Variant03682726a2e67c333cf4bdf06a6a2223d563c26308fbb587546b5be93e7adf58.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rify/Variant03682726a2e67c333cf4bdf06a6a2223d563c26308fbb587546b5be93e7adf58.lean#L113).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5cceff67a2024a5a4b623bafd66d12c90a71c8ad` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
