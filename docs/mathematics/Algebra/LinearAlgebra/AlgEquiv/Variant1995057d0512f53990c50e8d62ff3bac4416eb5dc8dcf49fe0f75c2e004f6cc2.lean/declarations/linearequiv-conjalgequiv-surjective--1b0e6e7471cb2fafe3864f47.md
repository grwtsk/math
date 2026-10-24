# LinearEquiv.conjAlgEquiv_surjective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b73cbedc-b863-cfdf-e632-cfd9ce0e2c95",
  "kind": "theorem",
  "lexical_name": "LinearEquiv.conjAlgEquiv_surjective",
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
  "slug": "linearequiv-conjalgequiv-surjective--1b0e6e7471cb2fafe3864f47",
  "source": {
    "blob": "fa47df6f0fe93a7df76bc8f85fbcbbee6761bd82",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 65,
    "line": 61,
    "path": "GRWTSK/Algebra/LinearAlgebra/AlgEquiv/Variant1995057d0512f53990c50e8d62ff3bac4416eb5dc8dcf49fe0f75c2e004f6cc2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1b0e6e7471cb2fafe3864f4733a51193f259ad683afac2ecf15dc839311735e4",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/AlgEquiv/Variant1995057d0512f53990c50e8d62ff3bac4416eb5dc8dcf49fe0f75c2e004f6cc2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b73cbedc-b863-cfdf-e632-cfd9ce0e2c95`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 61–65.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public theorem LinearEquiv.conjAlgEquiv_surjective :
    Function.Surjective (conjAlgEquiv K (S := K) (M₁ := V) (M₂ := W)) :=
  fun f ↦ f.eq_linearEquivConjAlgEquiv.imp fun _ h ↦ h.symm

/-- Alternate statement of `AlgEquiv.eq_linearEquivConjAlgEquiv` for when `V = W`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/AlgEquiv/Variant1995057d0512f53990c50e8d62ff3bac4416eb5dc8dcf49fe0f75c2e004f6cc2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/AlgEquiv/Variant1995057d0512f53990c50e8d62ff3bac4416eb5dc8dcf49fe0f75c2e004f6cc2.lean#L61).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fa47df6f0fe93a7df76bc8f85fbcbbee6761bd82` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
