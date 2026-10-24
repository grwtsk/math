# pow_lt_pow_iff_left₀

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:568bd000-491c-f3c6-ebea-0b9500237ee4",
  "kind": "lemma",
  "lexical_name": "pow_lt_pow_iff_left₀",
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
  "slug": "pow-lt-pow-iff-left--369f901b4a23d23814336ece",
  "source": {
    "blob": "f1f513e1c94e86f17b34bdf8ba2f407974127dd4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 698,
    "line": 694,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Basic/Variantb0017a6948b68336e6594321c172020aa8c87c3de819b8f5db212bf968acf6a3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:369f901b4a23d23814336ece4aaadda6ee7a0f967ca4cb52767d0dad40b2cd4b",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Basic/Variantb0017a6948b68336e6594321c172020aa8c87c3de819b8f5db212bf968acf6a3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:568bd000-491c-f3c6-ebea-0b9500237ee4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 694–698.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma pow_lt_pow_iff_left₀ [MulPosMono M₀] (ha : 0 ≤ a) (hb : 0 ≤ b) (hn : n ≠ 0) :
    a ^ n < b ^ n ↔ a < b :=
  (pow_left_strictMonoOn₀ hn).lt_iff_lt ha hb

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Basic/Variantb0017a6948b68336e6594321c172020aa8c87c3de819b8f5db212bf968acf6a3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Basic/Variantb0017a6948b68336e6594321c172020aa8c87c3de819b8f5db212bf968acf6a3.lean#L694).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f1f513e1c94e86f17b34bdf8ba2f407974127dd4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
