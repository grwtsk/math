# thetaPhiDerivativeTapeTruncation_tendsto

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7bac528e-f16b-d9bd-6330-7fe2bb082b25",
  "kind": "theorem",
  "lexical_name": "thetaPhiDerivativeTapeTruncation_tendsto",
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
  "slug": "thetaphiderivativetapetruncation-tendsto--46f07970e08f9e25fc1d7bc4",
  "source": {
    "blob": "a4c772affe713513a5bd8e67e361a9c7a8da00d7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 205,
    "line": 179,
    "path": "GRWTSK/Topology/GeneralTopology/ThetaPositiveLift/Variantd9ea7fdc7846ff65bffe911bd846e320c5f9039e197f63073c56bfd2fef9e641.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:46f07970e08f9e25fc1d7bc4cb94841f46cb57848890c3ea257d88c2cafb1a43",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ThetaPositiveLift/Variantd9ea7fdc7846ff65bffe911bd846e320c5f9039e197f63073c56bfd2fef9e641.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7bac528e-f16b-d9bd-6330-7fe2bb082b25`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 179–205.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem thetaPhiDerivativeTapeTruncation_tendsto
    (n : ℕ) (t : ℝ) :
    Tendsto
      (fun N => thetaPhiDerivativeTapeTruncation N n t)
      atTop (𝓝 (thetaPhiDerivativeTapeValue n t)) := by
  rw [thetaPhiDerivativeTapeValue_eq_tsum_mode]
  have h :=
    (thetaPhiDerivativeModeValue_summable n t).hasSum.tendsto_sum_nat
  have hfin (N : ℕ) :
      (∑ m : Fin N,
        thetaPhiDerivativeModeValue n m.val t) =
        ∑ m ∈ Finset.range N,
          thetaPhiDerivativeModeValue n m t := by
    rw [Fin.sum_univ_eq_sum_range
      (fun m : ℕ =>
        thetaPhiDerivativeModeValue n m t)]
  have hseq :
      (fun N => thetaPhiDerivativeTapeTruncation N n t) =
        (fun N =>
          ∑ m ∈ Finset.range N,
            thetaPhiDerivativeModeValue n m t) := by
    funext N
    exact hfin N
  rw [hseq]
  exact h

/-- Determinant multilinearity for independent finite sums in every column. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ThetaPositiveLift/Variantd9ea7fdc7846ff65bffe911bd846e320c5f9039e197f63073c56bfd2fef9e641.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ThetaPositiveLift/Variantd9ea7fdc7846ff65bffe911bd846e320c5f9039e197f63073c56bfd2fef9e641.lean#L179).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a4c772affe713513a5bd8e67e361a9c7a8da00d7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
