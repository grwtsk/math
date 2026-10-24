# kernelIsLimit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:65d7fb4be0c25d827d8ea91a563ac1014bdb5045ecba62814b4b269d41c7deea",
  "kind": "def",
  "lexical_name": "kernelIsLimit",
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
  "slug": "kernelislimit--d2ed4bfd1d435485de24692f",
  "source": {
    "blob": "6f55088b26bd6ed7585e68afd59da2b35a321581",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 49,
    "line": 36,
    "path": "GRWTSK/Algebra/LinearAlgebra/Kernels/Variant8c7e74880f119e106a8c3d95144fcda59033f715772b730238f37127b4368103.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d2ed4bfd1d435485de24692f56b1ed1a049e79460cfb96dcca07053c0a137d2c",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Kernels/Variant8c7e74880f119e106a8c3d95144fcda59033f715772b730238f37127b4368103.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:65d7fb4be0c25d827d8ea91a563ac1014bdb5045ecba62814b4b269d41c7deea`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 36–49.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def kernelIsLimit : IsLimit (kernelCone f) :=
  Fork.IsLimit.mk _
    (fun s =>
    -- Porting note: broken dot notation on LinearMap.ker
      LinearMap.codRestrict (LinearMap.ker f) (Fork.ι s) fun c =>
        LinearMap.mem_ker.2 <| by
          rw [← @Function.comp_apply _ _ _ f (Fork.ι s) c, ← coe_comp, Fork.condition,
            HasZeroMorphisms.comp_zero (Fork.ι s) N]
          rfl)
    (fun s => LinearMap.subtype_comp_codRestrict _ _ _) fun s m h =>
    LinearMap.ext fun x => Subtype.ext_iff_val.2 (by simp [← h]; rfl)
#align Module.kernel_is_limit ModuleCat.kernelIsLimit

/-- The cokernel cocone induced by the projection onto the quotient. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Kernels/Variant8c7e74880f119e106a8c3d95144fcda59033f715772b730238f37127b4368103.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Kernels/Variant8c7e74880f119e106a8c3d95144fcda59033f715772b730238f37127b4368103.lean#L36).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6f55088b26bd6ed7585e68afd59da2b35a321581` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
