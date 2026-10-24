# _root_.GRWTSK.Algebra.LinearAlgebra.OrthonormalBasis.Variant0288db6fe5d7c30aee01ff1dac6c930711513ef3722853801542c8a32ad40ae3.Pi.orthonormalBasis_repr

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2c13e5ef-41a9-3515-f0d0-ac40ef957275",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.Algebra.LinearAlgebra.OrthonormalBasis.Variant0288db6fe5d7c30aee01ff1dac6c930711513ef3722853801542c8a32ad40ae3.Pi.orthonormalBasis_repr",
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
  "slug": "root-grwtsk-algebra-linearalgebra-orthonormalbasis-variant0288db6fe5d7c3--2853af001f441e58178ccd30",
  "source": {
    "blob": "54f9aff9b5cba86d79c24b8d2d28a3ad90d57d91",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 573,
    "line": 565,
    "path": "GRWTSK/Algebra/LinearAlgebra/PiL2/Variant79ab8275324a67b402dcf3142c876c9307a503b388d5470788b51a0cb00aabde.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2853af001f441e58178ccd30eadcef9fc77e385fbc966db6cd13b8cac133af43",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/PiL2/Variant79ab8275324a67b402dcf3142c876c9307a503b388d5470788b51a0cb00aabde.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2c13e5ef-41a9-3515-f0d0-ac40ef957275`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 565–573.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.Algebra.LinearAlgebra.OrthonormalBasis.Variant0288db6fe5d7c30aee01ff1dac6c930711513ef3722853801542c8a32ad40ae3.Pi.orthonormalBasis_repr {η : Type*} [Fintype η] {ι : η → Type*}
    [∀ i, Fintype (ι i)] {𝕜 : Type*} [RCLike 𝕜] {E : η → Type*} [∀ i, NormedAddCommGroup (E i)]
    [∀ i, InnerProductSpace 𝕜 (E i)] (B : ∀ i, OrthonormalBasis (ι i) 𝕜 (E i)) (x : (i : η) → E i)
    (j : (i : η) × (ι i)) :
    (Pi.orthonormalBasis B).repr x j = (B j.fst).repr (x j.fst) j.snd := rfl

variable {v : ι → E}

/-- A finite orthonormal set that spans is an orthonormal basis -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/PiL2/Variant79ab8275324a67b402dcf3142c876c9307a503b388d5470788b51a0cb00aabde.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/PiL2/Variant79ab8275324a67b402dcf3142c876c9307a503b388d5470788b51a0cb00aabde.lean#L565).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `54f9aff9b5cba86d79c24b8d2d28a3ad90d57d91` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
