# hasDerivAt_log_ineq_7

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "67adb0c44c59889ed996a6114ab1cd9d4b74928f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 316,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/43/43a20de0397f6193e80a957e9579d072292e7e26cebe1ff8ed71bda1c137ab24.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:51b0ff85-ce93-6551-ba70-b56a47d7a1c5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:34876ad3-e4a5-f389-813d-5f428f0bcd02",
  "kind": "lemma",
  "lexical_name": "hasDerivAt_log_ineq_7",
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
  "slug": "hasderivat-log-ineq-7--d3c19091640e50176fccd01b",
  "source": {
    "blob": "67adb0c44c59889ed996a6114ab1cd9d4b74928f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 332,
    "line": 316,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/EulerMascheroniBounds/Variant43a20de0397f6193e80a957e9579d072292e7e26cebe1ff8ed71bda1c137ab24.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d3c19091640e50176fccd01b4d9775c78a5acd3ef6ead428d3aca0f7a299db45",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/EulerMascheroniBounds/Variant43a20de0397f6193e80a957e9579d072292e7e26cebe1ff8ed71bda1c137ab24.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:34876ad3-e4a5-f389-813d-5f428f0bcd02`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 316–332.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma hasDerivAt_log_ineq_7 (x : ℝ) (h1p : (0 : ℝ) < 1 + x) :
    HasDerivAt (fun u => 56 * u ^ 6 + 168 * u ^ 5 - 120 * u ^ 4 + 480 * u ^ 3
        + 2160 * u ^ 2 + 1440 * u - 1440 * (1 + u) ^ 2 * Real.log (1 + u))
        (336 * x ^ 5 + 840 * x ^ 4 - 480 * x ^ 3 + 1440 * x ^ 2 + 2880 * x
          - 2880 * (1 + x) * Real.log (1 + x)) x := by
  have hprod2 := hasDerivAt_one_add_sq_mul_log x h1p
  have h1 := ((hasDerivAt_pow 6 x).const_mul 56).add
    (((hasDerivAt_pow 5 x).const_mul 168).add
    (((hasDerivAt_pow 4 x).const_mul (-120)).add
    (((hasDerivAt_pow 3 x).const_mul 480).add
    (((hasDerivAt_pow 2 x).const_mul 2160).add
    ((hasDerivAt_mul_const 1440).sub
    (hprod2.const_mul 1440))))))
  refine h1.congr_of_eventuallyEq ?_ |>.congr_deriv ?_
  · filter_upwards with u; simp only [Pi.add_apply, Pi.sub_apply]; ring_nf
  · ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/EulerMascheroniBounds/Variant43a20de0397f6193e80a957e9579d072292e7e26cebe1ff8ed71bda1c137ab24.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/EulerMascheroniBounds/Variant43a20de0397f6193e80a957e9579d072292e7e26cebe1ff8ed71bda1c137ab24.lean#L316).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `67adb0c44c59889ed996a6114ab1cd9d4b74928f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
