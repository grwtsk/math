# filterMapM_toArray

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:af453634-07b5-d6c4-61dd-2dcfc85aed3b",
  "kind": "theorem",
  "lexical_name": "filterMapM_toArray",
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
  "slug": "filtermapm-toarray--d3bd0dcd83089c988df6b246",
  "source": {
    "blob": "94ded2c5c6bf58c420f2b51be1da906e660f0055",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 330,
    "line": 318,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Monadic/Variant043d83de955e2519e555795cae4371c3c24dbc20bfc0819b39bb592a20654c11.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d3bd0dcd83089c988df6b246113bbacd07675c7534dd0711ac9e38b21ac235e3",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Monadic/Variant043d83de955e2519e555795cae4371c3c24dbc20bfc0819b39bb592a20654c11.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:af453634-07b5-d6c4-61dd-2dcfc85aed3b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 318–330.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[grind =] theorem filterMapM_toArray [Monad m] [LawfulMonad m] {l : List α} {f : α → m (Option β)} :
    l.toArray.filterMapM f = toArray <$> l.filterMapM f := by
  simp [Array.filterMapM, filterMapM]
  conv => lhs; rw [← reverse_nil]
  generalize [] = acc
  induction l generalizing acc with simp [filterMapM.loop]
  | cons x xs ih =>
    congr; funext o
    cases o
    · simp only [pure_bind]; exact ih acc
    · simp only [pure_bind]; rw [← List.reverse_cons]; exact ih _

/-- Variant of `filterMapM_toArray` with a side condition for the stop position. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Monadic/Variant043d83de955e2519e555795cae4371c3c24dbc20bfc0819b39bb592a20654c11.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Monadic/Variant043d83de955e2519e555795cae4371c3c24dbc20bfc0819b39bb592a20654c11.lean#L318).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `94ded2c5c6bf58c420f2b51be1da906e660f0055` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
