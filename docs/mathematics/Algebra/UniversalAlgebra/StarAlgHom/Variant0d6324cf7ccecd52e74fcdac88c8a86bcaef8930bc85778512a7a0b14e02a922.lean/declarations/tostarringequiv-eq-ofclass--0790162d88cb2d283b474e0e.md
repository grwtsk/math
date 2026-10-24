# toStarRingEquiv_eq_ofClass

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:aad0525e-392a-5a8e-e2ab-4e8dc31a4bbc",
  "kind": "theorem",
  "lexical_name": "toStarRingEquiv_eq_ofClass",
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
  "slug": "tostarringequiv-eq-ofclass--0790162d88cb2d283b474e0e",
  "source": {
    "blob": "a01fbd85db0a9ff3eb78298d5ec6b2665056a65f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 719,
    "line": 715,
    "path": "GRWTSK/Algebra/UniversalAlgebra/StarAlgHom/Variant0d6324cf7ccecd52e74fcdac88c8a86bcaef8930bc85778512a7a0b14e02a922.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0790162d88cb2d283b474e0e6f0d12eb9b358253227a1ff59e14892f8be9f23e",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/StarAlgHom/Variant0d6324cf7ccecd52e74fcdac88c8a86bcaef8930bc85778512a7a0b14e02a922.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:aad0525e-392a-5a8e-e2ab-4e8dc31a4bbc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 715–719.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem toStarRingEquiv_eq_ofClass (e : A ≃⋆ₐ[R] B) : e.toStarRingEquiv = .ofClass e := rfl

@[deprecated (since := "2026-09-08")] alias toStarRingEquiv_eq_coe := toStarRingEquiv_eq_ofClass

-- TODO: change the RHS to `RingEquiv.ofClass`
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/StarAlgHom/Variant0d6324cf7ccecd52e74fcdac88c8a86bcaef8930bc85778512a7a0b14e02a922.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/StarAlgHom/Variant0d6324cf7ccecd52e74fcdac88c8a86bcaef8930bc85778512a7a0b14e02a922.lean#L715).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a01fbd85db0a9ff3eb78298d5ec6b2665056a65f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
