# abs_add_seven

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c8602778-dcea-e60b-4368-25d48e3da689",
  "kind": "theorem",
  "lexical_name": "abs_add_seven",
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
  "slug": "abs-add-seven--6688626b4acb13eccd7d9442",
  "source": {
    "blob": "3cdf1d08f6e4eb2b143d39cae33ed109bd3dc6a9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 18,
    "line": 14,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Bd3c7d141382cc5d13a275e3e07e62b94f047c0bff6633eb552719e115fc530aPerturbation05/Variant581dffb9f21c6453b764af377931d51c846a8e9ccaf938c492e01daa826a72b5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6688626b4acb13eccd7d9442d1cdf08ae8d4881a44dd0a5316debba0cfcf073b",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Bd3c7d141382cc5d13a275e3e07e62b94f047c0bff6633eb552719e115fc530aPerturbation05/Variant581dffb9f21c6453b764af377931d51c846a8e9ccaf938c492e01daa826a72b5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c8602778-dcea-e60b-4368-25d48e3da689`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 14–18.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem abs_add_seven (a b c d e f g : ℝ) :
    |a + b + c + d + e + f + g| ≤ |a| + |b| + |c| + |d| + |e| + |f| + |g| := by
  linarith only [abs_add_le a b, abs_add_le (a+b) c, abs_add_le (a+b+c) d,
    abs_add_le (a+b+c+d) e, abs_add_le (a+b+c+d+e) f, abs_add_le (a+b+c+d+e+f) g]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Bd3c7d141382cc5d13a275e3e07e62b94f047c0bff6633eb552719e115fc530aPerturbation05/Variant581dffb9f21c6453b764af377931d51c846a8e9ccaf938c492e01daa826a72b5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Bd3c7d141382cc5d13a275e3e07e62b94f047c0bff6633eb552719e115fc530aPerturbation05/Variant581dffb9f21c6453b764af377931d51c846a8e9ccaf938c492e01daa826a72b5.lean#L14).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3cdf1d08f6e4eb2b143d39cae33ed109bd3dc6a9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
