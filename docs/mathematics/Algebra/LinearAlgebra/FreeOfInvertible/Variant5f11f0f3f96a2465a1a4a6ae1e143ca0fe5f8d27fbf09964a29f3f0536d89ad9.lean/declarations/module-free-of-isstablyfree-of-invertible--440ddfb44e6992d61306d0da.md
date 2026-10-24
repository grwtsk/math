# Module.free_of_isStablyFree_of_invertible

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4194ebbf-9429-3929-b699-30e18770f566",
  "kind": "theorem",
  "lexical_name": "Module.free_of_isStablyFree_of_invertible",
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
  "slug": "module-free-of-isstablyfree-of-invertible--440ddfb44e6992d61306d0da",
  "source": {
    "blob": "0a5960ce9caef96914eaaf14a635b4c039c33454",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 65,
    "line": 47,
    "path": "GRWTSK/Algebra/LinearAlgebra/FreeOfInvertible/Variant5f11f0f3f96a2465a1a4a6ae1e143ca0fe5f8d27fbf09964a29f3f0536d89ad9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:440ddfb44e6992d61306d0da8f0af7113361b9fdf91381a3a21c6511d677e210",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/FreeOfInvertible/Variant5f11f0f3f96a2465a1a4a6ae1e143ca0fe5f8d27fbf09964a29f3f0536d89ad9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4194ebbf-9429-3929-b699-30e18770f566`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 47–65.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public theorem Module.free_of_isStablyFree_of_invertible
    [IsStablyFree R M] [Module.Invertible R M] : Module.Free R M := by
  rcases subsingleton_or_nontrivial R with _ | _
  · exact Module.Free.of_subsingleton' R M
  obtain ⟨N, _, _, _, _, _⟩ := IsStablyFree.exist_free_prod R M
  let n := Module.finrank R N
  have hp : Module.finrank R (M × N) = n + 1 := by
    let 𝔭 : PrimeSpectrum R := Nonempty.some inferInstance
    have h1 : rankAtStalk M 𝔭 = 1 := by simp [rankAtStalk, Invertible.finrank_eq_one]
    have heq := congr($(rankAtStalk_prod M N) 𝔭)
    simp only [rankAtStalk_eq_finrank_of_free, Pi.natCast_apply, Pi.add_apply, h1] at heq
    grind
  let e : R ≃ₗ[R] ⋀[R]^(n + 1) (M × N) :=
    (Module.nonempty_linearEquiv_of_finrank_eq_one <| by simp [exteriorPower.finrank_eq, hp]).some
  let bN : Module.Basis (Fin n) R N := Module.finBasis R N
  let f : R →ₗ[R] M := exteriorPower.cofactorToLeft bN ∘ₗ e
  exact Module.Free.of_equiv <| LinearEquiv.ofBijective f <| Invertible.bijective_of_surjective <|
    fun x ↦ ⟨e.symm (exteriorPower.ιMulti R (n + 1) (Fin.cons (x, 0) fun i ↦ (0, bN i))), by
      simp [f, exteriorPower.cofactorToLeft_ιMulti_cons]⟩
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/FreeOfInvertible/Variant5f11f0f3f96a2465a1a4a6ae1e143ca0fe5f8d27fbf09964a29f3f0536d89ad9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/FreeOfInvertible/Variant5f11f0f3f96a2465a1a4a6ae1e143ca0fe5f8d27fbf09964a29f3f0536d89ad9.lean#L47).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0a5960ce9caef96914eaaf14a635b4c039c33454` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
