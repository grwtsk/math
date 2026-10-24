# _root_.GRWTSK.Analysis.MeasureTheory.ELpNormAeeqFun.Variant23b9ecb4eac45165b2821c52c3eabe79fcc64b65ac9da8de246c23a57db2cc84.MeasureTheory.MemLp.neg_part

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:29f707fa-4381-d920-c32f-3fc8bdaef21b",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.Analysis.MeasureTheory.ELpNormAeeqFun.Variant23b9ecb4eac45165b2821c52c3eabe79fcc64b65ac9da8de246c23a57db2cc84.MeasureTheory.MemLp.neg_part",
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
  "slug": "root-grwtsk-analysis-measuretheory-elpnormaeeqfun-variant23b9ecb4eac4516--390cc22da917d738a3d20de8",
  "source": {
    "blob": "8f46409fee18d9ab42311db2c97b83043cdb18d3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 866,
    "line": 859,
    "path": "GRWTSK/Analysis/MeasureTheory/Basic/Variantd940992e27d2bb30fff00ff4f58b47bcf3bf2714682bc712d49867af6a4c8c27.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:390cc22da917d738a3d20de86f4b5821ba16544be80e01b858b25d08fec23700",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Basic/Variantd940992e27d2bb30fff00ff4f58b47bcf3bf2714682bc712d49867af6a4c8c27.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:29f707fa-4381-d920-c32f-3fc8bdaef21b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 859–866.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.Analysis.MeasureTheory.ELpNormAeeqFun.Variant23b9ecb4eac45165b2821c52c3eabe79fcc64b65ac9da8de246c23a57db2cc84.MeasureTheory.MemLp.neg_part {f : α → ℝ} (hf : MemLp f p μ) :
    MemLp (fun x => max (-f x) 0) p μ :=
  lipschitzWith_pos_part.comp_memLp (max_eq_right le_rfl) hf.neg

@[deprecated (since := "2025-02-21")]
alias _root_.MeasureTheory.Memℒp.neg_part := _root_.GRWTSK.Analysis.MeasureTheory.ELpNormAeeqFun.Variant23b9ecb4eac45165b2821c52c3eabe79fcc64b65ac9da8de246c23a57db2cc84.MeasureTheory.MemLp.neg_part

/-- Positive part of a function in `L^p`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Basic/Variantd940992e27d2bb30fff00ff4f58b47bcf3bf2714682bc712d49867af6a4c8c27.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Basic/Variantd940992e27d2bb30fff00ff4f58b47bcf3bf2714682bc712d49867af6a4c8c27.lean#L859).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8f46409fee18d9ab42311db2c97b83043cdb18d3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
