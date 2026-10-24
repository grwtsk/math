# XIsoOfEq_inv_naturality

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:03a8c084-1e13-0ba6-a5d1-70d94cf3a299",
  "kind": "lemma",
  "lexical_name": "XIsoOfEq_inv_naturality",
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
  "slug": "xisoofeq-inv-naturality--b994ca68fac4d9532fa08990",
  "source": {
    "blob": "be7aafdcb846fec1407c9c3fa2ae7b8530188539",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 373,
    "line": 367,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologicalComplex/Variant096cf6f14c6993042326a21e3414f43a78f162ee51390edb029c2077b1217f71.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b994ca68fac4d9532fa089906028c2dfe3ee87d0800a7a741170d8a513802b03",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologicalComplex/Variant096cf6f14c6993042326a21e3414f43a78f162ee51390edb029c2077b1217f71.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:03a8c084-1e13-0ba6-a5d1-70d94cf3a299`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 367–373.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma XIsoOfEq_inv_naturality {K L : HomologicalComplex V c} (φ : K ⟶ L) {n n' : ι} (h : n = n') :
    φ.f n' ≫ (L.XIsoOfEq h).inv = (K.XIsoOfEq h).inv ≫ φ.f n := by subst h; simp

-- Porting note: removed @[simp] as the linter complained
/-- If `C.d i j` and `C.d i j'` are both allowed, then we must have `j = j'`,
and so the differentials only differ by an `eqToHom`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologicalComplex/Variant096cf6f14c6993042326a21e3414f43a78f162ee51390edb029c2077b1217f71.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologicalComplex/Variant096cf6f14c6993042326a21e3414f43a78f162ee51390edb029c2077b1217f71.lean#L367).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `be7aafdcb846fec1407c9c3fa2ae7b8530188539` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
