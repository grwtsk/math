# algHomOfRightFDRepComp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:43959596645ada17d3257c382f7582265edec142448ff6b60a95ec3ddebae85d",
  "kind": "def",
  "lexical_name": "algHomOfRightFDRepComp",
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
  "slug": "alghomofrightfdrepcomp--9e42caf111ca163bcce888ed",
  "source": {
    "blob": "9e12d007b31b53ce0d180168bb036d6a99d88bec",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 162,
    "line": 149,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Tannaka/Variant952c69c12507965b6f6eaf24fc1facaf35bb5ba552002f01e628d1cb321c8be9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9e42caf111ca163bcce888edad5bdf0be210728f6547f72bf177b36bdbd1b7fd",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Tannaka/Variant952c69c12507965b6f6eaf24fc1facaf35bb5ba552002f01e628d1cb321c8be9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:43959596645ada17d3257c382f7582265edec142448ff6b60a95ec3ddebae85d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 149–162.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def algHomOfRightFDRepComp (η : Aut (forget k G)) : (G → k) →ₐ[k] (G → k) := by
  let α : (G → k) →ₗ[k] (G → k) := (η.hom.hom.app rightFDRep).hom
  let α_inv : (G → k) →ₗ[k] (G → k) := (η.inv.hom.app rightFDRep).hom
  refine AlgHom.ofLinearMap α ?_ (map_mul_toRightFDRepComp η)
  suffices α (α_inv 1) = (1 : G → k) by
    have h := this
    rwa [← one_mul (α_inv 1), map_mul_toRightFDRepComp, h, mul_one] at this
  have := η.inv_hom_id
  apply_fun (fun x ↦ (x.hom.app rightFDRep).hom (1 : G → k)) at this
  exact this

/-- For `v : X` and `G` a finite group, the `G`-equivariant linear map from the right
regular representation `rightFDRep` to `X` sending `single 1 1` to `v`. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Tannaka/Variant952c69c12507965b6f6eaf24fc1facaf35bb5ba552002f01e628d1cb321c8be9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Tannaka/Variant952c69c12507965b6f6eaf24fc1facaf35bb5ba552002f01e628d1cb321c8be9.lean#L149).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9e12d007b31b53ce0d180168bb036d6a99d88bec` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
