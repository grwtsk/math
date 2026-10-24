# explicitCokernelπ.epi

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e375e92bddc8588f83d1dc01b61be381ff67ad09186dd3da8f5b295e42233088",
  "kind": "instance",
  "lexical_name": "explicitCokernelπ.epi",
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
  "slug": "explicitcokernel-epi--d918483a24ae12c3df07e366",
  "source": {
    "blob": "6298046e4f2620c99fad0c242b020241906d42b4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 315,
    "line": 304,
    "path": "GRWTSK/Analysis/Kernels/Variant1e51a713d727bf94dd63e8eb36cb759c7a1694102a1f52be656e475990f1c601.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d918483a24ae12c3df07e366d38badd4643d349d9496c1aa8576bddec35fa202",
  "verification": {
    "reference": "docs/verification/Analysis/Kernels/Variant1e51a713d727bf94dd63e8eb36cb759c7a1694102a1f52be656e475990f1c601.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e375e92bddc8588f83d1dc01b61be381ff67ad09186dd3da8f5b295e42233088`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 304–315.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance explicitCokernelπ.epi {X Y : SemiNormedGroupCat.{u}} {f : X ⟶ Y} :
    Epi (explicitCokernelπ f) := by
  constructor
  intro Z g h H
  ext x
  -- Porting note: no longer needed
  -- obtain ⟨x, hx⟩ := explicitCokernelπ_surjective (explicitCokernelπ f x)
  -- change (explicitCokernelπ f ≫ g) _ = _
  rw [H]
set_option linter.uppercaseLean3 false in
#align SemiNormedGroup.explicit_cokernel_π.epi SemiNormedGroupCat.explicitCokernelπ.epi

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/Kernels/Variant1e51a713d727bf94dd63e8eb36cb759c7a1694102a1f52be656e475990f1c601.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Kernels/Variant1e51a713d727bf94dd63e8eb36cb759c7a1694102a1f52be656e475990f1c601.lean#L304).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6298046e4f2620c99fad0c242b020241906d42b4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
