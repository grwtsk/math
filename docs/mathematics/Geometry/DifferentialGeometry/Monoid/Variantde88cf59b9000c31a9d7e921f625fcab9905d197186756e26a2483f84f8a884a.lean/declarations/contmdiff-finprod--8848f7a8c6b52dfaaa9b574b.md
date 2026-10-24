# contMDiff_finprod

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "23ff5ed7b529def0dd6022e6f9b6ddeb3eae49f5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 434,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/de/de88cf59b9000c31a9d7e921f625fcab9905d197186756e26a2483f84f8a884a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e5439369-e762-d2f8-78e0-aa850f43986b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3c5db1de-ad70-133a-9152-90b93c4f0373",
  "kind": "theorem",
  "lexical_name": "contMDiff_finprod",
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
  "slug": "contmdiff-finprod--8848f7a8c6b52dfaaa9b574b",
  "source": {
    "blob": "23ff5ed7b529def0dd6022e6f9b6ddeb3eae49f5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 438,
    "line": 434,
    "path": "GRWTSK/Geometry/DifferentialGeometry/Monoid/Variantde88cf59b9000c31a9d7e921f625fcab9905d197186756e26a2483f84f8a884a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8848f7a8c6b52dfaaa9b574b89f9ec395ddc820068f7843f155697d532ec819b",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/Monoid/Variantde88cf59b9000c31a9d7e921f625fcab9905d197186756e26a2483f84f8a884a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3c5db1de-ad70-133a-9152-90b93c4f0373`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 434–438.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem contMDiff_finprod (h : ∀ i, ContMDiff I' I n (f i))
    (hfin : LocallyFinite fun i => mulSupport (f i)) : ContMDiff I' I n fun x => ∏ᶠ i, f i x :=
  fun x ↦ contMDiffAt_finprod hfin fun i ↦ h i x

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/Monoid/Variantde88cf59b9000c31a9d7e921f625fcab9905d197186756e26a2483f84f8a884a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/Monoid/Variantde88cf59b9000c31a9d7e921f625fcab9905d197186756e26a2483f84f8a884a.lean#L434).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `23ff5ed7b529def0dd6022e6f9b6ddeb3eae49f5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
