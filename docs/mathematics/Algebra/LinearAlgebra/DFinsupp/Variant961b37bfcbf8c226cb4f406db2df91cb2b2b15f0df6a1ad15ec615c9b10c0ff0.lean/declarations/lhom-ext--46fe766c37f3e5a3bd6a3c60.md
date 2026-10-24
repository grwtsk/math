# lhom_ext

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:59b3f871-1c7f-6af0-446c-6a6e961df2df",
  "kind": "theorem",
  "lexical_name": "lhom_ext",
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
  "slug": "lhom-ext--46fe766c37f3e5a3bd6a3c60",
  "source": {
    "blob": "2f2e5435502e6e766f7dd21a03b748287c68c504",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 78,
    "line": 70,
    "path": "GRWTSK/Algebra/LinearAlgebra/DFinsupp/Variant961b37bfcbf8c226cb4f406db2df91cb2b2b15f0df6a1ad15ec615c9b10c0ff0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:46fe766c37f3e5a3bd6a3c60068d2c7c6b6d11712424b19f6c3a32549e74605c",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/DFinsupp/Variant961b37bfcbf8c226cb4f406db2df91cb2b2b15f0df6a1ad15ec615c9b10c0ff0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:59b3f871-1c7f-6af0-446c-6a6e961df2df`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 70–78.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lhom_ext ⦃φ ψ : (Π₀ i, M i) →ₗ[R] N⦄ (h : ∀ i x, φ (single i x) = ψ (single i x)) : φ = ψ :=
  LinearMap.toAddMonoidHom_injective <| addHom_ext h
#align dfinsupp.lhom_ext DFinsupp.lhom_ext

/-- Two `R`-linear maps from `Π₀ i, M i` which agree on each `single i x` agree everywhere.

See note [partially-applied ext lemmas].
After apply this lemma, if `M = R` then it suffices to verify `φ (single a 1) = ψ (single a 1)`. -/
@[ext 1100]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/DFinsupp/Variant961b37bfcbf8c226cb4f406db2df91cb2b2b15f0df6a1ad15ec615c9b10c0ff0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/DFinsupp/Variant961b37bfcbf8c226cb4f406db2df91cb2b2b15f0df6a1ad15ec615c9b10c0ff0.lean#L70).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2f2e5435502e6e766f7dd21a03b748287c68c504` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
