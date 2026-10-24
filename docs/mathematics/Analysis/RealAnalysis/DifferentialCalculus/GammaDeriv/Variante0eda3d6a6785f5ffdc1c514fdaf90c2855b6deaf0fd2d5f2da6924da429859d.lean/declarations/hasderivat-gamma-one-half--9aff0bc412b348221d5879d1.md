# hasDerivAt_Gamma_one_half

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "526f6d5cc6ebc3d0938391c4565674c1e798db20",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 184,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e0/e0eda3d6a6785f5ffdc1c514fdaf90c2855b6deaf0fd2d5f2da6924da429859d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e2ebe042-a910-84df-4d5a-c34f509d7979",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4ee447c9-c0b8-bfc5-733c-f72f469c265a",
  "kind": "lemma",
  "lexical_name": "hasDerivAt_Gamma_one_half",
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
  "slug": "hasderivat-gamma-one-half--9aff0bc412b348221d5879d1",
  "source": {
    "blob": "526f6d5cc6ebc3d0938391c4565674c1e798db20",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 192,
    "line": 184,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/GammaDeriv/Variante0eda3d6a6785f5ffdc1c514fdaf90c2855b6deaf0fd2d5f2da6924da429859d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9aff0bc412b348221d5879d19ce0a496a2632005e36ba270d4dae28d48c6c76e",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/GammaDeriv/Variante0eda3d6a6785f5ffdc1c514fdaf90c2855b6deaf0fd2d5f2da6924da429859d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4ee447c9-c0b8-bfc5-733c-f72f469c265a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 184–192.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma hasDerivAt_Gamma_one_half : HasDerivAt Gamma (-√π * (γ + 2 * log 2)) (1 / 2) := by
  have := HasDerivAt.complex_of_real
    (differentiableAt_Gamma _ ?_) Real.hasDerivAt_Gamma_one_half Gamma_ofReal
  · simpa only [neg_mul, one_div, ofReal_neg, ofReal_mul, ofReal_add, ofReal_ofNat, ofNat_log,
      ofReal_inv] using this
  · intro m
    rw [← ofReal_natCast, ← ofReal_neg, ne_eq, ofReal_inj]
    exact ((neg_nonpos.mpr m.cast_nonneg).trans_lt one_half_pos).ne'

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/GammaDeriv/Variante0eda3d6a6785f5ffdc1c514fdaf90c2855b6deaf0fd2d5f2da6924da429859d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/GammaDeriv/Variante0eda3d6a6785f5ffdc1c514fdaf90c2855b6deaf0fd2d5f2da6924da429859d.lean#L184).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `526f6d5cc6ebc3d0938391c4565674c1e798db20` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
