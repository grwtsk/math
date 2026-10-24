# overlapPolynomial1_hasDerivAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:67664e1e-8b8b-53d9-22c4-bb274b757059",
  "kind": "theorem",
  "lexical_name": "overlapPolynomial1_hasDerivAt",
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
  "slug": "overlappolynomial1-hasderivat--e1de81cd00c659bc4ac58868",
  "source": {
    "blob": "d37d8900373d219bf603dc7d8c812a69391eb204",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 121,
    "line": 117,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourcePositivePrimitiveAttempt04/Variante4144eaba2289a60622ca7f939cfcb7f56c76de5823504288dcc9441da16de57.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e1de81cd00c659bc4ac58868acf5ce1fddfdffed9dda92178f6a76ad518e734e",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourcePositivePrimitiveAttempt04/Variante4144eaba2289a60622ca7f939cfcb7f56c76de5823504288dcc9441da16de57.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:67664e1e-8b8b-53d9-22c4-bb274b757059`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 117–121.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem overlapPolynomial1_hasDerivAt (u : ℝ) :
    HasDerivAt overlapPolynomial1 (overlapPolynomial2 u) u := by
  have h := ((((((((((hasDerivAt_id u).pow 1).const_mul ((-131072/45045:ℝ):ℝ)).add (((hasDerivAt_id u).pow 3).const_mul ((32768/5005:ℝ):ℝ))).add (((hasDerivAt_id u).pow 5).const_mul ((-8192/1155:ℝ):ℝ))).add (((hasDerivAt_id u).pow 7).const_mul ((2048/315:ℝ):ℝ))).add (((hasDerivAt_id u).pow 8).const_mul ((-128/35:ℝ):ℝ))).add (((hasDerivAt_id u).pow 10).const_mul ((128/315:ℝ):ℝ))).add (((hasDerivAt_id u).pow 12).const_mul ((-16/385:ℝ):ℝ))).add (((hasDerivAt_id u).pow 14).const_mul ((8/3003:ℝ):ℝ))).add (((hasDerivAt_id u).pow 16).const_mul ((-1/12870:ℝ):ℝ))
  convert h using 1 <;> (first | funext v | skip) <;> norm_num [overlapPolynomial1,overlapPolynomial2,Pi.add_apply,Pi.pow_apply,id_eq] <;> ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourcePositivePrimitiveAttempt04/Variante4144eaba2289a60622ca7f939cfcb7f56c76de5823504288dcc9441da16de57.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourcePositivePrimitiveAttempt04/Variante4144eaba2289a60622ca7f939cfcb7f56c76de5823504288dcc9441da16de57.lean#L117).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d37d8900373d219bf603dc7d8c812a69391eb204` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
