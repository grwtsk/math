# logRatioPrimitive_hasDerivAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a72de2c69fa53f906a9ff18963b7b7575eac467d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 59,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a2/a28cc11340c1d8e96925c503e423ab06821b920ed43ad0a47a9cb93f0d0fc913.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:03c0b7a5-12c7-6c81-4379-1c55151fdac0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4c32f0a0-748b-a222-2941-ed4011c937cf",
  "kind": "theorem",
  "lexical_name": "logRatioPrimitive_hasDerivAt",
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
  "slug": "logratioprimitive-hasderivat--612e8d9d423337a267a033a7",
  "source": {
    "blob": "a72de2c69fa53f906a9ff18963b7b7575eac467d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 67,
    "line": 59,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/MobiusQuadratureBound/Varianta28cc11340c1d8e96925c503e423ab06821b920ed43ad0a47a9cb93f0d0fc913.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:612e8d9d423337a267a033a7740b8f461452139749e14e2faf60b6fc05fa0145",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/MobiusQuadratureBound/Varianta28cc11340c1d8e96925c503e423ab06821b920ed43ad0a47a9cb93f0d0fc913.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4c32f0a0-748b-a222-2941-ed4011c937cf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 59–67.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem logRatioPrimitive_hasDerivAt (x t : ℝ) (hx : 0 < x) (ht : 0 < t) :
    HasDerivAt (logRatioPrimitive x) (logRatioSquare x t) t := by
  have hd := (Real.hasDerivAt_log ht.ne').const_sub (Real.log x)
  have h := (hasDerivAt_id t).mul (((hd.pow 2).add (hd.const_mul 2)).add_const 2)
  apply h.congr_deriv
  simp only [logRatioSquare, Real.log_div hx.ne' ht.ne', id_eq, Pi.add_apply, Pi.pow_apply]
  field_simp
  ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/MobiusQuadratureBound/Varianta28cc11340c1d8e96925c503e423ab06821b920ed43ad0a47a9cb93f0d0fc913.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/MobiusQuadratureBound/Varianta28cc11340c1d8e96925c503e423ab06821b920ed43ad0a47a9cb93f0d0fc913.lean#L59).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a72de2c69fa53f906a9ff18963b7b7575eac467d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
