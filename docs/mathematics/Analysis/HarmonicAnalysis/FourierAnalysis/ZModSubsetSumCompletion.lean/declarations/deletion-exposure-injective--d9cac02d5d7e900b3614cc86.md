# deletion_exposure_injective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:faec6884-de28-cbef-6a36-fac75d62d8bc",
  "kind": "theorem",
  "lexical_name": "deletion_exposure_injective",
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
  "slug": "deletion-exposure-injective--d9cac02d5d7e900b3614cc86",
  "source": {
    "blob": "b4e5279c2db9d681e84aba8f9359a406172b81bd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 42,
    "line": 26,
    "path": "GRWTSK/Analysis/Fourier/ZModSubsetSumCompletion.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d9cac02d5d7e900b3614cc86e912bf3c807505536a6bac505b29327bad31d548",
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

Occurrence: `result:faec6884-de28-cbef-6a36-fac75d62d8bc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 26–42.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem deletion_exposure_injective (z : A) :
    ∀ R T : Finset A, ∀ x ∈ R, ∀ y ∈ T,
      (∑ r ∈ R, r) = z → (∑ t ∈ T, t) = z →
      R.erase x = T.erase y → R = T ∧ x = y := by
  intro R T x hx y hy hR hT he
  have hsR : (∑ r ∈ R.erase x, r) + x = z :=
    (Finset.sum_erase_add R (fun r => r) hx).trans hR
  have hsT : (∑ t ∈ T.erase y, t) + y = z :=
    (Finset.sum_erase_add T (fun t => t) hy).trans hT
  rw [he] at hsR
  have hxy : x = y := add_left_cancel (hsR.trans hsT.symm)
  refine ⟨?_, hxy⟩
  rw [← Finset.insert_erase hx, ← Finset.insert_erase hy, he, hxy]

/-- Exact deletion exposure count followed by its injection into all
`(m-1)`-subsets. This is the counting bridge from conditional completion
uniqueness to the actual fixed-size subset law. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/HarmonicAnalysis/FourierAnalysis/ZModSubsetSumCompletion.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Fourier/ZModSubsetSumCompletion.lean#L26).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b4e5279c2db9d681e84aba8f9359a406172b81bd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
