# BoundedAtFilter.mul_zeroAtFilter

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "482e969672dbe20125d0d151f414ac6b63d9a7f7",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 112,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/53/53cc3e1df553ecfb354bd0da9ac6ee94f568e069a26225be7fe249523c0a1468.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:01b3f3b9-2460-357d-4a32-5db011cbc2fa",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:cd74b5c1-15c1-7386-d01e-4372b772a99e",
  "kind": "theorem",
  "lexical_name": "BoundedAtFilter.mul_zeroAtFilter",
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
  "slug": "boundedatfilter-mul-zeroatfilter--22136f0cb9e4755a4dfcabb2",
  "source": {
    "blob": "482e969672dbe20125d0d151f414ac6b63d9a7f7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 118,
    "line": 112,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/ZeroAndBoundedAtFilter/Variant53cc3e1df553ecfb354bd0da9ac6ee94f568e069a26225be7fe249523c0a1468.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:22136f0cb9e4755a4dfcabb215c36fd7e14055c654da8405ddd3ee36757d2389",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/ZeroAndBoundedAtFilter/Variant53cc3e1df553ecfb354bd0da9ac6ee94f568e069a26225be7fe249523c0a1468.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cd74b5c1-15c1-7386-d01e-4372b772a99e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 112–118.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem BoundedAtFilter.mul_zeroAtFilter [SeminormedRing β] {l : Filter α}
    {f g : α → β} (hf : BoundedAtFilter l f) (hg : ZeroAtFilter l g) : ZeroAtFilter l (f * g) := by
  rw [ZeroAtFilter, ← Asymptotics.isLittleO_one_iff (F := ℝ)] at hg ⊢
  simpa using! hf.mul_isLittleO hg

variable (𝕜) in
/-- The submodule of functions that are bounded along a filter `l`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/ZeroAndBoundedAtFilter/Variant53cc3e1df553ecfb354bd0da9ac6ee94f568e069a26225be7fe249523c0a1468.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/ZeroAndBoundedAtFilter/Variant53cc3e1df553ecfb354bd0da9ac6ee94f568e069a26225be7fe249523c0a1468.lean#L112).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `482e969672dbe20125d0d151f414ac6b63d9a7f7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
