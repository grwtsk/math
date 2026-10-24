# IsColimit.desc'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c04f73f6b2b75cd5636f5174407b1fdc2970c10d8ca5cfe651300be0c7495d37",
  "kind": "def",
  "lexical_name": "IsColimit.desc'",
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
  "slug": "iscolimit-desc--7559adecbc985c25457401d9",
  "source": {
    "blob": "6eb1b7bad5a94837d2f8bead75411763320d677b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 435,
    "line": 429,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PullbackCone/Variant584aa3bd8dc1014c2fd9122f11bdd7a1e515145bd71ec9c9855a51d58971be79.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7559adecbc985c25457401d90ca852ed68a25b46ffe24650d270b22035d2ba4a",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/PullbackCone/Variant584aa3bd8dc1014c2fd9122f11bdd7a1e515145bd71ec9c9855a51d58971be79.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c04f73f6b2b75cd5636f5174407b1fdc2970c10d8ca5cfe651300be0c7495d37`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 429–435.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def IsColimit.desc' {t : PushoutCocone f g} (ht : IsColimit t) {W : C} (h : Y ⟶ W) (k : Z ⟶ W)
    (w : f ≫ h = g ≫ k) : { l : t.pt ⟶ W // inl t ≫ l = h ∧ inr t ≫ l = k } :=
  ⟨IsColimit.desc ht h k w, by simp⟩

/-- This is a more convenient formulation to show that a `PushoutCocone` constructed using
`PushoutCocone.mk` is a colimit cocone.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/PullbackCone/Variant584aa3bd8dc1014c2fd9122f11bdd7a1e515145bd71ec9c9855a51d58971be79.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PullbackCone/Variant584aa3bd8dc1014c2fd9122f11bdd7a1e515145bd71ec9c9855a51d58971be79.lean#L429).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6eb1b7bad5a94837d2f8bead75411763320d677b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
