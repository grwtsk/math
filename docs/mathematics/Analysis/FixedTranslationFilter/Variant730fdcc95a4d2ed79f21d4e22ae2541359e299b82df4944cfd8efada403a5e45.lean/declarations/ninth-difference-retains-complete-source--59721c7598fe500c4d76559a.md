# ninth_difference_retains_complete_source

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0f1594fb-9293-7cee-e5ab-520e3167aa8a",
  "kind": "theorem",
  "lexical_name": "ninth_difference_retains_complete_source",
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
  "slug": "ninth-difference-retains-complete-source--59721c7598fe500c4d76559a",
  "source": {
    "blob": "00e106710766f58bf9a4842958430860d11f88f9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 73,
    "line": 68,
    "path": "GRWTSK/Analysis/FixedTranslationFilter/Variant730fdcc95a4d2ed79f21d4e22ae2541359e299b82df4944cfd8efada403a5e45.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:59721c7598fe500c4d76559ac6bbab791a578c5e08957c109e2638ebc48e21e4",
  "verification": {
    "reference": "docs/verification/Analysis/FixedTranslationFilter/Variant730fdcc95a4d2ed79f21d4e22ae2541359e299b82df4944cfd8efada403a5e45.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0f1594fb-9293-7cee-e5ab-520e3167aa8a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 68–73.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ninth_difference_retains_complete_source (h A : ℝ) :
    ninthDifference h A = ∑ j ∈ Finset.range 10,
      (-1 : ℝ) ^ (9 - j) * ((9 : ℕ).choose j : ℝ) *
      ((A + (j : ℝ) * h) ^ 17 * sourceNormalization (A + (j : ℝ) * h) *
        closedPrimeMoment (A + (j : ℝ) * h)) := rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/FixedTranslationFilter/Variant730fdcc95a4d2ed79f21d4e22ae2541359e299b82df4944cfd8efada403a5e45.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FixedTranslationFilter/Variant730fdcc95a4d2ed79f21d4e22ae2541359e299b82df4944cfd8efada403a5e45.lean#L68).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `00e106710766f58bf9a4842958430860d11f88f9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
