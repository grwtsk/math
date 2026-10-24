# toModuleMonoidAlgebraMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c4481eed0bdb876b3e8f42d544ef5f931a165db58f0a7130c3d64b110df47f8f",
  "kind": "def",
  "lexical_name": "toModuleMonoidAlgebraMap",
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
  "slug": "tomodulemonoidalgebramap--eda0fcb09f588257b3ff1eec",
  "source": {
    "blob": "dab5dad54b70a6471f8682e09470db35ecabdaf2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 535,
    "line": 528,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Rep/Variant948bd4af52a92a6c87f1aa8c1942f7b462ae310b43a23b6956cabe1511370ba7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:eda0fcb09f588257b3ff1eec5e092678203f634e82e62a373436fee657459031",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Rep/Variant948bd4af52a92a6c87f1aa8c1942f7b462ae310b43a23b6956cabe1511370ba7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c4481eed0bdb876b3e8f42d544ef5f931a165db58f0a7130c3d64b110df47f8f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 528–535.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def toModuleMonoidAlgebraMap {V W : Rep k G} (f : V ⟶ W) :
    ModuleCat.of (MonoidAlgebra k G) V.ρ.asModule ⟶ ModuleCat.of (MonoidAlgebra k G) W.ρ.asModule :=
  ModuleCat.ofHom
    { f.hom.hom with
      map_smul' := fun r x => to_Module_monoidAlgebra_map_aux V.V W.V V.ρ W.ρ f.hom.hom
        (fun g => ModuleCat.hom_ext_iff.mp (f.comm g)) r x }

/-- Functorially convert a representation of `G` into a module over `MonoidAlgebra k G`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Rep/Variant948bd4af52a92a6c87f1aa8c1942f7b462ae310b43a23b6956cabe1511370ba7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Rep/Variant948bd4af52a92a6c87f1aa8c1942f7b462ae310b43a23b6956cabe1511370ba7.lean#L528).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dab5dad54b70a6471f8682e09470db35ecabdaf2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
