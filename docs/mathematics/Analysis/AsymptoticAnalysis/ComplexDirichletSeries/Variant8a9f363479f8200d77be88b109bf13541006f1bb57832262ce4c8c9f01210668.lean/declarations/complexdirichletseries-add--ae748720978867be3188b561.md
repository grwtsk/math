# complexDirichletSeries_add

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9f7b18ef-b355-d4a1-192a-8fce904a2188",
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
  "slug": "complexdirichletseries-add--ae748720978867be3188b561",
  "source": {
    "blob": "2ec836b78837d40512a8dd164142791f01dbef8c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 106,
    "line": 80,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/ComplexDirichletSeries/Variant8a9f363479f8200d77be88b109bf13541006f1bb57832262ce4c8c9f01210668.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ae748720978867be3188b56160aef243f088956d10ecd80e129174604d4b73d3",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/ComplexDirichletSeries/Variant8a9f363479f8200d77be88b109bf13541006f1bb57832262ce4c8c9f01210668.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9f7b18ef-b355-d4a1-192a-8fce904a2188`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 80–106.

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

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/ComplexDirichletSeries/Variant8a9f363479f8200d77be88b109bf13541006f1bb57832262ce4c8c9f01210668.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/ComplexDirichletSeries/Variant8a9f363479f8200d77be88b109bf13541006f1bb57832262ce4c8c9f01210668.lean#L80).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2ec836b78837d40512a8dd164142791f01dbef8c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
