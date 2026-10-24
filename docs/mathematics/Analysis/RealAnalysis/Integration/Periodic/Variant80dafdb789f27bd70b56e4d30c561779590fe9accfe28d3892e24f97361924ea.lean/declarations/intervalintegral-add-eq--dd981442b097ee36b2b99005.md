# intervalIntegral_add_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ebc1d08d-0017-c429-06ed-d8d271f638f7",
  "kind": "theorem",
  "lexical_name": "intervalIntegral_add_eq",
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
  "slug": "intervalintegral-add-eq--dd981442b097ee36b2b99005",
  "source": {
    "blob": "1bce6106f3aebf44b66be58d8a8f82ff3650dd41",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 312,
    "line": 302,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Periodic/Variant80dafdb789f27bd70b56e4d30c561779590fe9accfe28d3892e24f97361924ea.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dd981442b097ee36b2b990052516b17fa5135e00c5f1655961aae28f1bf05c67",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Periodic/Variant80dafdb789f27bd70b56e4d30c561779590fe9accfe28d3892e24f97361924ea.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ebc1d08d-0017-c429-06ed-d8d271f638f7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 302–312.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem intervalIntegral_add_eq (hf : Periodic f T) (t s : ℝ) :
    ∫ x in t..t + T, f x = ∫ x in s..s + T, f x := by
  rcases lt_trichotomy (0 : ℝ) T with (hT | rfl | hT)
  · exact hf.intervalIntegral_add_eq_of_pos hT t s
  · simp
  · rw [← neg_inj, ← integral_symm, ← integral_symm]
    simpa only [← sub_eq_add_neg, add_sub_cancel_right] using
      hf.neg.intervalIntegral_add_eq_of_pos (neg_pos.2 hT) (t + T) (s + T)

/-- If `f` is an integrable periodic function with period `T`, then its integral over `[t, s + T]`
is the sum of its integrals over the intervals `[t, s]` and `[t, t + T]`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Periodic/Variant80dafdb789f27bd70b56e4d30c561779590fe9accfe28d3892e24f97361924ea.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Periodic/Variant80dafdb789f27bd70b56e4d30c561779590fe9accfe28d3892e24f97361924ea.lean#L302).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1bce6106f3aebf44b66be58d8a8f82ff3650dd41` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
