# constrained_deletion_count

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b47fab02-20e2-237e-123f-d611c5159a8b",
  "kind": "theorem",
  "lexical_name": "constrained_deletion_count",
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
  "slug": "constrained-deletion-count--fbcb255c1624b8ebd243b20b",
  "source": {
    "blob": "b4e5279c2db9d681e84aba8f9359a406172b81bd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 74,
    "line": 43,
    "path": "GRWTSK/Analysis/Fourier/ZModSubsetSumCompletion.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fbcb255c1624b8ebd243b20b221680f4be1230aefb8cc7f22f847cdbae08e1c7",
  "verification": {
    "reference": "docs/verification/Analysis/HarmonicAnalysis/FourierAnalysis/ZModSubsetSumCompletion.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b47fab02-20e2-237e-123f-d611c5159a8b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 43–74.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem constrained_deletion_count (S : Finset A) (m : ℕ) (z : A) :
    ((S.powersetCard m).filter (fun R => ∑ x ∈ R, x = z)).card * m ≤
      (S.powersetCard (m - 1)).card := by
  classical
  let F := (S.powersetCard m).filter (fun R => ∑ x ∈ R, x = z)
  let E : Finset ((R : Finset A) × A) := F.sigma fun R => R
  have hcard : E.card = F.card * m := by
    rw [Finset.card_sigma]
    calc
      ∑ R ∈ F, R.card = ∑ _R ∈ F, m := by
        apply Finset.sum_congr rfl
        intro R hR
        exact (Finset.mem_powersetCard.mp (Finset.mem_filter.mp hR).1).2
      _ = F.card * m := by simp
  rw [← hcard]
  apply Finset.card_le_card_of_injOn (fun e : (R : Finset A) × A => e.1.erase e.2)
  · intro e he
    obtain ⟨hR, hx⟩ := Finset.mem_sigma.mp he
    obtain ⟨hRS, hRm⟩ := Finset.mem_powersetCard.mp (Finset.mem_filter.mp hR).1
    exact Finset.mem_powersetCard.mpr
      ⟨(Finset.erase_subset e.2 e.1).trans hRS,
        by rw [Finset.card_erase_of_mem hx, hRm]⟩
  · intro e he f hf hef
    obtain ⟨heR, hex⟩ := Finset.mem_sigma.mp he
    obtain ⟨hfR, hfx⟩ := Finset.mem_sigma.mp hf
    have hRsum := (Finset.mem_filter.mp heR).2
    have hTsum := (Finset.mem_filter.mp hfR).2
    obtain ⟨hR, hxy⟩ := deletion_exposure_injective z e.1 f.1 e.2 hex f.2 hfx hRsum hTsum hef
    exact Sigma.ext hR (by simpa using hxy)

/-- Elementary anti-concentration as a cardinal inequality. The hypotheses
are precisely positive sample size and `m ≤ |S|`; no primality is used. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/HarmonicAnalysis/FourierAnalysis/ZModSubsetSumCompletion.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Fourier/ZModSubsetSumCompletion.lean#L43).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b4e5279c2db9d681e84aba8f9359a406172b81bd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
