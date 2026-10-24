# jointMangoldtErrorWork_abs_le_localized_cutoff_ratio

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "afbb2e0df92f50447b257fe883d935d95b5ae3bb",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 58,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e7/e73f9c938c0ab36444bfcfd22e4e8dfaed9e3be5ebc006a85b1a29f3533e49f9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8e71738c-c493-989f-4259-2ae42d0ea3c5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5f0beaf0-5a06-9506-499f-f54279b3cc2c",
  "kind": "theorem",
  "lexical_name": "jointMangoldtErrorWork_abs_le_localized_cutoff_ratio",
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
  "slug": "jointmangoldterrorwork-abs-le-localized-cutoff-ratio--4b4812af0c9bf8f5751ffafb",
  "source": {
    "blob": "afbb2e0df92f50447b257fe883d935d95b5ae3bb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 66,
    "line": 58,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceSharpLocalizedWorkBound/Variante73f9c938c0ab36444bfcfd22e4e8dfaed9e3be5ebc006a85b1a29f3533e49f9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4b4812af0c9bf8f5751ffafb60da5eef1239d604c93c73cc15577e79fd93d3bd",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceSharpLocalizedWorkBound/Variante73f9c938c0ab36444bfcfd22e4e8dfaed9e3be5ebc006a85b1a29f3533e49f9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5f0beaf0-5a06-9506-499f-f54279b3cc2c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 58–66.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem jointMangoldtErrorWork_abs_le_localized_cutoff_ratio (A : ℝ) (hA : 1 ≤ A) :
    |jointMangoldtErrorWork A| ≤
      4 * (Real.log 4 + 4 + Real.log 2) * Real.exp A *
        (162826 / (7623 * A ^ 2) + 1 / 4) *
          ((vaughanCutoff A : ℝ) / ((vaughanCutoff A : ℝ) + 1)) := by
  simpa only [centeredErrorWork, sub_zero, jointMangoldtErrorWork, abs_zero, add_zero] using
    centeredErrorWork_abs_le_localized_cutoff_ratio A 0 hA

end FormalResearch.RiemannHypothesis.SourceSharpLocalizedWorkBound
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceSharpLocalizedWorkBound/Variante73f9c938c0ab36444bfcfd22e4e8dfaed9e3be5ebc006a85b1a29f3533e49f9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceSharpLocalizedWorkBound/Variante73f9c938c0ab36444bfcfd22e4e8dfaed9e3be5ebc006a85b1a29f3533e49f9.lean#L58).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `afbb2e0df92f50447b257fe883d935d95b5ae3bb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
