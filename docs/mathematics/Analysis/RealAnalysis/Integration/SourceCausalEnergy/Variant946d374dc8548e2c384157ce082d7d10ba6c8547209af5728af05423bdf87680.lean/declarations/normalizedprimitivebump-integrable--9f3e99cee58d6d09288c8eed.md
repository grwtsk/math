# normalizedPrimitiveBump_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2b81d2fcf7c822ff81e1c6f43577dbe170a10bf5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 297,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/94/946d374dc8548e2c384157ce082d7d10ba6c8547209af5728af05423bdf87680.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c11a579f-e20a-ea6e-80b5-e74c311b41b4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:21525dbe-9f2f-cb14-0e06-554de4b12fe2",
  "kind": "theorem",
  "lexical_name": "normalizedPrimitiveBump_integrable",
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
  "slug": "normalizedprimitivebump-integrable--9f3e99cee58d6d09288c8eed",
  "source": {
    "blob": "2b81d2fcf7c822ff81e1c6f43577dbe170a10bf5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 302,
    "line": 297,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceCausalEnergy/Variant946d374dc8548e2c384157ce082d7d10ba6c8547209af5728af05423bdf87680.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9f3e99cee58d6d09288c8eedfccce2bc44d29700fbc6406a4a515a13bddeb905",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceCausalEnergy/Variant946d374dc8548e2c384157ce082d7d10ba6c8547209af5728af05423bdf87680.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:21525dbe-9f2f-cb14-0e06-554de4b12fe2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 297–302.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem normalizedPrimitiveBump_integrable {A : ℝ} (hA : 0 < A) :
    Integrable (normalizedPrimitiveBump A) :=
  (normalizedPrimitiveBump_contDiff hA).continuous.integrable_of_hasCompactSupport
    (normalizedPrimitiveBump_hasCompactSupport hA)

/-- The actual first derivative is integrable separately from its energy. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceCausalEnergy/Variant946d374dc8548e2c384157ce082d7d10ba6c8547209af5728af05423bdf87680.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceCausalEnergy/Variant946d374dc8548e2c384157ce082d7d10ba6c8547209af5728af05423bdf87680.lean#L297).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2b81d2fcf7c822ff81e1c6f43577dbe170a10bf5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
