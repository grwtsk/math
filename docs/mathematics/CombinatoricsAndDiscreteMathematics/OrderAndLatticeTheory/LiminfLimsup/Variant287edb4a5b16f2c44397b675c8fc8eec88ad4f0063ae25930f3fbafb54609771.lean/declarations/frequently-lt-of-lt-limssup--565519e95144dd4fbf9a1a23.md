# frequently_lt_of_lt_limsSup

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3d8849fd-bf6e-92ea-e72e-9cc0d3481c33",
  "kind": "theorem",
  "lexical_name": "frequently_lt_of_lt_limsSup",
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
  "slug": "frequently-lt-of-lt-limssup--565519e95144dd4fbf9a1a23",
  "source": {
    "blob": "2a6c9b1c992f71b1d8cb64deba8c95c2f581e5cb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1157,
    "line": 1149,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LiminfLimsup/Variant287edb4a5b16f2c44397b675c8fc8eec88ad4f0063ae25930f3fbafb54609771.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:565519e95144dd4fbf9a1a23fffbac7868f3128c52b8146cef62613526350a29",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LiminfLimsup/Variant287edb4a5b16f2c44397b675c8fc8eec88ad4f0063ae25930f3fbafb54609771.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3d8849fd-bf6e-92ea-e72e-9cc0d3481c33`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1149–1157.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem frequently_lt_of_lt_limsSup {f : Filter α} [ConditionallyCompleteLinearOrder α] {a : α}
    (hf : f.IsCobounded (· ≤ ·) := by isBoundedDefault)
    (h : a < limsSup f) : ∃ᶠ n in f, a < n := by
  contrapose! h
  simp only [not_frequently, not_lt] at h
  exact limsSup_le_of_le hf h
set_option linter.uppercaseLean3 false in
#align filter.frequently_lt_of_lt_Limsup Filter.frequently_lt_of_lt_limsSup

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LiminfLimsup/Variant287edb4a5b16f2c44397b675c8fc8eec88ad4f0063ae25930f3fbafb54609771.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LiminfLimsup/Variant287edb4a5b16f2c44397b675c8fc8eec88ad4f0063ae25930f3fbafb54609771.lean#L1149).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2a6c9b1c992f71b1d8cb64deba8c95c2f581e5cb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
