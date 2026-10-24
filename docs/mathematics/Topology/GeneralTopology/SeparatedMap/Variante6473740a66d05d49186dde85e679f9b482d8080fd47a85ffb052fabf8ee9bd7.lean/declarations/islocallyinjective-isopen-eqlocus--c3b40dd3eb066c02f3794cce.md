# IsLocallyInjective.isOpen_eqLocus

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d65e26ec-4d93-b3a1-2cf0-d51e7b1cb6e2",
  "kind": "theorem",
  "lexical_name": "IsLocallyInjective.isOpen_eqLocus",
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
  "slug": "islocallyinjective-isopen-eqlocus--c3b40dd3eb066c02f3794cce",
  "source": {
    "blob": "1354addf21a01f90bc7cd0a7e8dc4b50b7c7e520",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 209,
    "line": 194,
    "path": "GRWTSK/Topology/GeneralTopology/SeparatedMap/Variante6473740a66d05d49186dde85e679f9b482d8080fd47a85ffb052fabf8ee9bd7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c3b40dd3eb066c02f3794cceaef87b25fe362482094b3986890609d2d641ab31",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/SeparatedMap/Variante6473740a66d05d49186dde85e679f9b482d8080fd47a85ffb052fabf8ee9bd7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d65e26ec-4d93-b3a1-2cf0-d51e7b1cb6e2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 194–209.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsLocallyInjective.isOpen_eqLocus (inj : IsLocallyInjective f) (he : f ∘ g₁ = f ∘ g₂) :
    IsOpen {a | g₁ a = g₂ a} :=
  let g : A → f.Pullback f := fun a ↦ ⟨⟨g₁ a, g₂ a⟩, congr_fun he a⟩
  (isLocallyInjective_iff_isOpen_diagonal.mp inj).preimage (by fun_prop : Continuous g)

end eqLocus

variable {X E A : Type*} [TopologicalSpace E] [TopologicalSpace A] {p : E → X}

namespace IsSeparatedMap

variable {s : Set A} {g g₁ g₂ : A → E} (sep : IsSeparatedMap p) (inj : IsLocallyInjective p)
include sep inj

/-- If `p` is a locally injective separated map, and `A` is a connected space,
  then two lifts `g₁, g₂ : A → E` of a map `f : A → X` are equal if they agree at one point. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SeparatedMap/Variante6473740a66d05d49186dde85e679f9b482d8080fd47a85ffb052fabf8ee9bd7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SeparatedMap/Variante6473740a66d05d49186dde85e679f9b482d8080fd47a85ffb052fabf8ee9bd7.lean#L194).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1354addf21a01f90bc7cd0a7e8dc4b50b7c7e520` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
