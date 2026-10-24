# realToRCLike_posPart_negPart

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f23cead4-3ba0-2cf8-3d45-dd3c7b9db1c2",
  "kind": "lemma",
  "lexical_name": "realToRCLike_posPart_negPart",
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
  "slug": "realtorclike-pospart-negpart--8cc05c0c90edb6c9e1685663",
  "source": {
    "blob": "229b9077e01de4f2b8915ccd9da8bf3c62ba3ec9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 48,
    "line": 36,
    "path": "GRWTSK/Analysis/PosPart/Variant4b8e53b4906ea5e6bef64de6a67e51ef067b5b89009f744b517484f5d5d2733c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8cc05c0c90edb6c9e16856637865e2bc693d2087a71d7dcabce3d2829f9e6afe",
  "verification": {
    "reference": "docs/verification/Analysis/PosPart/Variant4b8e53b4906ea5e6bef64de6a67e51ef067b5b89009f744b517484f5d5d2733c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f23cead4-3ba0-2cf8-3d45-dd3c7b9db1c2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 36–48.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma realToRCLike_posPart_negPart :
    (f.realToRCLike ℂ)⁺ = f⁺.realToRCLike ℂ ∧ (f.realToRCLike ℂ)⁻ = f⁻.realToRCLike ℂ := by
  refine CFC.posPart_negPart_unique ?_ ?_ ?_ ?_ <;> simp_rw [← realToRCLikeStarAlgHom_apply]
  · simp only [← map_sub, posPart_sub_negPart]
  · rw [← map_mul, ← map_zero (realToRCLikeStarAlgHom X ℂ)]
    congr!
    ext x
    obtain hx | hx := le_total 0 (f x)
    · simpa [negPart_def] using Or.inr hx
    · simpa [posPart_def] using Or.inl hx
  · simpa [← realToRCLikeStarAlgHom_apply] using realToRCLike_monotone X ℂ (posPart_nonneg f)
  · simpa [← realToRCLikeStarAlgHom_apply] using realToRCLike_monotone X ℂ (negPart_nonneg f)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/PosPart/Variant4b8e53b4906ea5e6bef64de6a67e51ef067b5b89009f744b517484f5d5d2733c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/PosPart/Variant4b8e53b4906ea5e6bef64de6a67e51ef067b5b89009f744b517484f5d5d2733c.lean#L36).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `229b9077e01de4f2b8915ccd9da8bf3c62ba3ec9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
