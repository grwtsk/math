# ker_isMaximal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4fbd828ddb7b941f9f6811d9dfde2b0baf4be0447df8a32f3196cff1954e0758",
  "kind": "instance",
  "lexical_name": "ker_isMaximal",
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
  "slug": "ker-ismaximal--ff8897cf311a09f4f265d1ec",
  "source": {
    "blob": "0202702d8b0943875abde77fdc64e27b0e6d4bf6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 228,
    "line": 213,
    "path": "GRWTSK/Topology/GeneralTopology/CharacterSpace/Variant04020d7828fce0a6d13e698675b581618b6c2fbbd71d68df84eb5d5201292303.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ff8897cf311a09f4f265d1ec385206b5bb51f5062d442841204268a4c447cff3",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/CharacterSpace/Variant04020d7828fce0a6d13e698675b581618b6c2fbbd71d68df84eb5d5201292303.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4fbd828ddb7b941f9f6811d9dfde2b0baf4be0447df8a32f3196cff1954e0758`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 213–228.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance ker_isMaximal (φ : characterSpace 𝕜 A) : (RingHom.ker φ).IsMaximal :=
  RingHom.ker_isMaximal_of_surjective φ fun z ↦ ⟨algebraMap 𝕜 A z, by simp [AlgHomClass.commutes]⟩

end Kernel

section GelfandTransform

open ContinuousMap

variable (𝕜 A) [CommRing 𝕜] [NoZeroDivisors 𝕜] [TopologicalSpace 𝕜] [IsTopologicalRing 𝕜]
  [TopologicalSpace A] [Semiring A] [Algebra 𝕜 A]

/-- The **Gelfand transform** is an algebra homomorphism (over `𝕜`) from a topological `𝕜`-algebra
`A` into the `𝕜`-algebra of continuous `𝕜`-valued functions on the `characterSpace 𝕜 A`.
The character space itself consists of all algebra homomorphisms from `A` to `𝕜`. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/CharacterSpace/Variant04020d7828fce0a6d13e698675b581618b6c2fbbd71d68df84eb5d5201292303.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/CharacterSpace/Variant04020d7828fce0a6d13e698675b581618b6c2fbbd71d68df84eb5d5201292303.lean#L213).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0202702d8b0943875abde77fdc64e27b0e6d4bf6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
