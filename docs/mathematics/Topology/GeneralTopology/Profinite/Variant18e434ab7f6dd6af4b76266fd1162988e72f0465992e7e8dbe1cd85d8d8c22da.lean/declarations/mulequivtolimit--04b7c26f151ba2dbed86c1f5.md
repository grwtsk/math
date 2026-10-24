# mulEquivToLimit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fdd1bcee692f71ed3bf437abf6192f9b2fef2947ca34193590749b42c34b47ae",
  "kind": "def",
  "lexical_name": "mulEquivToLimit",
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
  "slug": "mulequivtolimit--04b7c26f151ba2dbed86c1f5",
  "source": {
    "blob": "20dad200a3109fc423a577894f4fa5b00d2951ac",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 286,
    "line": 269,
    "path": "GRWTSK/Topology/GeneralTopology/Profinite/Variant18e434ab7f6dd6af4b76266fd1162988e72f0465992e7e8dbe1cd85d8d8c22da.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:04b7c26f151ba2dbed86c1f5c49b9f879ad3f860f4e06af328b143630f3625ac",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Profinite/Variant18e434ab7f6dd6af4b76266fd1162988e72f0465992e7e8dbe1cd85d8d8c22da.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fdd1bcee692f71ed3bf437abf6192f9b2fef2947ca34193590749b42c34b47ae`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 269–286.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def mulEquivToLimit [IsGalois k K] :
    (K ≃ₐ[k] K) ≃* limit (asProfiniteGaloisGroupFunctor k K) where
  toFun := algEquivToLimit k K
  map_mul' := map_mul _
  invFun := limitToAlgEquiv
  left_inv := fun f ↦ AlgEquiv.ext fun x ↦
    AlgEquiv.restrictNormal_commutes f (adjoin k {x}).1 ⟨x, _⟩
  right_inv := fun g ↦ by
    apply Subtype.val_injective
    ext L
    show (limitToAlgEquiv g).restrictNormal _ = _
    ext x
    have : ((limitToAlgEquiv g).restrictNormal L.unop) x = (limitToAlgEquiv g) x.1 := by
      exact AlgEquiv.restrictNormal_commutes (limitToAlgEquiv g) L.unop x
    simp_rw [this]
    exact proj_adjoin_singleton_val _ _ _ _ x.2

open scoped Topology in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Profinite/Variant18e434ab7f6dd6af4b76266fd1162988e72f0465992e7e8dbe1cd85d8d8c22da.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Profinite/Variant18e434ab7f6dd6af4b76266fd1162988e72f0465992e7e8dbe1cd85d8d8c22da.lean#L269).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `20dad200a3109fc423a577894f4fa5b00d2951ac` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
