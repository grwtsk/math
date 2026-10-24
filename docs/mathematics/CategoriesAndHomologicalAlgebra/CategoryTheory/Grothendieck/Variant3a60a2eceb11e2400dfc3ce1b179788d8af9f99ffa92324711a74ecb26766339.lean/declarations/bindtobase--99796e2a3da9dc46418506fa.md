# bindToBase

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c877784a7cc528d0e266380986e45a2f72ed5dc49745b6ecafdf6d2a4f1a9f05",
  "kind": "def",
  "lexical_name": "bindToBase",
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
  "slug": "bindtobase--99796e2a3da9dc46418506fa",
  "source": {
    "blob": "96320b32e57cf7bef3c65089b4fc20ff1f255dcf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 502,
    "line": 494,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variant3a60a2eceb11e2400dfc3ce1b179788d8af9f99ffa92324711a74ecb26766339.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:99796e2a3da9dc46418506faf1a7a12638d7705e101bda3f812571975f4ecb57",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variant3a60a2eceb11e2400dfc3ce1b179788d8af9f99ffa92324711a74ecb26766339.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c877784a7cc528d0e266380986e45a2f72ed5dc49745b6ecafdf6d2a4f1a9f05`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 494–502.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def bindToBase {X : C} (S : J.Cover X) (T : ∀ I : S.Arrow, J.Cover I.Y) : S.bind T ⟶ S :=
  homOfLE <| by
    rintro Y f ⟨Z, e1, e2, h1, _, h3⟩
    rw [← h3]
    apply Sieve.downward_closed
    exact h1

/-- An arrow in bind has the form `A ⟶ B ⟶ X` where `A ⟶ B` is an arrow in `T I` for some `I`.
and `B ⟶ X` is an arrow of `S`. This is the object `B`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variant3a60a2eceb11e2400dfc3ce1b179788d8af9f99ffa92324711a74ecb26766339.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variant3a60a2eceb11e2400dfc3ce1b179788d8af9f99ffa92324711a74ecb26766339.lean#L494).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `96320b32e57cf7bef3c65089b4fc20ff1f255dcf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
