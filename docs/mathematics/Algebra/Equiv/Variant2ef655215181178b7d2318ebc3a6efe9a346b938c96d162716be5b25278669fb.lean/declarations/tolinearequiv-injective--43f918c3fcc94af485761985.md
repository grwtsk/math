# toLinearEquiv_injective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a44fb90a-a977-7cf6-68fe-b435bc8bc8ef",
  "kind": "theorem",
  "lexical_name": "toLinearEquiv_injective",
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
  "slug": "tolinearequiv-injective--43f918c3fcc94af485761985",
  "source": {
    "blob": "2accba0227a263bd6d14aaadea3bd43284f358a1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 603,
    "line": 599,
    "path": "GRWTSK/Algebra/Equiv/Variant2ef655215181178b7d2318ebc3a6efe9a346b938c96d162716be5b25278669fb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:43f918c3fcc94af485761985c33a9c3c60faa08e5fb0cee39e76e1e936786334",
  "verification": {
    "reference": "docs/verification/Algebra/Equiv/Variant2ef655215181178b7d2318ebc3a6efe9a346b938c96d162716be5b25278669fb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a44fb90a-a977-7cf6-68fe-b435bc8bc8ef`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 599–603.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem toLinearEquiv_injective : Function.Injective (toLinearEquiv : _ → A₁ ≃ₗ[R] A₂) :=
  fun _ _ h => ext <| LinearEquiv.congr_fun h
#align alg_equiv.to_linear_equiv_injective AlgEquiv.toLinearEquiv_injective

/-- Interpret an algebra equivalence as a linear map. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Equiv/Variant2ef655215181178b7d2318ebc3a6efe9a346b938c96d162716be5b25278669fb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Equiv/Variant2ef655215181178b7d2318ebc3a6efe9a346b938c96d162716be5b25278669fb.lean#L599).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2accba0227a263bd6d14aaadea3bd43284f358a1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
