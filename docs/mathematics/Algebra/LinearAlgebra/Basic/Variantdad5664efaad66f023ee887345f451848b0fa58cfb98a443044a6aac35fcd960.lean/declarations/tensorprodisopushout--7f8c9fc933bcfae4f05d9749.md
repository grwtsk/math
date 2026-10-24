# tensorProdIsoPushout

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7bd8a26f3a4ee985eb65d6072f0f52a8a16f0583dc9c38a340a9cf596a50272a",
  "kind": "def",
  "lexical_name": "tensorProdIsoPushout",
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
  "slug": "tensorprodisopushout--7f8c9fc933bcfae4f05d9749",
  "source": {
    "blob": "a401c7e79d515b20deddf4d9550ce1b2fefd013e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 181,
    "line": 167,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variantdad5664efaad66f023ee887345f451848b0fa58cfb98a443044a6aac35fcd960.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7f8c9fc933bcfae4f05d9749912e8e960e2f93ee228b4fec594788302fb28068",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variantdad5664efaad66f023ee887345f451848b0fa58cfb98a443044a6aac35fcd960.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7bd8a26f3a4ee985eb65d6072f0f52a8a16f0583dc9c38a340a9cf596a50272a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 167–181.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def tensorProdIsoPushout : tensorProd R S ≅ Under.pushout (ofHom <| algebraMap R S) :=
  NatIso.ofComponents (fun A ↦ tensorProdObjIsoPushoutObj S A) <| by
    intro A B f
    dsimp
    rw [← cancel_epi (tensorProdObjIsoPushoutObj S A).inv]
    ext : 1
    apply pushout.hom_ext
    · rw [← cancel_mono (tensorProdObjIsoPushoutObj S B).inv.right]
      ext x
      simp [mkUnder_right]
    · rw [← cancel_mono (tensorProdObjIsoPushoutObj S B).inv.right]
      ext (x : S)
      simp [mkUnder_right]

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variantdad5664efaad66f023ee887345f451848b0fa58cfb98a443044a6aac35fcd960.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variantdad5664efaad66f023ee887345f451848b0fa58cfb98a443044a6aac35fcd960.lean#L167).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a401c7e79d515b20deddf4d9550ce1b2fefd013e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
