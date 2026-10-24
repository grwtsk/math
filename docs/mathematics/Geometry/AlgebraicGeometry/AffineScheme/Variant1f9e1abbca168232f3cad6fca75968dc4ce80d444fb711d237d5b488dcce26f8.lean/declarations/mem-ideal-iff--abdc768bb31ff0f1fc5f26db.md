# mem_ideal_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d464e69a-7a46-6d6f-6812-c4fe381e59c8",
  "kind": "lemma",
  "lexical_name": "mem_ideal_iff",
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
  "slug": "mem-ideal-iff--abdc768bb31ff0f1fc5f26db",
  "source": {
    "blob": "0a0305ec46f99a3963a025fcdc52db6af41c9c04",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 875,
    "line": 861,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/AffineScheme/Variant1f9e1abbca168232f3cad6fca75968dc4ce80d444fb711d237d5b488dcce26f8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:abdc768bb31ff0f1fc5f26db0adf1494fd33e19a3fc04496add0a660235ca01d",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/AffineScheme/Variant1f9e1abbca168232f3cad6fca75968dc4ce80d444fb711d237d5b488dcce26f8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d464e69a-7a46-6d6f-6812-c4fe381e59c8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 861–875.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma mem_ideal_iff {s : Γ(X, U)} {I : Ideal Γ(X, U)} :
    s ∈ I ↔ ∀ (x : X) (h : x ∈ U), X.presheaf.germ U x h s ∈ I.map (X.presheaf.germ U x h).hom := by
  refine ⟨fun hs x hxU ↦ Ideal.mem_map_of_mem _ hs, fun H ↦ ?_⟩
  let (x : _) : Algebra Γ(X, U) (X.presheaf.stalk (hU.fromSpec x)) :=
    TopCat.Presheaf.algebra_section_stalk X.presheaf _
  have (P : Ideal Γ(X, U)) [hP : P.IsPrime] : IsLocalization.AtPrime _ P :=
      hU.isLocalization_stalk' ⟨P, hP⟩ (hU.isoSpec.inv _).2
  refine Submodule.mem_of_localization_maximal
      (fun P hP ↦ X.presheaf.stalk (hU.fromSpec ⟨P, hP.isPrime⟩))
      (fun P hP ↦ Algebra.linearMap _ _) _ _ ?_
  intro P hP
  rw [Ideal.localized₀_eq_restrictScalars_map]
  exact H _ _

include hU in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/AffineScheme/Variant1f9e1abbca168232f3cad6fca75968dc4ce80d444fb711d237d5b488dcce26f8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/AffineScheme/Variant1f9e1abbca168232f3cad6fca75968dc4ce80d444fb711d237d5b488dcce26f8.lean#L861).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0a0305ec46f99a3963a025fcdc52db6af41c9c04` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
