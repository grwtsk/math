# subset_span_trans

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2c07cc3d-ff21-613f-5996-35cdbf11da19",
  "kind": "theorem",
  "lexical_name": "subset_span_trans",
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
  "slug": "subset-span-trans--ff1127da349bf80518efdccb",
  "source": {
    "blob": "b47353efee5ba592621cb1d57483d6a68122ba49",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 186,
    "line": 181,
    "path": "GRWTSK/Algebra/LinearAlgebra/Subspace/Variant05782ca872b06f1991f27528b981d6cc84330d2a391eb4eedf4525365133a17a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ff1127da349bf80518efdccbc05dbc7547f86d7b1e2a3d4f64b499890cc3c2a3",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Subspace/Variant05782ca872b06f1991f27528b981d6cc84330d2a391eb4eedf4525365133a17a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2c07cc3d-ff21-613f-5996-35cdbf11da19`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 181–186.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem subset_span_trans {S T U : Set (ℙ K V)} (hST : S ⊆ span T) (hTU : T ⊆ span U) :
    S ⊆ span U :=
  gi.gc.le_u_l_trans hST hTU
#align projectivization.subspace.subset_span_trans Projectivization.Subspace.subset_span_trans

/-- The supremum of two subspaces is equal to the span of their union. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Subspace/Variant05782ca872b06f1991f27528b981d6cc84330d2a391eb4eedf4525365133a17a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Subspace/Variant05782ca872b06f1991f27528b981d6cc84330d2a391eb4eedf4525365133a17a.lean#L181).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b47353efee5ba592621cb1d57483d6a68122ba49` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
