# equiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:819386fe-6e34-4f48-6986-f48ba5150440",
  "kind": "theorem",
  "lexical_name": "equiv",
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
  "slug": "equiv--97ac22e36ab00c3be769a1c4",
  "source": {
    "blob": "92c5817f3af493dce9b067ce620679e8278db287",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 105,
    "line": 85,
    "path": "GRWTSK/Algebra/FinitePresentation/Variantfc3d18ea0dc9734a7fdbc86d4315d572533405daff1edbe41b59cb384118a893.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:97ac22e36ab00c3be769a1c42454d1a8d3c1d8d2af2399fe9b6174d0186e3638",
  "verification": {
    "reference": "docs/verification/Algebra/FinitePresentation/Variantfc3d18ea0dc9734a7fdbc86d4315d572533405daff1edbe41b59cb384118a893.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:819386fe-6e34-4f48-6986-f48ba5150440`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 85–105.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem equiv [FinitePresentation R A] (e : A ≃ₐ[R] B) : FinitePresentation R B := by
  obtain ⟨n, f, hf⟩ := FinitePresentation.out (R := R) (A := A)
  use n, AlgHom.comp (↑e) f
  constructor
  · rw [AlgHom.coe_comp]
    exact Function.Surjective.comp e.surjective hf.1
  suffices (RingHom.ker (AlgHom.comp (e : A →ₐ[R] B) f).toRingHom) = RingHom.ker f.toRingHom by
    rw [this]
    exact hf.2
  have hco : (AlgHom.comp (e : A →ₐ[R] B) f).toRingHom = RingHom.comp (e.toRingEquiv : A ≃+* B)
    f.toRingHom := by
    have h : (AlgHom.comp (e : A →ₐ[R] B) f).toRingHom =
      e.toAlgHom.toRingHom.comp f.toRingHom := rfl
    have h1 : ↑e.toRingEquiv = e.toAlgHom.toRingHom := rfl
    rw [h, h1]
  rw [RingHom.ker_eq_comap_bot, hco, ← Ideal.comap_comap, ← RingHom.ker_eq_comap_bot,
    RingHom.ker_coe_equiv (AlgEquiv.toRingEquiv e), RingHom.ker_eq_comap_bot]

variable (R)

/-- The ring of polynomials in finitely many variables is finitely presented. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/FinitePresentation/Variantfc3d18ea0dc9734a7fdbc86d4315d572533405daff1edbe41b59cb384118a893.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/FinitePresentation/Variantfc3d18ea0dc9734a7fdbc86d4315d572533405daff1edbe41b59cb384118a893.lean#L85).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `92c5817f3af493dce9b067ce620679e8278db287` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
