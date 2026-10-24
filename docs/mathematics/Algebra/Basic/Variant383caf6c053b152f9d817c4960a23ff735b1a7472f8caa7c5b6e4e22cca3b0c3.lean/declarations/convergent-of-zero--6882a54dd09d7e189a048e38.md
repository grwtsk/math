# convergent_of_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b4d9a064408c2efa9f5858dc20e54455dc1c3e63",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 336,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/38/383caf6c053b152f9d817c4960a23ff735b1a7472f8caa7c5b6e4e22cca3b0c3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f27fa3ad-3a4c-c133-c95f-3504902b585a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:704c5a3c-9e39-ddb7-0b1d-32b8a00fc2cf",
  "kind": "theorem",
  "lexical_name": "convergent_of_zero",
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
  "slug": "convergent-of-zero--6882a54dd09d7e189a048e38",
  "source": {
    "blob": "b4d9a064408c2efa9f5858dc20e54455dc1c3e63",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 343,
    "line": 336,
    "path": "GRWTSK/Algebra/Basic/Variant383caf6c053b152f9d817c4960a23ff735b1a7472f8caa7c5b6e4e22cca3b0c3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6882a54dd09d7e189a048e3861a5dea33721c9d73872ee29146a6a7b8e893ad7",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variant383caf6c053b152f9d817c4960a23ff735b1a7472f8caa7c5b6e4e22cca3b0c3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:704c5a3c-9e39-ddb7-0b1d-32b8a00fc2cf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 336–343.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem convergent_of_zero (n : ℕ) : convergent 0 n = 0 := by
  induction n with
  | zero => simp only [convergent_zero, floor_zero, cast_zero]
  | succ n ih =>
    simp only [ih, convergent_succ, floor_zero, cast_zero, fract_zero, add_zero, inv_zero]

/-- If `ξ` is an integer, all its convergents equal `ξ`. -/
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variant383caf6c053b152f9d817c4960a23ff735b1a7472f8caa7c5b6e4e22cca3b0c3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variant383caf6c053b152f9d817c4960a23ff735b1a7472f8caa7c5b6e4e22cca3b0c3.lean#L336).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b4d9a064408c2efa9f5858dc20e54455dc1c3e63` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
