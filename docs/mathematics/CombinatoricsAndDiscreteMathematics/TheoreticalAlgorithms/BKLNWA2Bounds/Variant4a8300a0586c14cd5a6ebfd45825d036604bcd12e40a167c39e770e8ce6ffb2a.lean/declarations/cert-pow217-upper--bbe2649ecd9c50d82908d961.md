# cert_pow217_upper

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9cf79d7f-1553-84fe-1678-3db09fb76ea7",
  "kind": "lemma",
  "lexical_name": "cert_pow217_upper",
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
  "slug": "cert-pow217-upper--bbe2649ecd9c50d82908d961",
  "source": {
    "blob": "f3bffc5e0798c88f232ff7509c2bdb7c0e9f4eb1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 441,
    "line": 436,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BKLNWA2Bounds/Variant4a8300a0586c14cd5a6ebfd45825d036604bcd12e40a167c39e770e8ce6ffb2a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bbe2649ecd9c50d82908d961c2bf86c9cc0b6a2440eea8219e818a92ba73af91",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BKLNWA2Bounds/Variant4a8300a0586c14cd5a6ebfd45825d036604bcd12e40a167c39e770e8ce6ffb2a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9cf79d7f-1553-84fe-1678-3db09fb76ea7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 436–441.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma cert_pow217_upper :
    (1 + 193571378 / (10 : ℝ) ^ 16) * f ((2 : ℝ) ^ (217 : ℕ)) ≤
      (1.000003748 : ℝ) + (1 : ℝ) / 10 ^ 8 := by
  rw [f_eq_leancert_f]
  exact LeanCert.Examples.BKLNW_a2_pow2.pow217_upper

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BKLNWA2Bounds/Variant4a8300a0586c14cd5a6ebfd45825d036604bcd12e40a167c39e770e8ce6ffb2a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BKLNWA2Bounds/Variant4a8300a0586c14cd5a6ebfd45825d036604bcd12e40a167c39e770e8ce6ffb2a.lean#L436).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f3bffc5e0798c88f232ff7509c2bdb7c0e9f4eb1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
