# doublingGamma_eq_Gamma

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "54f5f3b20ecf171ec9c9e17bec2cdb911a418a2b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 417,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/76/761de2a8296091023ac4a0df6c19ab575b1513d1c01526991cc36b141ce21342.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0f0adae1-fb66-8cb5-f6c2-f20c2179ba2d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:cdda32d1-bea7-6887-6354-f48e347cfed1",
  "kind": "theorem",
  "lexical_name": "doublingGamma_eq_Gamma",
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
  "slug": "doublinggamma-eq-gamma--4b17628d726f27f7978766c6",
  "source": {
    "blob": "54f5f3b20ecf171ec9c9e17bec2cdb911a418a2b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 426,
    "line": 417,
    "path": "GRWTSK/Analysis/SpecialFunctions/BohrMollerup/Variant761de2a8296091023ac4a0df6c19ab575b1513d1c01526991cc36b141ce21342.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4b17628d726f27f7978766c66577f44cc2786e09b4c854220714f440764d8852",
  "verification": {
    "reference": "docs/verification/Analysis/SpecialFunctions/BohrMollerup/Variant761de2a8296091023ac4a0df6c19ab575b1513d1c01526991cc36b141ce21342.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cdda32d1-bea7-6887-6354-f48e347cfed1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 417–426.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem doublingGamma_eq_Gamma {s : ℝ} (hs : 0 < s) : doublingGamma s = Gamma s := by
  refine
    eq_Gamma_of_log_convex doublingGamma_log_convex_Ioi
      (fun {y} hy => doublingGamma_add_one y hy.ne') (fun {y} hy => ?_) doublingGamma_one hs
  apply_rules [mul_pos, Gamma_pos_of_pos, add_pos, inv_pos_of_pos, rpow_pos_of_pos, two_pos,
    one_pos, sqrt_pos_of_pos pi_pos]

/-- Legendre's doubling formula for the Gamma function, for positive real arguments. Note that
we shall later prove this for all `s` as `Real.Gamma_mul_Gamma_add_half` (superseding this result)
but this result is needed as an intermediate step. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/SpecialFunctions/BohrMollerup/Variant761de2a8296091023ac4a0df6c19ab575b1513d1c01526991cc36b141ce21342.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/SpecialFunctions/BohrMollerup/Variant761de2a8296091023ac4a0df6c19ab575b1513d1c01526991cc36b141ce21342.lean#L417).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `54f5f3b20ecf171ec9c9e17bec2cdb911a418a2b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
