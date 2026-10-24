# _root_.GRWTSK.Analysis.MeasureTheory.ELpNormAeeqFun.Variant4fc6ebac08d43b0098dbbfdca2f88c8ca9afebfc1a459711e3b9d78520ba96cb.MeasureTheory.memLp_re_im_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f687dbcd-dc0b-7379-2060-e02b8785a2db",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.Analysis.MeasureTheory.ELpNormAeeqFun.Variant4fc6ebac08d43b0098dbbfdca2f88c8ca9afebfc1a459711e3b9d78520ba96cb.MeasureTheory.memLp_re_im_iff",
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
  "slug": "root-grwtsk-analysis-measuretheory-elpnormaeeqfun-variant4fc6ebac08d43b0--16e01db8f1254ce815c376ae",
  "source": {
    "blob": "e1f0f7c4a292a1673c78326b4b09a8e389d55ab0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 817,
    "line": 807,
    "path": "GRWTSK/Analysis/MeasureTheory/Basic/Variantb14cca8c1c20b98feda4bb99e3e44e619b9dcd28f25cf658b7215cfbd0fcc511.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:16e01db8f1254ce815c376ae5719174d57d434ce9a22a0896047186c775cfdce",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Basic/Variantb14cca8c1c20b98feda4bb99e3e44e619b9dcd28f25cf658b7215cfbd0fcc511.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f687dbcd-dc0b-7379-2060-e02b8785a2db`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 807–817.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.Analysis.MeasureTheory.ELpNormAeeqFun.Variant4fc6ebac08d43b0098dbbfdca2f88c8ca9afebfc1a459711e3b9d78520ba96cb.MeasureTheory.memLp_re_im_iff {f : α → K} :
    MemLp (fun x ↦ RCLike.re (f x)) p μ ∧ MemLp (fun x ↦ RCLike.im (f x)) p μ ↔
      MemLp f p μ := by
  refine ⟨?_, fun hf => ⟨hf.re, hf.im⟩⟩
  rintro ⟨hre, him⟩
  convert! MeasureTheory.MemLp.add (ε := K) hre.ofReal (him.ofReal.const_mul RCLike.I)
  ext1 x
  rw [Pi.add_apply, mul_comm, RCLike.re_add_im]

end RCLike

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Basic/Variantb14cca8c1c20b98feda4bb99e3e44e619b9dcd28f25cf658b7215cfbd0fcc511.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Basic/Variantb14cca8c1c20b98feda4bb99e3e44e619b9dcd28f25cf658b7215cfbd0fcc511.lean#L807).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e1f0f7c4a292a1673c78326b4b09a8e389d55ab0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
