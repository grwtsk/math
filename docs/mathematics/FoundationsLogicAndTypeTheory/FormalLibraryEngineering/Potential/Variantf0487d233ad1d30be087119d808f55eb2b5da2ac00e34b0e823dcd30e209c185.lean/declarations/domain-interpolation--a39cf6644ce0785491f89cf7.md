# domain_interpolation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a1934df0-32b3-fd36-9565-71b74d9658e7",
  "kind": "theorem",
  "lexical_name": "domain_interpolation",
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
  "slug": "domain-interpolation--a39cf6644ce0785491f89cf7",
  "source": {
    "blob": "6e246bd47d94c6d78b410dcc2e7114cbe38d2424",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 345,
    "line": 328,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Potential/Variantf0487d233ad1d30be087119d808f55eb2b5da2ac00e34b0e823dcd30e209c185.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a39cf6644ce0785491f89cf7d629d52437925a0976c7a353c011b970c9f8a71b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Potential/Variantf0487d233ad1d30be087119d808f55eb2b5da2ac00e34b0e823dcd30e209c185.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a1934df0-32b3-fd36-9565-71b74d9658e7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 328–345.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem domain_interpolation (hD : IsComponent (SecondaryEdge P C) D)
    (hl : ∀ X ∈ D, X ∈ ObservationLayers P C)
    (ha : ∀ X ∈ D, ActiveLayer P C X)
    {I J K I' J' : Set S} (htr : ProfileTriple P I J K) (hK : K ∈ D)
    (hI' : I' ∈ D) (hJ' : ActiveLayer P C J')
    (hII' : PositivePath (PrimaryEdge P) I' I)
    (hJJ' : PositivePath (PrimaryEdge P) J' J) :
    I ∈ D ∧ ActiveLayer P C J := by
  have hIH := ObservationLayers.positive (hl I' hI') hII'
  have hJH := ObservationLayers.positive hJ'.layer hJJ'
  have hKH := hl K hK
  exact ⟨hD.between hI' hK (ObservationLayers.secondary (hl I' hI') hII').reach
    (Reach.single (.negative hIH hJH hKH htr)),
    (ha K hK).predecessor (Reach.single (.positive hJH hKH (.codomain htr)))⟩
end IsComponent

namespace Profile
variable {S : Type u} {P : Specification S} {Γ Δ : List (Expr S)}
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Potential/Variantf0487d233ad1d30be087119d808f55eb2b5da2ac00e34b0e823dcd30e209c185.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Potential/Variantf0487d233ad1d30be087119d808f55eb2b5da2ac00e34b0e823dcd30e209c185.lean#L328).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6e246bd47d94c6d78b410dcc2e7114cbe38d2424` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
