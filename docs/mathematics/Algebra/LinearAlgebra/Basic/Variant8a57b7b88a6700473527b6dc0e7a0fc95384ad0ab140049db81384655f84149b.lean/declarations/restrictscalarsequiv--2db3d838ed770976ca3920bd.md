# restrictScalarsEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2a268906c9e0b3ee1b4212eb690223db58e6356f331cae48ecf40a8827c75b45",
  "kind": "def",
  "lexical_name": "restrictScalarsEquiv",
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
  "slug": "restrictscalarsequiv--2db3d838ed770976ca3920bd",
  "source": {
    "blob": "85e5ce4e033490af63e23ea0f22d6d21e876cd21",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 67,
    "line": 61,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant8a57b7b88a6700473527b6dc0e7a0fc95384ad0ab140049db81384655f84149b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2db3d838ed770976ca3920bd16080a696f315e00713f274115d8c0fde4c57fbd",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variant8a57b7b88a6700473527b6dc0e7a0fc95384ad0ab140049db81384655f84149b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2a268906c9e0b3ee1b4212eb690223db58e6356f331cae48ecf40a8827c75b45`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 61–67.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def restrictScalarsEquiv [Ring S] [SMul S R] [Module S M] [IsScalarTower S R M]
    (P : Submodule R M) : (M ⧸ P.restrictScalars S) ≃ₗ[S] M ⧸ P :=
  { Quotient.congrRight fun _ _ => Iff.rfl with
    map_add' := fun x y => Quotient.inductionOn₂' x y fun _x' _y' => rfl
    map_smul' := fun _c x => Submodule.Quotient.induction_on _ x fun _x' => rfl }

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variant8a57b7b88a6700473527b6dc0e7a0fc95384ad0ab140049db81384655f84149b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variant8a57b7b88a6700473527b6dc0e7a0fc95384ad0ab140049db81384655f84149b.lean#L61).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `85e5ce4e033490af63e23ea0f22d6d21e876cd21` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
