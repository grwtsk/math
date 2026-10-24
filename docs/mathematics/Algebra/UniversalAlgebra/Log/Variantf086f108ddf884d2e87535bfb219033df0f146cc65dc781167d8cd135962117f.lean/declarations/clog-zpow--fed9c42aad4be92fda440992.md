# clog_zpow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e5708f0f9708d24657af8549151c40079f580cf3",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 268,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f0/f086f108ddf884d2e87535bfb219033df0f146cc65dc781167d8cd135962117f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9df5420b-cee1-fffb-e94e-06266bc4d83a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b2a58033-0c75-8f08-9fa7-3e8d4424c7e8",
  "kind": "theorem",
  "lexical_name": "clog_zpow",
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
  "slug": "clog-zpow--fed9c42aad4be92fda440992",
  "source": {
    "blob": "e5708f0f9708d24657af8549151c40079f580cf3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 272,
    "line": 268,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Log/Variantf086f108ddf884d2e87535bfb219033df0f146cc65dc781167d8cd135962117f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fed9c42aad4be92fda44099268a3db26bfcd75a7a735792c3a76c2a125739c4b",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Log/Variantf086f108ddf884d2e87535bfb219033df0f146cc65dc781167d8cd135962117f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b2a58033-0c75-8f08-9fa7-3e8d4424c7e8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 268–272.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem clog_zpow {b : ℕ} (hb : 1 < b) (z : ℤ) : clog b ((b : R) ^ z : R) = z := by
  rw [← neg_log_inv_eq_clog, ← zpow_neg, log_zpow hb, neg_neg]
#align int.clog_zpow Int.clog_zpow

@[mono]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Log/Variantf086f108ddf884d2e87535bfb219033df0f146cc65dc781167d8cd135962117f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Log/Variantf086f108ddf884d2e87535bfb219033df0f146cc65dc781167d8cd135962117f.lean#L268).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e5708f0f9708d24657af8549151c40079f580cf3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
