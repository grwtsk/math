# natCast_eq_zero_or_one_of_two_eq_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:39c4580b-7131-313f-5935-fd50c86122ea",
  "kind": "theorem",
  "lexical_name": "natCast_eq_zero_or_one_of_two_eq_zero",
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
  "slug": "natcast-eq-zero-or-one-of-two-eq-zero--f0d74e21f37e0933c3447f3a",
  "source": {
    "blob": "01ba50e600641bc632d8fc45cf7f2db2e20a0068",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 397,
    "line": 391,
    "path": "GRWTSK/Algebra/Parity/Variantfff58cae674341c31b72321e7da2f94866b196840add6d79f7ddf98609965092.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f0d74e21f37e0933c3447f3aab6399752b63d96f0626d58f8026aeb3883457ab",
  "verification": {
    "reference": "docs/verification/Algebra/Parity/Variantfff58cae674341c31b72321e7da2f94866b196840add6d79f7ddf98609965092.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:39c4580b-7131-313f-5935-fd50c86122ea`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 391–397.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem natCast_eq_zero_or_one_of_two_eq_zero (n : ℕ) (h : (2 : R) = 0) :
    (n : R) = 0 ∨ (n : R) = 1 := by
  obtain hn | hn := Nat.even_or_odd n
  · exact Or.inl <| natCast_eq_zero_of_even_of_two_eq_zero hn h
  · exact Or.inr <| natCast_eq_one_of_odd_of_two_eq_zero hn h

end CharTwo
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Parity/Variantfff58cae674341c31b72321e7da2f94866b196840add6d79f7ddf98609965092.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Parity/Variantfff58cae674341c31b72321e7da2f94866b196840add6d79f7ddf98609965092.lean#L391).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `01ba50e600641bc632d8fc45cf7f2db2e20a0068` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
