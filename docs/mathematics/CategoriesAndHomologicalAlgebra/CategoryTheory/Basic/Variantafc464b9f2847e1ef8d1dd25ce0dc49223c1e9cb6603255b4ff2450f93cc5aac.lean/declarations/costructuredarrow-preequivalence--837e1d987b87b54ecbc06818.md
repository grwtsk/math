# CostructuredArrow.preEquivalence

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2236ec2a22798e2a24795f548cd810f0a57abcf3b3d2d6595d89784635833fba",
  "kind": "def",
  "lexical_name": "CostructuredArrow.preEquivalence",
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
  "slug": "costructuredarrow-preequivalence--837e1d987b87b54ecbc06818",
  "source": {
    "blob": "7fc1155580bc5c4f4b54703d365f28c111a141f5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1181,
    "line": 1169,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantafc464b9f2847e1ef8d1dd25ce0dc49223c1e9cb6603255b4ff2450f93cc5aac.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:837e1d987b87b54ecbc068181e3131963d065575c93b2e1095aac288b2972745",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantafc464b9f2847e1ef8d1dd25ce0dc49223c1e9cb6603255b4ff2450f93cc5aac.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2236ec2a22798e2a24795f548cd810f0a57abcf3b3d2d6595d89784635833fba`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1169–1181.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def CostructuredArrow.preEquivalence (f : CostructuredArrow G e) :
    CostructuredArrow (pre F G e) f ≌ CostructuredArrow F f.left where
  functor := preEquivalence.functor F f
  inverse := preEquivalence.inverse F f
  unitIso := NatIso.ofComponents (fun X => isoMk (isoMk (Iso.refl _)
    (by simp)))
  counitIso := NatIso.ofComponents (fun _ => isoMk (Iso.refl _))

set_option backward.isDefEq.respectTransparency.types false in
set_option backward.defeqAttrib.useBackward true in
/-- The functor `CostructuredArrow T d ⥤ CostructuredArrow (T ⋙ S) e` that `u : S.obj d ⟶ e`
induces via `CostructuredArrow.map₂` can be expressed up to isomorphism by
`CostructuredArrow.preEquivalence` and `CostructuredArrow.proj`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantafc464b9f2847e1ef8d1dd25ce0dc49223c1e9cb6603255b4ff2450f93cc5aac.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantafc464b9f2847e1ef8d1dd25ce0dc49223c1e9cb6603255b4ff2450f93cc5aac.lean#L1169).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7fc1155580bc5c4f4b54703d365f28c111a141f5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
