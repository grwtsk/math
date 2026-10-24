# sqrt_pi_le_stirlingSeq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b8e98114-caf9-7d37-c5ea-99e748343919",
  "kind": "theorem",
  "lexical_name": "sqrt_pi_le_stirlingSeq",
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
  "slug": "sqrt-pi-le-stirlingseq--e13dbfcc36148c3f19f04702",
  "source": {
    "blob": "20cf8e9dc074acb4d60f49ef10d660b3ffd9c459",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 282,
    "line": 268,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Stirling/Variant2f914b4c3c04d6c2dff3cd25c14812d6fb6fd056ddbcdc7e41065ed460e28125.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e13dbfcc36148c3f19f047026463daa1bc14cd73edc5e94d1846d1a978eb2717",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Stirling/Variant2f914b4c3c04d6c2dff3cd25c14812d6fb6fd056ddbcdc7e41065ed460e28125.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b8e98114-caf9-7d37-c5ea-99e748343919`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 268–282.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sqrt_pi_le_stirlingSeq {n : ℕ} (hn : n ≠ 0) : √π ≤ stirlingSeq n :=
  match n, hn with
  | n + 1, _ =>
    stirlingSeq'_antitone.le_of_tendsto (b := n) <|
      tendsto_stirlingSeq_sqrt_pi.comp (tendsto_add_atTop_nat 1)

/--
Stirling's approximation gives a lower bound for `n!` for all `n`.
The left-hand side is formulated to mimic the usual informal description of the approximation.
See also `factorial_isEquivalent_stirling` which says these are asymptotically equivalent. That
statement gives an upper bound also, but requires sufficiently large `n`. In contrast, this one is
only a lower bound, but holds for all `n`.
See also `log_stirlingSeq_sdiff_le` for Robbins' sharp bound on successive differences in the
Stirling sequence.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Stirling/Variant2f914b4c3c04d6c2dff3cd25c14812d6fb6fd056ddbcdc7e41065ed460e28125.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Stirling/Variant2f914b4c3c04d6c2dff3cd25c14812d6fb6fd056ddbcdc7e41065ed460e28125.lean#L268).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `20cf8e9dc074acb4d60f49ef10d660b3ffd9c459` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
