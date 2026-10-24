# Anonymous example

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:13f35b62b6991367369232f9cb2683eac9270490271e09eaffa2395eab853db9",
  "kind": "example",
  "lexical_name": null,
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
  "slug": "example--69ea6a9ef9c5cda042cb8c23",
  "source": {
    "blob": "6f6130bf7ed2fb9460ba42c49b2745316285a4c1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 24,
    "line": 19,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/15fff1d350c642ebe1254d4266bc3af99317fffe4645ebbd94445f5f322af133LogSpacingDeclar/Variantee9475c8650cf259441f4eb32c8b0cd0f10ad6a5b3505cb9d921c91a89389793.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:69ea6a9ef9c5cda042cb8c2395ac94779d59ccf232a27b71584a30ac15e78e98",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/15fff1d350c642ebe1254d4266bc3af99317fffe4645ebbd94445f5f322af133LogSpacingDeclar/Variantee9475c8650cf259441f4eb32c8b0cd0f10ad6a5b3505cb9d921c91a89389793.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `example` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:13f35b62b6991367369232f9cb2683eac9270490271e09eaffa2395eab853db9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 19–24.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
example (N : ℕ) :
    (∑ n ∈ Finset.Icc 1 N,
      (realMoebius n / Real.sqrt (n : ℝ)) ^ 2 / (1 / ((n : ℝ) + 1))) =
      ∑ n ∈ Finset.Icc 1 N, (((n : ℝ) + 1) / (n : ℝ)) * (realMoebius n) ^ 2 :=
  local_spacing_weighted_square_sum N realMoebius

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/15fff1d350c642ebe1254d4266bc3af99317fffe4645ebbd94445f5f322af133LogSpacingDeclar/Variantee9475c8650cf259441f4eb32c8b0cd0f10ad6a5b3505cb9d921c91a89389793.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/15fff1d350c642ebe1254d4266bc3af99317fffe4645ebbd94445f5f322af133LogSpacingDeclar/Variantee9475c8650cf259441f4eb32c8b0cd0f10ad6a5b3505cb9d921c91a89389793.lean#L19).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6f6130bf7ed2fb9460ba42c49b2745316285a4c1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
