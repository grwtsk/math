# quotientToCoinvariants

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d3a1ce6c9bdd72d6d6793eee385254e9e6d602ef7d21a7f257e24e84532966cf",
  "kind": "abbrev",
  "lexical_name": "quotientToCoinvariants",
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
  "slug": "quotienttocoinvariants--bed768d1ebd31b4cb56e516a",
  "source": {
    "blob": "2da9612f613becc72de2c2f29520f2e436189d31",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 214,
    "line": 199,
    "path": "GRWTSK/Algebra/LinearAlgebra/Coinvariants/Variant5e3e857cf68ec31d622d8443bce1d6865baa25297ef692ec0409cccc38ced29e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bed768d1ebd31b4cb56e516a0fed155e323ef4b81c8debe108ea9050d74568e0",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Coinvariants/Variant5e3e857cf68ec31d622d8443bce1d6865baa25297ef692ec0409cccc38ced29e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d3a1ce6c9bdd72d6d6793eee385254e9e6d602ef7d21a7f257e24e84532966cf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 199–214.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable abbrev quotientToCoinvariants :
    Representation k (G ⧸ S) (Coinvariants (ρ.comp S.subtype)) :=
  ofQuotient (toCoinvariants ρ S) S

end


section Finsupp

open Finsupp Coinvariants

variable {k G V : Type*} [CommRing k] [Group G] [AddCommGroup V] [Module k V]
  (ρ : Representation k G V) (α : Type*)

/-- Given a `G`-representation `(V, ρ)` and a type `α`, this is the map `(α →₀ V)_G →ₗ (α →₀ V_G)`
sending `⟦single a v⟧ ↦ single a ⟦v⟧`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Coinvariants/Variant5e3e857cf68ec31d622d8443bce1d6865baa25297ef692ec0409cccc38ced29e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Coinvariants/Variant5e3e857cf68ec31d622d8443bce1d6865baa25297ef692ec0409cccc38ced29e.lean#L199).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2da9612f613becc72de2c2f29520f2e436189d31` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
