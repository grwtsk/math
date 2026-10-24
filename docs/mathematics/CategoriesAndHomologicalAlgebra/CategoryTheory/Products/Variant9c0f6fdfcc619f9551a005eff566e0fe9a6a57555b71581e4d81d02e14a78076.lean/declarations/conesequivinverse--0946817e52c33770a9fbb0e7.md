# conesEquivInverse

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b1331b934f7d4e5f0ac83a8a389bc3b558a26327dbdde670da022bc7298c0251",
  "kind": "def",
  "lexical_name": "conesEquivInverse",
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
  "slug": "conesequivinverse--0946817e52c33770a9fbb0e7",
  "source": {
    "blob": "889956f476b6ce70bcee65f8a5dd540d4050a287",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 273,
    "line": 256,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variant9c0f6fdfcc619f9551a005eff566e0fe9a6a57555b71581e4d81d02e14a78076.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0946817e52c33770a9fbb0e710f70726810aece1735039dd892364dda3fefa9b",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variant9c0f6fdfcc619f9551a005eff566e0fe9a6a57555b71581e4d81d02e14a78076.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b1331b934f7d4e5f0ac83a8a389bc3b558a26327dbdde670da022bc7298c0251`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 256–273.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def conesEquivInverse (B : C) {J : Type w} (F : Discrete J ⥤ Over B) :
    Cone F ⥤ Cone (widePullbackDiagramOfDiagramOver B F) where
  obj := conesEquivInverseObj B F
  map f :=
    { hom := f.hom.left
      w := fun j => by
        obtain - | j := j
        · simp
        · dsimp
          rw [← f.w ⟨j⟩]
          rfl }

-- Porting note: this should help with the additional `naturality` proof we now have to give in
-- `conesEquivFunctor`, but doesn't.
-- attribute [local aesop safe cases (rule_sets := [CategoryTheory])] Discrete

/-- (Impl) A preliminary definition to avoid timeouts. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variant9c0f6fdfcc619f9551a005eff566e0fe9a6a57555b71581e4d81d02e14a78076.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variant9c0f6fdfcc619f9551a005eff566e0fe9a6a57555b71581e4d81d02e14a78076.lean#L256).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `889956f476b6ce70bcee65f8a5dd540d4050a287` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
