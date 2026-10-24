# reduced_adjacencyCubic_separable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "005dcd55ae694c31c0864b295ea707971daee567",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 29,
      "path": "GRWTSK/Algebra/QuarticCubicResidueSeparable.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:24e15181-8b28-829a-1906-a2c1a99801be",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:eaf79312-e9b3-368e-ff77-d12d5e7317d3",
  "kind": "theorem",
  "lexical_name": "reduced_adjacencyCubic_separable",
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
  "slug": "reduced-adjacencycubic-separable--bfef92e6d2ba29df631076ee",
  "source": {
    "blob": "005dcd55ae694c31c0864b295ea707971daee567",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 44,
    "line": 29,
    "path": "GRWTSK/Algebra/QuarticCubicResidueSeparable.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bfef92e6d2ba29df631076ee00bde7fd9ccc6b6dc11cf4581acf7c9997cf48b0",
  "verification": {
    "reference": "docs/verification/Algebra/QuarticCubicResidueSeparable.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:eaf79312-e9b3-368e-ff77-d12d5e7317d3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 29–44.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem reduced_adjacencyCubic_separable
    (f : R →+* F) (s₁ s₂ s₃ s₄ : R)
    (hs : (adjacencyCubic (f s₁) (f s₂) (f s₃) (f s₄)).toPoly.Splits)
    (hd : f (adjacencyCubic s₁ s₂ s₃ s₄).discr ≠ 0) :
    (adjacencyCubic (f s₁) (f s₂) (f s₃) (f s₄)).toPoly.Separable := by
  have hd' : (adjacencyCubic (f s₁) (f s₂) (f s₃) (f s₄)).discr ≠ 0 := by
    rwa [adjacencyCubic_discr_map] 
  have hn := GRWTSK.Algebra.QuarticCubicResidueSeparation.adjacencyCubic_roots_nodup_of_discr_ne_zero
    (f s₁) (f s₂) (f s₃) (f s₄) hs hd'
  apply (Polynomial.nodup_roots_iff_of_splits ?_ hs).mp hn
  intro h
  have hh := congrArg (fun q : F[X] => q.coeff 3) h
  simpa [Cubic.toPoly, adjacencyCubic] using hh

end
end GRWTSK.Algebra.QuarticCubicResidueSeparable
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../verification/Algebra/QuarticCubicResidueSeparable.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/QuarticCubicResidueSeparable.lean#L29).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `005dcd55ae694c31c0864b295ea707971daee567` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
