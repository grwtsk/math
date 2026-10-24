# domLCongr_trans

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:511a8d60-c59b-1933-aed3-31fcb5d83c3f",
  "kind": "theorem",
  "lexical_name": "domLCongr_trans",
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
  "slug": "domlcongr-trans--3929b23b39198db165ff28f7",
  "source": {
    "blob": "939a121aa57be04180e918a9c39b93efd678812a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 204,
    "line": 199,
    "path": "GRWTSK/Algebra/LinearAlgebra/LSum/Variantb4596fe3b8df8e99fc024ea50b53c4908d89afea48d5fd3b614beba5bd4244a0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3929b23b39198db165ff28f7421baaebd2b7a8ba7f376b6cc6907ccb92080222",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/LSum/Variantb4596fe3b8df8e99fc024ea50b53c4908d89afea48d5fd3b614beba5bd4244a0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:511a8d60-c59b-1933-aed3-31fcb5d83c3f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 199–204.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem domLCongr_trans {α₁ α₂ α₃ : Type*} (f : α₁ ≃ α₂) (f₂ : α₂ ≃ α₃) :
    (Finsupp.domLCongr f).trans (Finsupp.domLCongr f₂) =
      (Finsupp.domLCongr (f.trans f₂) : (_ →₀ M) ≃ₗ[R] _) :=
  LinearEquiv.ext fun _ => (equivMapDomain_trans _ _ _).symm

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/LSum/Variantb4596fe3b8df8e99fc024ea50b53c4908d89afea48d5fd3b614beba5bd4244a0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/LSum/Variantb4596fe3b8df8e99fc024ea50b53c4908d89afea48d5fd3b614beba5bd4244a0.lean#L199).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `939a121aa57be04180e918a9c39b93efd678812a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
