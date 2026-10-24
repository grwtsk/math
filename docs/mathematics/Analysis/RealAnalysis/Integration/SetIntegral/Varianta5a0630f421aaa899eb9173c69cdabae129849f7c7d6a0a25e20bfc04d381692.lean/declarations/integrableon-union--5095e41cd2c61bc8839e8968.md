# IntegrableOn.union

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ffed85567055957af5325ba9761e2f3ebd7792e5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 40,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a5/a5a0630f421aaa899eb9173c69cdabae129849f7c7d6a0a25e20bfc04d381692.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:235fc942-c2f8-8851-1e0f-35854add34a8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:83870075-7971-3d76-35a8-9c2bdbf52ebf",
  "kind": "theorem",
  "lexical_name": "IntegrableOn.union",
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
  "slug": "integrableon-union--5095e41cd2c61bc8839e8968",
  "source": {
    "blob": "ffed85567055957af5325ba9761e2f3ebd7792e5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 48,
    "line": 40,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SetIntegral/Varianta5a0630f421aaa899eb9173c69cdabae129849f7c7d6a0a25e20bfc04d381692.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5095e41cd2c61bc8839e896814af11d018efca51329577e0c40ac699ee239b59",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SetIntegral/Varianta5a0630f421aaa899eb9173c69cdabae129849f7c7d6a0a25e20bfc04d381692.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:83870075-7971-3d76-35a8-9c2bdbf52ebf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 40–48.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IntegrableOn.union (hs : MeasurableSet s) (ht : MeasurableSet t)
    (hf : μ.IntegrableOn f s) (h'f : μ.IntegrableOn f t) :
    μ.IntegrableOn f (s ∪ t) := by
  apply Integrable.mono_measure (hf.add_measure h'f)
  grw [variation_restrict_le, Measure.restrict_union_le]
  simp [variation_restrict, hs, ht]

/- `simpNF` complains that this lemma can be proved by `simp`, because the `simp`-generated lemma
unfolds the abbrev `VectorMeasure.Integrable`. TODO: fix `simp`. See lean4#13958. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SetIntegral/Varianta5a0630f421aaa899eb9173c69cdabae129849f7c7d6a0a25e20bfc04d381692.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SetIntegral/Varianta5a0630f421aaa899eb9173c69cdabae129849f7c7d6a0a25e20bfc04d381692.lean#L40).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ffed85567055957af5325ba9761e2f3ebd7792e5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
