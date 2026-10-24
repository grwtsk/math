# Pos.apply_eq_true_of_lt_skipWhile_bool

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:94f368be-b575-1a90-7e58-09c16c29b6f1",
  "kind": "theorem",
  "lexical_name": "Pos.apply_eq_true_of_lt_skipWhile_bool",
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
  "slug": "pos-apply-eq-true-of-lt-skipwhile-bool--8061c28e2b436a007a983cba",
  "source": {
    "blob": "e62c364877606ec1d06631b20cb4765b2fd7d3c7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 332,
    "line": 327,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pred/Variant42dbf4e594efe083a9d72be300742ee380768576a351ec250528cba7752a9959.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8061c28e2b436a007a983cba257ccb2410e03b23e487923338b77255b925ed0e",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pred/Variant42dbf4e594efe083a9d72be300742ee380768576a351ec250528cba7752a9959.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:94f368be-b575-1a90-7e58-09c16c29b6f1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 327–332.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Pos.apply_eq_true_of_lt_skipWhile_bool {p : Char → Bool} {s : String} {pos pos' : s.Pos}
    (h₁ : pos ≤ pos') (h₂ : pos' < pos.skipWhile p) : p (pos'.get (ne_endPos_of_lt h₂)) = true := by
  rw [Pos.get_eq_get_toSlice]
  exact Slice.Pos.apply_eq_true_of_lt_skipWhile_bool (toSlice_le_toSlice_iff.2 h₁)
    (by simpa [skipWhile_eq_skipWhile_toSlice] using! h₂)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pred/Variant42dbf4e594efe083a9d72be300742ee380768576a351ec250528cba7752a9959.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pred/Variant42dbf4e594efe083a9d72be300742ee380768576a351ec250528cba7752a9959.lean#L327).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e62c364877606ec1d06631b20cb4765b2fd7d3c7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
