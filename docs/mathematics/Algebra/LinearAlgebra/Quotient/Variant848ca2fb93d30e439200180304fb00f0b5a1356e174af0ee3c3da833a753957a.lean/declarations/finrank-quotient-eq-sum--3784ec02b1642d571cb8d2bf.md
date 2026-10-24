# finrank_quotient_eq_sum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0ca72347-719b-947f-fbdc-15476bc601ad",
  "kind": "theorem",
  "lexical_name": "finrank_quotient_eq_sum",
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
  "slug": "finrank-quotient-eq-sum--3784ec02b1642d571cb8d2bf",
  "source": {
    "blob": "2bf08ae1c11eb79af0d4ee296ab12b2f6fe0ef59",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 130,
    "line": 122,
    "path": "GRWTSK/Algebra/LinearAlgebra/Quotient/Variant848ca2fb93d30e439200180304fb00f0b5a1356e174af0ee3c3da833a753957a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3784ec02b1642d571cb8d2bf45f1417f317160581869c1235994876980195462",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Quotient/Variant848ca2fb93d30e439200180304fb00f0b5a1356e174af0ee3c3da833a753957a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0ca72347-719b-947f-fbdc-15476bc601ad`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 122–130.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finrank_quotient_eq_sum {ι} [Fintype ι] (b : Basis ι R M) [Nontrivial F]
    (h : Module.finrank R N = Module.finrank R M)
    [∀ i, Module.Free F (R ⧸ Ideal.span ({smithNormalFormCoeffs b h i} : Set R))]
    [∀ i, Module.Finite F (R ⧸ Ideal.span ({smithNormalFormCoeffs b h i} : Set R))] :
    Module.finrank F (M ⧸ N) =
      ∑ i, Module.finrank F (R ⧸ Ideal.span ({smithNormalFormCoeffs b h i} : Set R)) := by
  rw [LinearEquiv.finrank_eq <| quotientEquivDirectSum F b h, Module.finrank_directSum]

end Submodule
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Quotient/Variant848ca2fb93d30e439200180304fb00f0b5a1356e174af0ee3c3da833a753957a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Quotient/Variant848ca2fb93d30e439200180304fb00f0b5a1356e174af0ee3c3da833a753957a.lean#L122).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2bf08ae1c11eb79af0d4ee296ab12b2f6fe0ef59` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
