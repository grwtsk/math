# poleCleared_deriv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1d3fc58b-a61c-059c-812a-39a444aa3a4c",
  "kind": "theorem",
  "lexical_name": "poleCleared_deriv",
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
  "slug": "polecleared-deriv--e5ca6aea6d2622544901e6aa",
  "source": {
    "blob": "7328e4e86e7e82df575c36d477d2cb573b4eeb96",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 122,
    "line": 112,
    "path": "GRWTSK/Analysis/ComplexAnalysis/Attempt07/Variant749deb3a5cc8fa05325f4b3ba5c5977a0e8f32016dde5391d6559022d095d577.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e5ca6aea6d2622544901e6aae91153ceaa1e0bc6d758ab8d5104259f0351e765",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/Attempt07/Variant749deb3a5cc8fa05325f4b3ba5c5977a0e8f32016dde5391d6559022d095d577.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1d3fc58b-a61c-059c-812a-39a444aa3a4c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 112–122.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem poleCleared_deriv {s : ℂ} (hs0 : s ≠ 0) (hs1 : s ≠ 1) :
    deriv actualZetaPoleCleared s = riemannZeta s + (s - 1) * deriv riemannZeta s := by
  have he : actualZetaPoleCleared =ᶠ[𝓝 s] (fun s => (s - 1) * riemannZeta s) := by
    filter_upwards [eventually_ne_nhds hs0, eventually_ne_nhds hs1] with t ht0 ht1
    exact actualZetaPoleCleared_eq ht0 ht1
  rw [he.deriv_eq]
  have hd := ((hasDerivAt_id s).sub_const 1).mul
    (differentiableAt_riemannZeta hs1).hasDerivAt
  simpa only [Pi.mul_apply, sub_zero, one_mul] using! hd.deriv

/-- The logarithmic derivative removes its genuine pole with the explicit actual nonzero guard. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/Attempt07/Variant749deb3a5cc8fa05325f4b3ba5c5977a0e8f32016dde5391d6559022d095d577.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/Attempt07/Variant749deb3a5cc8fa05325f4b3ba5c5977a0e8f32016dde5391d6559022d095d577.lean#L112).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7328e4e86e7e82df575c36d477d2cb573b4eeb96` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
