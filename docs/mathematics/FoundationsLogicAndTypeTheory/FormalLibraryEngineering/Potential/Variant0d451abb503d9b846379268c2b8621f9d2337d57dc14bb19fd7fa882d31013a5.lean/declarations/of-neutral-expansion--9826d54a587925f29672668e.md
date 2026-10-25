# of_neutral_expansion

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ea65ee12-933c-bae6-4aa6-fd85f8d48296",
  "kind": "theorem",
  "lexical_name": "of_neutral_expansion",
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
  "slug": "of-neutral-expansion--9826d54a587925f29672668e",
  "source": {
    "blob": "2e1a55517e60d102cb4397d4882ff100b98272e7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 280,
    "line": 255,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Potential/Variant0d451abb503d9b846379268c2b8621f9d2337d57dc14bb19fd7fa882d31013a5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9826d54a587925f29672668edc6250cb293babf16470bc5a5bd45aa4dcde1d7d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Potential/Variant0d451abb503d9b846379268c2b8621f9d2337d57dc14bb19fd7fa882d31013a5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ea65ee12-933c-bae6-4aa6-fd85f8d48296`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 255–280.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem of_neutral_expansion (hw : SystemWeaklyNormalizing P)
    (hD : IsComponent (SecondaryEdge P C) D) (hplain : ∀ I ∈ D, PlainLayer P C I)
    (hneg : ∃ I ∈ D, ∃ K ∈ D, SecondaryEdge P C I K true)
    {I J K : Set S} (htr : ProfileTriple P I J K) (hJ : J ∈ D) (hK : K ∈ D)
    {Γ Δ : List (Expr S)} (hΔ : ValidContext P Δ) {σ : Nat → Expr S}
    (hσ : TypedSubstitution P Γ Δ σ) (hsrc : SingleSource P Γ σ I)
    {M A B : Expr S} {s : S} (h : HasType P Γ M (.sort s))
    (hn : Normal M) (hne : Neutral M) (hM : Profile P Γ M ∈ D)
    (he : (M.subst σ).normalForm = .pi A B) : ForbiddenConfiguration P C := by
  obtain ⟨hp, hax, n, F, hh, hf, hpath⟩ := h.neutral_profile_seed hw hne hn
  have hbad : ¬ Neutral (σ n) := by
    intro hs
    have hM' := hne.subst_of_head σ (by
      intro m hm
      have heq : m = n := by simpa only [hh, Expr.var.injEq] using hm.symm
      exact heq.symm ▸ hs)
    have hnorm := hM'.normalForm ((h.subst hΔ σ hσ).weaklyNormalizing hw)
    rw [he] at hnorm
    cases hnorm
  have hF := hsrc n F hf hbad
  rw [hF] at hpath
  exact ⟨D, hD, hplain, hneg, I, J, K, s, htr, hJ, hK, hp ▸ hM, hax, hpath⟩
end ForbiddenConfiguration

namespace ObservationLayers
variable {S : Type u} {P : Specification S} {C : Set (Set S)} {I J : Set S}
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Potential/Variant0d451abb503d9b846379268c2b8621f9d2337d57dc14bb19fd7fa882d31013a5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Potential/Variant0d451abb503d9b846379268c2b8621f9d2337d57dc14bb19fd7fa882d31013a5.lean#L255).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2e1a55517e60d102cb4397d4882ff100b98272e7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
