# Gamma_mul_Gamma_add_half

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2515fc94-8b9f-de6f-0873-c8a12b6eec30",
  "kind": "theorem",
  "lexical_name": "Gamma_mul_Gamma_add_half",
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
  "slug": "gamma-mul-gamma-add-half--d51bbc26b5c67da5b20aa55e",
  "source": {
    "blob": "8205d98c464988b5b42b312a91dbbd200b08876a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 632,
    "line": 623,
    "path": "GRWTSK/Analysis/SpecialFunctions/Beta/Variant44c59b9d64006cb35e38d1ccd5cf7aef8106c15d79024c0db80a6553678f37a2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d51bbc26b5c67da5b20aa55e1d977ea3623d2a7b76f5362756ad97d7c21e97a0",
  "verification": {
    "reference": "docs/verification/Analysis/SpecialFunctions/Beta/Variant44c59b9d64006cb35e38d1ccd5cf7aef8106c15d79024c0db80a6553678f37a2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2515fc94-8b9f-de6f-0873-c8a12b6eec30`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 623–632.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Gamma_mul_Gamma_add_half (s : ℝ) :
    Gamma s * Gamma (s + 1 / 2) = Gamma (2 * s) * (2 : ℝ) ^ (1 - 2 * s) * sqrt π := by
  rw [← ofReal_inj]
  simpa only [← Gamma_ofReal, ofReal_cpow zero_le_two, ofReal_mul, ofReal_add, ofReal_div,
    ofReal_sub] using Complex.Gamma_mul_Gamma_add_half ↑s
#align real.Gamma_mul_Gamma_add_half Real.Gamma_mul_Gamma_add_half

end Real

end Doubling
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/SpecialFunctions/Beta/Variant44c59b9d64006cb35e38d1ccd5cf7aef8106c15d79024c0db80a6553678f37a2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/SpecialFunctions/Beta/Variant44c59b9d64006cb35e38d1ccd5cf7aef8106c15d79024c0db80a6553678f37a2.lean#L623).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8205d98c464988b5b42b312a91dbbd200b08876a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
