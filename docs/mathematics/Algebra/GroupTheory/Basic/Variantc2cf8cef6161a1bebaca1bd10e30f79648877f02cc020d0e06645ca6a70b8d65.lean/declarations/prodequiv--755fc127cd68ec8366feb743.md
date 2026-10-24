# prodEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:af3a9c6db1510c0cdc965c602104714cd9ac2bc2d393ae0d5bcb091439d92408",
  "kind": "def",
  "lexical_name": "prodEquiv",
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
  "slug": "prodequiv--755fc127cd68ec8366feb743",
  "source": {
    "blob": "c7e1af7afdcadd95024dd4f4866381743e3f50ea",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 86,
    "line": 76,
    "path": "GRWTSK/Algebra/GroupTheory/Basic/Variantc2cf8cef6161a1bebaca1bd10e30f79648877f02cc020d0e06645ca6a70b8d65.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:755fc127cd68ec8366feb7431bc164f19aecb5791e2001bb4d1f64d9b4585f49",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Basic/Variantc2cf8cef6161a1bebaca1bd10e30f79648877f02cc020d0e06645ca6a70b8d65.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:af3a9c6db1510c0cdc965c602104714cd9ac2bc2d393ae0d5bcb091439d92408`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 76–86.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def prodEquiv (A : Subgroup G) (B : Subgroup H) : (G × H) ⧸ (A.prod B) ≃ (G ⧸ A) × H ⧸ B where
  toFun q := q.liftOn' (fun (g, h) ↦ (g, h))
      (by simp [QuotientGroup.leftRel_apply, Subgroup.mem_prod, QuotientGroup.eq])
  invFun q := q.1.liftOn₂' q.2 (fun g h ↦ (g, h))
    (by simp [QuotientGroup.leftRel_apply, Subgroup.mem_prod, QuotientGroup.eq, ← and_imp])
  left_inv q := q.inductionOn' (by simp)
  right_inv := fun (q₁, q₂) ↦ Quotient.inductionOn₂' q₁ q₂ (by simp)

/-- `(G × H) / (A × B)` is isomorphic to `G / A × H / B`. -/
@[to_additive (attr := simps!) QuotientAddGroup.prodAddEquiv
/-- `(G × H) / (A × B)` is isomorphic to `G / A × H / B`. -/]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Basic/Variantc2cf8cef6161a1bebaca1bd10e30f79648877f02cc020d0e06645ca6a70b8d65.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Basic/Variantc2cf8cef6161a1bebaca1bd10e30f79648877f02cc020d0e06645ca6a70b8d65.lean#L76).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c7e1af7afdcadd95024dd4f4866381743e3f50ea` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
