# ShortExact.gIsCokernel

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3b1ff7611420ebb34f512eb0b61c6358aac275f3020dd0383583ee033b1a0a7f",
  "kind": "def",
  "lexical_name": "ShortExact.gIsCokernel",
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
  "slug": "shortexact-giscokernel--7fd3e455cc569dba307db8a4",
  "source": {
    "blob": "c8a355754ec0e662ea382a53fa7a8c9be2795c5e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 171,
    "line": 165,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ShortExact/Variante719c23ef038f64c2862e6a3bc8dfe1aa85de27d389730131fb544222426a8b4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7fd3e455cc569dba307db8a43fdd2379e5fc78cabde5b0ec2be895ddc8069607",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ShortExact/Variante719c23ef038f64c2862e6a3bc8dfe1aa85de27d389730131fb544222426a8b4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3b1ff7611420ebb34f512eb0b61c6358aac275f3020dd0383583ee033b1a0a7f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 165–171.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def ShortExact.gIsCokernel [Balanced C] {S : ShortComplex C} (hS : S.ShortExact) :
    IsColimit (CokernelCofork.ofπ S.g S.zero) := by
  have := hS.epi_g
  exact hS.exact.gIsCokernel

/-- Is `S` is an exact short complex and `h : S.HomologyData`, there is
a short exact sequence `0 ⟶ h.left.K ⟶ S.X₂ ⟶ h.right.Q ⟶ 0`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ShortExact/Variante719c23ef038f64c2862e6a3bc8dfe1aa85de27d389730131fb544222426a8b4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ShortExact/Variante719c23ef038f64c2862e6a3bc8dfe1aa85de27d389730131fb544222426a8b4.lean#L165).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c8a355754ec0e662ea382a53fa7a8c9be2795c5e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
