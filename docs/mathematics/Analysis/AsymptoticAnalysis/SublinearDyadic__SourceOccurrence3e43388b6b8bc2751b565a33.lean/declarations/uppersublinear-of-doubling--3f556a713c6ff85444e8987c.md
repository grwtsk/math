# upperSublinear_of_doubling

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:da1659f5-2689-a750-7b6f-39ab9647e635",
  "kind": "theorem",
  "lexical_name": "upperSublinear_of_doubling",
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
  "slug": "uppersublinear-of-doubling--3f556a713c6ff85444e8987c",
  "source": {
    "blob": "c77c4e684f065879f2bb66206f950e3706d448d9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 165,
    "line": 146,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/SublinearDyadic.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3f556a713c6ff85444e8987ca137ab4f4d471c74752c09ff6a411ed2d3f4e735",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/SublinearDyadic__SourceOccurrence3e43388b6b8bc2751b565a33.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:da1659f5-2689-a750-7b6f-39ab9647e635`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 146–165.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem upperSublinear_of_doubling (u loss : ℕ → ℝ)
    (hu : ∀ n, 0 ≤ u n) (hmono : Monotone u)
    (hpos : ∀ n, 0 ≤ loss n) (hloss : UpperSublinear loss)
    (step : ∀ n, 1 ≤ n → u (2*n) ≤ u n + loss n) :
    UpperSublinear u := by
  apply upperSublinear_of_affine_bounds
  intro ε hε
  obtain ⟨K, hK⟩ := hloss (ε/2) (by linarith)
  let C := u 1 + ∑ j ∈ Finset.range K, loss (2^j)
  refine ⟨C, add_nonneg (hu 1) (Finset.sum_nonneg (fun j _ => hpos (2^j))), ?_⟩
  intro n hn
  obtain ⟨J, hlow, hupp⟩ := dyadic_cover n hn
  have hiter := dyadic_iteration u loss step J
  have hsum := dyadic_tail_budget loss hpos (ε/2) (by linarith) K hK J
  have hpow : (2 : ℝ)^J ≤ 2*(n : ℝ) := by exact_mod_cast hupp
  have hmn := hmono hlow
  dsimp [C]
  nlinarith

/-- Multiplicative norm return, with the complete relative Hankel budget retained. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/AsymptoticAnalysis/SublinearDyadic__SourceOccurrence3e43388b6b8bc2751b565a33.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/SublinearDyadic.lean#L146).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c77c4e684f065879f2bb66206f950e3706d448d9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
