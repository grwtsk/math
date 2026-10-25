# compileToNand_correct

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7aee5976-0b08-91ac-68a1-c8638695d802",
  "kind": "theorem",
  "lexical_name": "compileToNand_correct",
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
  "slug": "compiletonand-correct--fccd6bcb1b2bef72cd35803d",
  "source": {
    "blob": "652013a73e805be4af37d2168cdbd95ed8bfb800",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 57,
    "line": 36,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Completeness/Variant05dc28db5c704610177df42a1f17d9518c5554b8a9f141602150c63444a487cb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fccd6bcb1b2bef72cd35803ddadf91f2937e996996c4becf2a5abe18a758e7b0",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Completeness/Variant05dc28db5c704610177df42a1f17d9518c5554b8a9f141602150c63444a487cb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7aee5976-0b08-91ac-68a1-c8638695d802`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 36–57.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem compileToNand_correct
    (e : BoolExpr)
    (ρ : Env) :
    (compileToNand e).eval ρ = e.eval ρ := by
  induction e with
  | var n =>
      rfl
  | tru =>
      simp [compileToNand]
  | fls =>
      simp [compileToNand]
  | not e ih =>
      simp [compileToNand, ih]
  | and a b iha ihb =>
      simp [compileToNand, iha, ihb]
  | or a b iha ihb =>
      simp [compileToNand, iha, ihb]
  | xor a b iha ihb =>
      simp [compileToNand, iha, ihb]

end Boolean
end Folder
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Completeness/Variant05dc28db5c704610177df42a1f17d9518c5554b8a9f141602150c63444a487cb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Completeness/Variant05dc28db5c704610177df42a1f17d9518c5554b8a9f141602150c63444a487cb.lean#L36).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `652013a73e805be4af37d2168cdbd95ed8bfb800` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
