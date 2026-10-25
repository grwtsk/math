# Cache.get?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8a2e99337295e79f47a124ec7474ce5043f4255df36bac50b70e114059d04633",
  "kind": "def",
  "lexical_name": "Cache.get?",
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
  "slug": "cache-get--95a0eb9c5203e1b6f51f9b0e",
  "source": {
    "blob": "8aa84c0eb0b6af118ad3e6f92cf97991b131e463",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 101,
    "line": 85,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Expr/Variant5ecc3e476b2772c2b547035af06747115f786e82eb1dc4131cb3f58ed44e37a7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:95a0eb9c5203e1b6f51f9b0e432323addd646d9da23e697487b634a326b6430d",
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

Occurrence: `declaration:8a2e99337295e79f47a124ec7474ce5043f4255df36bac50b70e114059d04633`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 85–101.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Cache.get? (cache : Cache aig) (expr : BVExpr w) : Option (AIG.RefVec aig w) :=
  match h : cache.map.get? ⟨w, expr⟩ with
  | some refs =>
    have : ⟨w, expr⟩ ∈ cache.map := by
      rw [Std.DHashMap.mem_iff_contains, Std.DHashMap.contains_eq_isSome_get?]
      simp [h]
    have : cache.map.get ⟨w, expr⟩ this = refs := by
      rw [Std.DHashMap.get?_eq_some_get (h := this)] at h
      simpa using h
    have := by
      intro i hi
      rw [← this]
      apply cache.hbound
    some ⟨refs, this⟩
  | none => none

@[inline]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Expr/Variant5ecc3e476b2772c2b547035af06747115f786e82eb1dc4131cb3f58ed44e37a7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Expr/Variant5ecc3e476b2772c2b547035af06747115f786e82eb1dc4131cb3f58ed44e37a7.lean#L85).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8aa84c0eb0b6af118ad3e6f92cf97991b131e463` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
