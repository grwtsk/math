# succ_nth_conv'_eq_squashGCF_nth_conv'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e15cc21b-b239-a496-77fb-a7a1305ff8d6",
  "kind": "theorem",
  "lexical_name": "succ_nth_conv'_eq_squashGCF_nth_conv'",
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
  "slug": "succ-nth-conv-eq-squashgcf-nth-conv--e2d32e8d8e2b6bc806b6e78c",
  "source": {
    "blob": "71bb0e6982734d471b0d8b2170fa29c4831a1de6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 228,
    "line": 218,
    "path": "GRWTSK/Algebra/ConvergentsEquiv/Variant717e0fb20faf43737fd4662296ff6fd354aaa99e01d9dd71eda64cf3dd53c6ec.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e2d32e8d8e2b6bc806b6e78cef6230766c36966cc7b19a096f027db6994e0802",
  "verification": {
    "reference": "docs/verification/Algebra/ConvergentsEquiv/Variant717e0fb20faf43737fd4662296ff6fd354aaa99e01d9dd71eda64cf3dd53c6ec.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e15cc21b-b239-a496-77fb-a7a1305ff8d6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 218–228.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem succ_nth_conv'_eq_squashGCF_nth_conv' :
    g.convs' (n + 1) = (squashGCF g n).convs' n := by
  cases n with
  | zero =>
    cases g_s_head_eq : g.s.get? 0 <;>
      simp [g_s_head_eq, squashGCF, convs', convs'Aux, Stream'.Seq.head]
  | succ =>
    simp only [succ_succ_nth_conv'Aux_eq_succ_nth_conv'Aux_squashSeq, convs',
      squashGCF]

/-- The auxiliary continuants before the squashed position stay the same. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/ConvergentsEquiv/Variant717e0fb20faf43737fd4662296ff6fd354aaa99e01d9dd71eda64cf3dd53c6ec.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/ConvergentsEquiv/Variant717e0fb20faf43737fd4662296ff6fd354aaa99e01d9dd71eda64cf3dd53c6ec.lean#L218).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `71bb0e6982734d471b0d8b2170fa29c4831a1de6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
