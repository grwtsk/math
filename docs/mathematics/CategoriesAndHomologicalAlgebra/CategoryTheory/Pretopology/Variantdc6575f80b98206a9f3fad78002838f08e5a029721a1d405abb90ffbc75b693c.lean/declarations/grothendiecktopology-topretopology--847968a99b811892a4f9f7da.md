# GrothendieckTopology.toPretopology

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:410b6c380378bbe7863a1703975858a8d1e5bc7a534995af5b8cc3ce704cde3b",
  "kind": "def",
  "lexical_name": "GrothendieckTopology.toPretopology",
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
  "slug": "grothendiecktopology-topretopology--847968a99b811892a4f9f7da",
  "source": {
    "blob": "924071d8834ed85cdb5c7d0fa69aa864a5f3f783",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 162,
    "line": 148,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pretopology/Variantdc6575f80b98206a9f3fad78002838f08e5a029721a1d405abb90ffbc75b693c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:847968a99b811892a4f9f7daf7ff790a6fcce44fc69ecf3c7ef38f6dc7a72941",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Pretopology/Variantdc6575f80b98206a9f3fad78002838f08e5a029721a1d405abb90ffbc75b693c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:410b6c380378bbe7863a1703975858a8d1e5bc7a534995af5b8cc3ce704cde3b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 148–162.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def GrothendieckTopology.toPretopology (J : GrothendieckTopology C) : Pretopology C where
  coverings X := {R | Sieve.generate R ∈ J X}
  has_isos X Y f i := J.covering_of_eq_top (by simp)
  pullbacks X Y f R hR := by simpa [Sieve.pullbackArrows_comm] using J.pullback_stable f hR
  transitive X S Ti hS hTi := by
    apply J.transitive hS
    intro Y f
    rintro ⟨Z, g, f, hf, rfl⟩
    rw [Sieve.pullback_comp]
    apply J.pullback_stable g
    apply J.superset_covering _ (hTi _ hf)
    rintro Y g ⟨W, h, g, hg, rfl⟩
    exact ⟨_, h, _, ⟨_, _, _, hf, hg, rfl⟩, by simp⟩

/-- We have a Galois insertion from pretopologies to Grothendieck topologies. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Pretopology/Variantdc6575f80b98206a9f3fad78002838f08e5a029721a1d405abb90ffbc75b693c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pretopology/Variantdc6575f80b98206a9f3fad78002838f08e5a029721a1d405abb90ffbc75b693c.lean#L148).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `924071d8834ed85cdb5c7d0fa69aa864a5f3f783` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
