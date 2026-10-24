# geom_mean_le_arith_mean3_weighted

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "695b7766d64f0324ce6af502e548a5e3de8e4aca",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 291,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/04/046af7a520e9be75611353ab163ec99ed39ff6b7cfc97a97625f99b1e06eb71a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f272ff8a-9a9a-5ccf-ee70-a9e66feff21d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0000b087-659f-3426-005f-f14913da6b88",
  "kind": "theorem",
  "lexical_name": "geom_mean_le_arith_mean3_weighted",
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
  "slug": "geom-mean-le-arith-mean3-weighted--ee839b38ade4ef541c2733a5",
  "source": {
    "blob": "695b7766d64f0324ce6af502e548a5e3de8e4aca",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 297,
    "line": 291,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/MeanInequalities/Variant046af7a520e9be75611353ab163ec99ed39ff6b7cfc97a97625f99b1e06eb71a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ee839b38ade4ef541c2733a5ddd5d1895088e6d9a68396573ea7597a731c268e",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/MeanInequalities/Variant046af7a520e9be75611353ab163ec99ed39ff6b7cfc97a97625f99b1e06eb71a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0000b087-659f-3426-005f-f14913da6b88`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 291–297.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem geom_mean_le_arith_mean3_weighted (w₁ w₂ w₃ p₁ p₂ p₃ : ℝ≥0) :
    w₁ + w₂ + w₃ = 1 →
      p₁ ^ (w₁ : ℝ) * p₂ ^ (w₂ : ℝ) * p₃ ^ (w₃ : ℝ) ≤ w₁ * p₁ + w₂ * p₂ + w₃ * p₃ := by
  simpa only [Fin.prod_univ_succ, Fin.sum_univ_succ, Finset.prod_empty, Finset.sum_empty,
    Finset.univ_eq_empty, Fin.cons_succ, Fin.cons_zero, add_zero, mul_one, ← add_assoc,
    mul_assoc] using geom_mean_le_arith_mean_weighted univ ![w₁, w₂, w₃] ![p₁, p₂, p₃]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/MeanInequalities/Variant046af7a520e9be75611353ab163ec99ed39ff6b7cfc97a97625f99b1e06eb71a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/MeanInequalities/Variant046af7a520e9be75611353ab163ec99ed39ff6b7cfc97a97625f99b1e06eb71a.lean#L291).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `695b7766d64f0324ce6af502e548a5e3de8e4aca` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
