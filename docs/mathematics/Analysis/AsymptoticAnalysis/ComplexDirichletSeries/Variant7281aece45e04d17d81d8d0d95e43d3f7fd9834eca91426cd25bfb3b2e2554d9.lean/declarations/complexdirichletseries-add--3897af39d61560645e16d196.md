# complexDirichletSeries_add

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f7540aab9d95b6222ad12d00e0893f765c752019",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 72,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/72/7281aece45e04d17d81d8d0d95e43d3f7fd9834eca91426cd25bfb3b2e2554d9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6b792192-a547-3121-9751-ee6264daf0e0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1fa213fc-1803-1b7b-5d30-fd8bf72118fb",
  "kind": "theorem",
  "lexical_name": "complexDirichletSeries_add",
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
  "slug": "complexdirichletseries-add--3897af39d61560645e16d196",
  "source": {
    "blob": "f7540aab9d95b6222ad12d00e0893f765c752019",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 98,
    "line": 72,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/ComplexDirichletSeries/Variant7281aece45e04d17d81d8d0d95e43d3f7fd9834eca91426cd25bfb3b2e2554d9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3897af39d61560645e16d19626c900ece0cb9f8a27bfc0ed1622f71e81b05e8b",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/ComplexDirichletSeries/Variant7281aece45e04d17d81d8d0d95e43d3f7fd9834eca91426cd25bfb3b2e2554d9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1fa213fc-1803-1b7b-5d30-fd8bf72118fb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 72–98.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem complexDirichletSeries_add
    (a b : ArithFn Complex)
    (s : Complex)
    (ha : ComplexDirichletAbsSummable a s)
    (hb : ComplexDirichletAbsSummable b s) :
    complexDirichletSeries (fun n => a n + b n) s =
      complexDirichletSeries a s + complexDirichletSeries b s := by
  have ha' : Summable fun n => complexDirichletTerm a s n :=
    Summable.of_norm ha
  have hb' : Summable fun n => complexDirichletTerm b s n :=
    Summable.of_norm hb
  have hterm :
      (fun n => complexDirichletTerm (fun n => a n + b n) s n) =
        fun n => complexDirichletTerm a s n + complexDirichletTerm b s n := by
    funext n
    simp [complexDirichletTerm, add_mul]
  calc
    complexDirichletSeries (fun n => a n + b n) s
        = ∑' n : Nat,
            (complexDirichletTerm a s n + complexDirichletTerm b s n) := by
            simp [complexDirichletSeries, hterm]
    _ = complexDirichletSeries a s + complexDirichletSeries b s := by
            simpa [complexDirichletSeries] using ha'.tsum_add hb'

end AnalyticNumberTheory
end Rebuild
end Folder
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/ComplexDirichletSeries/Variant7281aece45e04d17d81d8d0d95e43d3f7fd9834eca91426cd25bfb3b2e2554d9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/ComplexDirichletSeries/Variant7281aece45e04d17d81d8d0d95e43d3f7fd9834eca91426cd25bfb3b2e2554d9.lean#L72).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f7540aab9d95b6222ad12d00e0893f765c752019` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
