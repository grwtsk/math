# unitCoeff_weighted_sum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6ca458f3-3bdb-da4a-35b2-72d10ad3fcc2",
  "kind": "theorem",
  "lexical_name": "unitCoeff_weighted_sum",
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
  "slug": "unitcoeff-weighted-sum--f7ce89257367046f1776d686",
  "source": {
    "blob": "3a54bb0cea427c5004c5a044593ff393f2572576",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 79,
    "line": 57,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/CenteredAbel/Variantecb67f77f754f06dc04ab2eb4ba201a49f7737c3bbcd201daeaff7f7c56241bd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f7ce89257367046f1776d686e3f335e1d4ebcd873736757088a91344dde7bddf",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/CenteredAbel/Variantecb67f77f754f06dc04ab2eb4ba201a49f7737c3bbcd201daeaff7f7c56241bd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6ca458f3-3bdb-da4a-35b2-72d10ad3fcc2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 57–79.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem unitCoeff_weighted_sum (g : ℝ → ℝ) (N : ℕ) :
    (∑ n ∈ Finset.Icc 0 N, g n * unitCoeff n) =
      ∑ n ∈ Finset.Icc 1 N, g n := by
  calc
    _ = ∑ n ∈ Finset.Icc 1 N, g n * unitCoeff n := by
      symm
      apply Finset.sum_subset
      · intro n hn
        exact Finset.mem_Icc.mpr ⟨Nat.zero_le _, (Finset.mem_Icc.mp hn).2⟩
      · intro n hn hnnot
        have hn0 : n = 0 := by
          simp only [Finset.mem_Icc] at hn hnnot
          omega
        subst n
        simp [unitCoeff]
    _ = _ := by
      apply Finset.sum_congr rfl
      intro n hn
      have hn0 : n ≠ 0 := by
        have := (Finset.mem_Icc.mp hn).1
        omega
      simp [unitCoeff, hn0]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/CenteredAbel/Variantecb67f77f754f06dc04ab2eb4ba201a49f7737c3bbcd201daeaff7f7c56241bd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/CenteredAbel/Variantecb67f77f754f06dc04ab2eb4ba201a49f7737c3bbcd201daeaff7f7c56241bd.lean#L57).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3a54bb0cea427c5004c5a044593ff393f2572576` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
