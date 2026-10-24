# part_hi_le_hi

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "503299e995e73d1768f22a63316db017b5f817b8",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 325,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4b/4bce2fd71f252243967886b67354ae665dc47acf72fbedf0411f640a8d7e16f2.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2156bf4c-4fd7-3757-f320-8fb8eabde2ca",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d2ede88d-11f2-c280-3fe7-0f1d967e5dc1",
  "kind": "theorem",
  "lexical_name": "part_hi_le_hi",
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
  "slug": "part-hi-le-hi--6f16d7b992bf8a66b34976fd",
  "source": {
    "blob": "503299e995e73d1768f22a63316db017b5f817b8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 347,
    "line": 325,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/IntegrationDyadic/Variant4bce2fd71f252243967886b67354ae665dc47acf72fbedf0411f640a8d7e16f2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6f16d7b992bf8a66b34976fdf3a9990072b82df04e5676e4ae0f72d9adb99421",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/IntegrationDyadic/Variant4bce2fd71f252243967886b67354ae665dc47acf72fbedf0411f640a8d7e16f2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d2ede88d-11f2-c280-3fe7-0f1d967e5dc1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 325–347.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem part_hi_le_hi (parts : List IntervalRat) (I : IntervalRat)
    (hcover : ListPartitionCovers parts I) (k : ℕ) (hk : k < parts.length) :
    (parts[k]'hk).hi ≤ I.hi := by
  suffices h : ∀ j, k + j + 1 = parts.length → (parts[k]'hk).hi ≤ I.hi from
    h (parts.length - k - 1) (by omega)
  intro j
  induction j generalizing k with
  | zero =>
    intro hkn
    have : parts[k]'hk = parts.getLast hcover.nonempty := by
      rw [List.getLast_eq_getElem]; congr 1; omega
    rw [congrArg IntervalRat.hi this]
    exact hcover.last_hi ▸ le_refl _
  | succ j ih =>
    intro hkj
    have hk1 : k + 1 < parts.length := by omega
    calc (parts[k]'hk).hi = (parts[k + 1]'hk1).lo := hcover.adjacent k hk1
      _ ≤ (parts[k + 1]'hk1).hi := (parts[k + 1]'hk1).le
      _ ≤ I.hi := ih (k + 1) hk1 (by omega)

/-- The integral is contained in the list-based integration bound.
    Proved by showing each sub-integral is bounded, then using `sum_mem_foldl_add`.
    The key step is splitting `∫_{I.lo}^{I.hi}` into `∑ ∫_{parts[k].lo}^{parts[k].hi}`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/IntegrationDyadic/Variant4bce2fd71f252243967886b67354ae665dc47acf72fbedf0411f640a8d7e16f2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/IntegrationDyadic/Variant4bce2fd71f252243967886b67354ae665dc47acf72fbedf0411f640a8d7e16f2.lean#L325).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `503299e995e73d1768f22a63316db017b5f817b8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
