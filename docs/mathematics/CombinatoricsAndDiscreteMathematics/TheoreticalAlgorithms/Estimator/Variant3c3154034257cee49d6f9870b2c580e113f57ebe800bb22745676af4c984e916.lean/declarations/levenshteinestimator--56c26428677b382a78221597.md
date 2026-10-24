# LevenshteinEstimator'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6b95c98ba43026a3dcf488684fabaeb1519accba241f443860944c822500aeed",
  "kind": "structure",
  "lexical_name": "LevenshteinEstimator'",
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
  "slug": "levenshteinestimator--56c26428677b382a78221597",
  "source": {
    "blob": "9c725744c2fa6ded06c6f02cd903687a0dd56185",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 61,
    "line": 43,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Estimator/Variant3c3154034257cee49d6f9870b2c580e113f57ebe800bb22745676af4c984e916.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:56c26428677b382a782215973db484d41ebe31ca6787ab619f64435e662771a0",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Estimator/Variant3c3154034257cee49d6f9870b2c580e113f57ebe800bb22745676af4c984e916.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6b95c98ba43026a3dcf488684fabaeb1519accba241f443860944c822500aeed`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 43–61.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure LevenshteinEstimator' : Type where
  /-- The prefix of `ys` that is not is not involved in the bound, in reverse order. -/
  pre_rev : List β
  /-- The suffix of `ys`, such that the distance from `xs` to `ys` is bounded below
  by the minimum distance from any suffix of `xs` to this suffix. -/
  suff : List β
  /-- Witness that `ys` has been decomposed into a prefix and suffix. -/
  split : pre_rev.reverse ++ suff = ys
  /-- The distances from each suffix of `xs` to `suff`. -/
  distances : {r : List δ // 0 < r.length}
  /-- Witness that `distances` are correct. -/
  distances_eq : distances = suffixLevenshtein C xs suff
  /-- The current bound on the pair (distance from `xs` to `ys`, length of `ys`). -/
  bound : δ × ℕ
  /-- Predicate describing the current bound. -/
  bound_eq : bound = match pre_rev with
    | [] => (distances.1[0]'(distances.2), ys.length)
    | _ => (List.minimum_of_length_pos distances.2, suff.length)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Estimator/Variant3c3154034257cee49d6f9870b2c580e113f57ebe800bb22745676af4c984e916.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Estimator/Variant3c3154034257cee49d6f9870b2c580e113f57ebe800bb22745676af4c984e916.lean#L43).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9c725744c2fa6ded06c6f02cd903687a0dd56185` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
