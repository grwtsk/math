# galRestrictHom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:dab1789e23726e798658539081ec3870d95588d79ef5b3b3f90d7c7eeccae04d",
  "kind": "def",
  "lexical_name": "galRestrictHom",
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
  "slug": "galrestricthom--17b049fd1e0c24721adf348d",
  "source": {
    "blob": "012aab7f2177cc7a5a89df17667654c8b42c5bb2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 170,
    "line": 163,
    "path": "GRWTSK/Algebra/IntegralRestrict/Variante1053388cae81fb4942b58f67745472fa3826896ff3e84f8f9e75ad5eaccd772.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:17b049fd1e0c24721adf348d0da48955c96a6b6e4fd4c9a23b6c6deb26debf5c",
  "verification": {
    "reference": "docs/verification/Algebra/IntegralRestrict/Variante1053388cae81fb4942b58f67745472fa3826896ff3e84f8f9e75ad5eaccd772.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:dab1789e23726e798658539081ec3870d95588d79ef5b3b3f90d7c7eeccae04d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 163–170.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def galRestrictHom : (L →ₐ[K] L) ≃* (B →ₐ[A] B) where
  toFun f := galRestrict' A B B f
  map_mul' σ₁ σ₂ := galRestrict'_comp _ _ _ _ σ₂ σ₁
  invFun := galLift K L L
  left_inv σ := galLift_galRestrict' _ _ _ σ
  right_inv σ := galRestrict'_galLift _ _ _ σ

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/IntegralRestrict/Variante1053388cae81fb4942b58f67745472fa3826896ff3e84f8f9e75ad5eaccd772.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/IntegralRestrict/Variante1053388cae81fb4942b58f67745472fa3826896ff3e84f8f9e75ad5eaccd772.lean#L163).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `012aab7f2177cc7a5a89df17667654c8b42c5bb2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
