# isIntegral_exp_rat_mul_pi_mul_I

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "99d1fb87681de3fa978dce3c7348324b5cc82e80",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 58,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/06/0637d4dfa52112aa4ef7e26f42c0fb9fc609e33e4492461b8c7c40b2ea750b7d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:37871f34-f395-0a32-60a5-70b094c45e51",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:02e49916-5b15-5e4a-4162-93636da8e4dc",
  "kind": "theorem",
  "lexical_name": "isIntegral_exp_rat_mul_pi_mul_I",
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
  "slug": "isintegral-exp-rat-mul-pi-mul-i--79fd6885320e15786814ac34",
  "source": {
    "blob": "99d1fb87681de3fa978dce3c7348324b5cc82e80",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 62,
    "line": 58,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Niven/Variant0637d4dfa52112aa4ef7e26f42c0fb9fc609e33e4492461b8c7c40b2ea750b7d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:79fd6885320e15786814ac34b4c741f54e9b80aae28291f92ee0425e3f6aa6de",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/Niven/Variant0637d4dfa52112aa4ef7e26f42c0fb9fc609e33e4492461b8c7c40b2ea750b7d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:02e49916-5b15-5e4a-4162-93636da8e4dc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 58–62.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isIntegral_exp_rat_mul_pi_mul_I (q : ℚ) : IsIntegral ℤ <| exp <| q * π * I := by
  refine .of_pow (Nat.mul_pos zero_lt_two q.den_pos) ?_
  exact exp_rat_mul_pi_mul_I_pow_two_mul_den _ ▸ isIntegral_one

/-- `exp(-(q * π) * I)` for `q : ℚ` is integral over `ℤ`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/Niven/Variant0637d4dfa52112aa4ef7e26f42c0fb9fc609e33e4492461b8c7c40b2ea750b7d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Niven/Variant0637d4dfa52112aa4ef7e26f42c0fb9fc609e33e4492461b8c7c40b2ea750b7d.lean#L58).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `99d1fb87681de3fa978dce3c7348324b5cc82e80` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
