# ratCast_ne

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a9f21444-dbb1-bf35-7c1b-7dbe59163a99",
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
  "slug": "ratcast-ne--c25bcb05cb0f3761a4ae99c6",
  "source": {
    "blob": "208138213bf082690d98647e7e8c5424d8abad35",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 131,
    "line": 121,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rify/Variant58d124aebfcb685748030aeaa6f88c3c681aa0d11a06104da577937405456d0b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c25bcb05cb0f3761a4ae99c6e304f01cc7c7e44d348d526fe6c7b7f79bef8a0c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rify/Variant58d124aebfcb685748030aeaa6f88c3c681aa0d11a06104da577937405456d0b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a9f21444-dbb1-bf35-7c1b-7dbe59163a99`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 121–131.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rify/Variant58d124aebfcb685748030aeaa6f88c3c681aa0d11a06104da577937405456d0b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rify/Variant58d124aebfcb685748030aeaa6f88c3c681aa0d11a06104da577937405456d0b.lean#L121).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `208138213bf082690d98647e7e8c5424d8abad35` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
