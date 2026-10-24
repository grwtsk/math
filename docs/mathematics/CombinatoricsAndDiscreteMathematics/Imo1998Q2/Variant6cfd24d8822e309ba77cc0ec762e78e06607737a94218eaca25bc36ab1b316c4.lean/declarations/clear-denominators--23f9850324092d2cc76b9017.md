# clear_denominators

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2d45da58f9af0f2d3b54071ef8ffa6b956253942",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 228,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6c/6cfd24d8822e309ba77cc0ec762e78e06607737a94218eaca25bc36ab1b316c4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:bd5112c6-2be4-97a5-1d43-9f204bff15ac",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:cfdf955a-ef0e-1891-25d7-1a84a04306c4",
  "kind": "theorem",
  "lexical_name": "clear_denominators",
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
  "slug": "clear-denominators--23f9850324092d2cc76b9017",
  "source": {
    "blob": "2d45da58f9af0f2d3b54071ef8ffa6b956253942",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 243,
    "line": 228,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Imo1998Q2/Variant6cfd24d8822e309ba77cc0ec762e78e06607737a94218eaca25bc36ab1b316c4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:23f9850324092d2cc76b9017ab190853e35208daab90e5e9b68d1ce6535e8afe",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Imo1998Q2/Variant6cfd24d8822e309ba77cc0ec762e78e06607737a94218eaca25bc36ab1b316c4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cfdf955a-ef0e-1891-25d7-1a84a04306c4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 228–243.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem clear_denominators {a b k : ℕ} (ha : 0 < a) (hb : 0 < b) :
    (b - 1 : ℚ) / (2 * b) ≤ k / a ↔ ((b : ℕ) - 1) * a ≤ k * (2 * b) := by
  rw [div_le_div_iff]
  -- porting note: proof used to finish with `<;> norm_cast <;> simp [ha, hb]`
  · convert Nat.cast_le (α := ℚ)
    · aesop
    · norm_cast
  all_goals simp [ha, hb]
#align imo1998_q2.clear_denominators Imo1998Q2.clear_denominators

end

end Imo1998Q2

open Imo1998Q2

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Imo1998Q2/Variant6cfd24d8822e309ba77cc0ec762e78e06607737a94218eaca25bc36ab1b316c4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Imo1998Q2/Variant6cfd24d8822e309ba77cc0ec762e78e06607737a94218eaca25bc36ab1b316c4.lean#L228).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2d45da58f9af0f2d3b54071ef8ffa6b956253942` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
