# poleCleared_deriv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d7c98124-f3e7-63d4-7386-7274ba686a19",
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
  "slug": "polecleared-deriv--940da71759af77fe8259fc9d",
  "source": {
    "blob": "8b3759b4769d7db88b43e770bdb3bdbda3f19d64",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 115,
    "line": 105,
    "path": "GRWTSK/Analysis/ComplexAnalysis/Attempt05/Variantd64b9c768018ecf67812cf3aeb9550892c5482ae97d7a87d252c62f93dd7e3f4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:940da71759af77fe8259fc9d4a9c21d811ed12a171eb95946e7b6487f71aced6",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/Attempt05/Variantd64b9c768018ecf67812cf3aeb9550892c5482ae97d7a87d252c62f93dd7e3f4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d7c98124-f3e7-63d4-7386-7274ba686a19`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 105–115.

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

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/Attempt05/Variantd64b9c768018ecf67812cf3aeb9550892c5482ae97d7a87d252c62f93dd7e3f4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/Attempt05/Variantd64b9c768018ecf67812cf3aeb9550892c5482ae97d7a87d252c62f93dd7e3f4.lean#L105).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8b3759b4769d7db88b43e770bdb3bdbda3f19d64` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
