# finrank_span_le_finrank

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4f0dad3c-8ce4-ecf1-3044-77a52669a9bd",
  "kind": "theorem",
  "lexical_name": "finrank_span_le_finrank",
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
  "slug": "finrank-span-le-finrank--a13c1f23d1df87b59b3b0ad7",
  "source": {
    "blob": "3f50257f6955044bc48ad9ab285ddfdc7d850cde",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 148,
    "line": 138,
    "path": "GRWTSK/Algebra/LinearAlgebra/DivisionRing/Variant20a84973e800937e55177b0a631353f98008b6eb18adb4655d34fed32644ad72.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a13c1f23d1df87b59b3b0ad738a84ae0bec1893595874d18ffc41cd5f2681bb0",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/DivisionRing/Variant20a84973e800937e55177b0a631353f98008b6eb18adb4655d34fed32644ad72.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4f0dad3c-8ce4-ecf1-3044-77a52669a9bd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 138–148.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finrank_span_le_finrank (h : M.FG) : finrank K (span K (M : Set V)) ≤ finrank R M := by
  apply finrank_le_of_rank_le
  have : Module.Finite R M := Module.Finite.of_fg h
  rw [finrank_eq_rank]
  exact rank_span_le_rank M

/-- The `K`-rank of the `K`-span of a finite set `s` in `V` is at most the `R`-rank of the
`R`-span of `s`.

This is the `Module.finrank` version of `Submodule.rank_span_le_rank_span`; see also
`Submodule.finrank_span_eq_finrank_span` for an equality in a different setting. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/DivisionRing/Variant20a84973e800937e55177b0a631353f98008b6eb18adb4655d34fed32644ad72.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/DivisionRing/Variant20a84973e800937e55177b0a631353f98008b6eb18adb4655d34fed32644ad72.lean#L138).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3f50257f6955044bc48ad9ab285ddfdc7d850cde` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
