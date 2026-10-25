# Cache.insert

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6abbe3243ed443adfa8fd6170f6c5a1f11409bdc214a8d4ccebc31dcb6d685fa",
  "kind": "def",
  "lexical_name": "Cache.insert",
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
  "slug": "cache-insert--0c91cd45585b7baef7d1d24b",
  "source": {
    "blob": "8aa84c0eb0b6af118ad3e6f92cf97991b131e463",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 84,
    "line": 64,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Expr/Variant5ecc3e476b2772c2b547035af06747115f786e82eb1dc4131cb3f58ed44e37a7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0c91cd45585b7baef7d1d24bb35bb981bf401461cb324fa94cc7a38fa1002a4a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Expr/Variant5ecc3e476b2772c2b547035af06747115f786e82eb1dc4131cb3f58ed44e37a7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6abbe3243ed443adfa8fd6170f6c5a1f11409bdc214a8d4ccebc31dcb6d685fa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 64–84.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Cache.insert (cache : Cache aig) (expr : BVExpr w) (refs : AIG.RefVec aig w) :
    Cache aig :=
  let ⟨map, hbound⟩ := cache
  have := by
    intro i k hk h2
    rw [Std.DHashMap.get_insert]
    split
    next heq =>
      rcases k with ⟨w, expr⟩
      simp only [beq_iff_eq, Key.mk.injEq] at heq
      rcases heq with ⟨heq1, heq2⟩
      symm at heq1
      subst heq1
      have := refs.hrefs h2
      rw [getElem_congr_coll]
      · exact this
      · simp
    · apply hbound
  ⟨map.insert ⟨w, expr⟩ refs.refs, this⟩

@[inline]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Expr/Variant5ecc3e476b2772c2b547035af06747115f786e82eb1dc4131cb3f58ed44e37a7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Expr/Variant5ecc3e476b2772c2b547035af06747115f786e82eb1dc4131cb3f58ed44e37a7.lean#L64).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8aa84c0eb0b6af118ad3e6f92cf97991b131e463` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
