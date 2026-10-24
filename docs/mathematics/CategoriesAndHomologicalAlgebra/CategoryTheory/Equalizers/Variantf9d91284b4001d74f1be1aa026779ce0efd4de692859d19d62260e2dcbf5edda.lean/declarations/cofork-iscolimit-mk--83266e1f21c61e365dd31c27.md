# Cofork.IsColimit.mk'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b209c87dd07f42d2cf06712648b54e4c10df9208f478558633ffad4f2433689e",
  "kind": "def",
  "lexical_name": "Cofork.IsColimit.mk'",
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
  "slug": "cofork-iscolimit-mk--83266e1f21c61e365dd31c27",
  "source": {
    "blob": "2a1a31cf517f5e1ff080a3d206aeae69fffc32d9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 463,
    "line": 457,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variantf9d91284b4001d74f1be1aa026779ce0efd4de692859d19d62260e2dcbf5edda.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:83266e1f21c61e365dd31c27375c465a835db2d75bca7360f918bc2c69416090",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variantf9d91284b4001d74f1be1aa026779ce0efd4de692859d19d62260e2dcbf5edda.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b209c87dd07f42d2cf06712648b54e4c10df9208f478558633ffad4f2433689e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 457–463.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Cofork.IsColimit.mk' {X Y : C} {f g : X ⟶ Y} (t : Cofork f g)
    (create : ∀ s : Cofork f g, { l : t.pt ⟶ s.pt // t.π ≫ l = s.π
                                    ∧ ∀ {m}, t.π ≫ m = s.π → m = l }) : IsColimit t :=
  Cofork.IsColimit.mk t (fun s => (create s).1) (fun s => (create s).2.1) fun s _ w =>
    (create s).2.2 w

/-- Noncomputably make a limit cone from the existence of unique factorizations. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variantf9d91284b4001d74f1be1aa026779ce0efd4de692859d19d62260e2dcbf5edda.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variantf9d91284b4001d74f1be1aa026779ce0efd4de692859d19d62260e2dcbf5edda.lean#L457).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2a1a31cf517f5e1ff080a3d206aeae69fffc32d9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
