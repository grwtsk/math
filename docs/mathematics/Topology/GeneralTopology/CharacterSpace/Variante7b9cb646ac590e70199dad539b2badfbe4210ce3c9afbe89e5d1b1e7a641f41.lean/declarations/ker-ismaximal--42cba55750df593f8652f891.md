# ker_isMaximal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c9aaf5c7f63b315314efc9a3c863fae3a5e1d6886266a76df7d8be32361d6a5c",
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
  "slug": "ker-ismaximal--42cba55750df593f8652f891",
  "source": {
    "blob": "52921dc782f76178eba15c999ba01705a22a8bbc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 224,
    "line": 208,
    "path": "GRWTSK/Topology/GeneralTopology/CharacterSpace/Variante7b9cb646ac590e70199dad539b2badfbe4210ce3c9afbe89e5d1b1e7a641f41.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:42cba55750df593f8652f891746880238c731e2b0690c8629f1f88b2b1c3aed8",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/CharacterSpace/Variante7b9cb646ac590e70199dad539b2badfbe4210ce3c9afbe89e5d1b1e7a641f41.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c9aaf5c7f63b315314efc9a3c863fae3a5e1d6886266a76df7d8be32361d6a5c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 208–224.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance ker_isMaximal (φ : characterSpace 𝕜 A) : (RingHom.ker φ).IsMaximal :=
  RingHom.ker_isMaximal_of_surjective φ fun z =>
    ⟨algebraMap 𝕜 A z, by simp only [AlgHomClass.commutes, Algebra.id.map_eq_id, RingHom.id_apply]⟩

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

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/CharacterSpace/Variante7b9cb646ac590e70199dad539b2badfbe4210ce3c9afbe89e5d1b1e7a641f41.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/CharacterSpace/Variante7b9cb646ac590e70199dad539b2badfbe4210ce3c9afbe89e5d1b1e7a641f41.lean#L208).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `52921dc782f76178eba15c999ba01705a22a8bbc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
