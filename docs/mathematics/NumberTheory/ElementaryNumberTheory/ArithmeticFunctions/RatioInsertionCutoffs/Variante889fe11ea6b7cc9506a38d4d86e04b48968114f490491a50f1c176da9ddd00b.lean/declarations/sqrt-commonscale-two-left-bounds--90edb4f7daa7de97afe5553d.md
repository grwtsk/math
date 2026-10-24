# sqrt_commonScale_two_left_bounds

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ccaad7f507bfc0bc49fed07b003fcb879b492f0d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 55,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e8/e889fe11ea6b7cc9506a38d4d86e04b48968114f490491a50f1c176da9ddd00b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:52c28161-25b9-a5df-2c39-e40061f5dccc",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:25d57462-87d2-94b8-3b5c-15313c52ed83",
  "kind": "theorem",
  "lexical_name": "sqrt_commonScale_two_left_bounds",
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
  "slug": "sqrt-commonscale-two-left-bounds--90edb4f7daa7de97afe5553d",
  "source": {
    "blob": "ccaad7f507bfc0bc49fed07b003fcb879b492f0d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 60,
    "line": 55,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/RatioInsertionCutoffs/Variante889fe11ea6b7cc9506a38d4d86e04b48968114f490491a50f1c176da9ddd00b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:90edb4f7daa7de97afe5553da24db721a4e057e1b9767142bbf009033bc1771a",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/RatioInsertionCutoffs/Variante889fe11ea6b7cc9506a38d4d86e04b48968114f490491a50f1c176da9ddd00b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:25d57462-87d2-94b8-3b5c-15313c52ed83`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 55–60.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sqrt_commonScale_two_left_bounds (N u v : ℕ) (hu : 1 ≤ u) :
    Nat.sqrt ((N / max u v) / 2) ≤ Nat.sqrt (N / max (2*u) v) ∧
      Nat.sqrt (N / max (2*u) v) ≤ Nat.sqrt (N / max u v) := by
  exact ⟨Nat.sqrt_le_sqrt (commonScale_two_left_bounds N u v hu).1,
    Nat.sqrt_le_sqrt (commonScale_two_left_bounds N u v hu).2⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/RatioInsertionCutoffs/Variante889fe11ea6b7cc9506a38d4d86e04b48968114f490491a50f1c176da9ddd00b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/RatioInsertionCutoffs/Variante889fe11ea6b7cc9506a38d4d86e04b48968114f490491a50f1c176da9ddd00b.lean#L55).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ccaad7f507bfc0bc49fed07b003fcb879b492f0d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
