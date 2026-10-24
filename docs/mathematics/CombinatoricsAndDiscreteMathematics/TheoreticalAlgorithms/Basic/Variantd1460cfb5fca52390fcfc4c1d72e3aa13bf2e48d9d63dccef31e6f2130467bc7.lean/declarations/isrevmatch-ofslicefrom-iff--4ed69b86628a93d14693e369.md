# isRevMatch_ofSliceFrom_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "850079f67d6ba4720fd9eb1b13a853cbfcbf4aab",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 146,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d1/d1460cfb5fca52390fcfc4c1d72e3aa13bf2e48d9d63dccef31e6f2130467bc7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4fdcb4fc-9b17-fdaa-b791-a128c6355314",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:80b01bcd-c2fc-1313-3211-571e9f25755d",
  "kind": "theorem",
  "lexical_name": "isRevMatch_ofSliceFrom_iff",
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
  "slug": "isrevmatch-ofslicefrom-iff--4ed69b86628a93d14693e369",
  "source": {
    "blob": "850079f67d6ba4720fd9eb1b13a853cbfcbf4aab",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 157,
    "line": 146,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantd1460cfb5fca52390fcfc4c1d72e3aa13bf2e48d9d63dccef31e6f2130467bc7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4ed69b86628a93d14693e369c53cb65d9cfbb53a1e71165c8cec28aae9a4362c",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantd1460cfb5fca52390fcfc4c1d72e3aa13bf2e48d9d63dccef31e6f2130467bc7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:80b01bcd-c2fc-1313-3211-571e9f25755d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 146–157.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isRevMatch_ofSliceFrom_iff {pat : ρ} [PatternModel pat] {s : Slice} {p : s.Pos} {pos : (s.sliceFrom p).Pos} :
    IsRevMatch pat (Pos.ofSliceFrom pos) ↔ IsRevMatch pat pos := by
  rw [← isRevMatch_sliceFrom_iff (p := p) (h := Pos.le_ofSliceFrom), Pos.sliceFrom_ofSliceFrom]

/--
Predicate stating that the region between the start of the slice {name}`s` and the position
{name}`pos` matches the pattern {name}`pat`, and that there is no longer match starting at the
beginning of the slice. This is what a correct matcher should match.

In some cases, being a match and being a longest match will coincide, see
{name (scope := "Init.Data.String.Lemmas.Pattern.Basic")}`String.Slice.Pattern.Model.NoPrefixPatternModel`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantd1460cfb5fca52390fcfc4c1d72e3aa13bf2e48d9d63dccef31e6f2130467bc7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantd1460cfb5fca52390fcfc4c1d72e3aa13bf2e48d9d63dccef31e6f2130467bc7.lean#L146).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `850079f67d6ba4720fd9eb1b13a853cbfcbf4aab` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
