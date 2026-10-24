# sigmaFinsuppLEquivPiFinsupp_symm_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d43e0655-ce07-0b7f-6b2f-2543c9d93c83",
  "kind": "theorem",
  "lexical_name": "sigmaFinsuppLEquivPiFinsupp_symm_apply",
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
  "slug": "sigmafinsupplequivpifinsupp-symm-apply--12aee24dfc5af3033ef9a9a7",
  "source": {
    "blob": "ea5eeb9a9dc4607f41d50cf462d6e1991d6a154a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 104,
    "line": 97,
    "path": "GRWTSK/Algebra/LinearAlgebra/SumProd/Variantfff65c170dbfc3624a42ed71d643eb6cc16990cdedd60b79acc90e88ff76595b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:12aee24dfc5af3033ef9a9a74a1c01c83b8fafdeaa4938aa347dd7ba907cad2f",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/SumProd/Variantfff65c170dbfc3624a42ed71d643eb6cc16990cdedd60b79acc90e88ff76595b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d43e0655-ce07-0b7f-6b2f-2543c9d93c83`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 97–104.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sigmaFinsuppLEquivPiFinsupp_symm_apply {M : Type*} {ιs : η → Type*} [AddCommMonoid M]
    [Module R M] (f : (j : _) → (ιs j →₀ M)) (ji) :
    (Finsupp.sigmaFinsuppLEquivPiFinsupp R).symm f ji = f ji.1 ji.2 :=
  rfl

end Sigma

end Finsupp
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/SumProd/Variantfff65c170dbfc3624a42ed71d643eb6cc16990cdedd60b79acc90e88ff76595b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/SumProd/Variantfff65c170dbfc3624a42ed71d643eb6cc16990cdedd60b79acc90e88ff76595b.lean#L97).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ea5eeb9a9dc4607f41d50cf462d6e1991d6a154a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
