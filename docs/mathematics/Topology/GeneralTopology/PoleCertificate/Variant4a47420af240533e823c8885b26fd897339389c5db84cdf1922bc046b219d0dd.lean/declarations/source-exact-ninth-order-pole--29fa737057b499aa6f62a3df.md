# source_exact_ninth_order_pole

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e910f6091b88067e29af8bb15a2f080cb52a38ce",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1112,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4a/4a47420af240533e823c8885b26fd897339389c5db84cdf1922bc046b219d0dd.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e74964b1-f213-18d1-a963-1858bb1fc927",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5ed51f53-e21c-3f46-f906-36152cfae847",
  "kind": "theorem",
  "lexical_name": "source_exact_ninth_order_pole",
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
  "slug": "source-exact-ninth-order-pole--29fa737057b499aa6f62a3df",
  "source": {
    "blob": "e910f6091b88067e29af8bb15a2f080cb52a38ce",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1167,
    "line": 1112,
    "path": "GRWTSK/Topology/GeneralTopology/PoleCertificate/Variant4a47420af240533e823c8885b26fd897339389c5db84cdf1922bc046b219d0dd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:29fa737057b499aa6f62a3dfb81d0d742849701e32c55ccbb02364fcf8b53afa",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/PoleCertificate/Variant4a47420af240533e823c8885b26fd897339389c5db84cdf1922bc046b219d0dd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5ed51f53-e21c-3f46-f906-36152cfae847`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1112–1167.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem source_exact_ninth_order_pole
    (p : ZeroPoint)
    (hp : 0 < (p.val - 1 / 2).re) :
    MeromorphicAt continuedTransform
        (2 * (p.val - 1 / 2)) ∧
      meromorphicOrderAt continuedTransform
        (2 * (p.val - 1 / 2)) = (-9 : ℤ) ∧
      AnalyticAt ℂ
        (sourcePatchedNumerator p) 0 ∧
      sourcePatchedNumerator p 0 =
        pointPairPrincipalCoefficient p ∧
      pointPairPrincipalCoefficient p ≠ 0 ∧
      (∀ᶠ w in 𝓝 (0 : ℂ),
        sourcePatchedNumerator p w ≠ 0) ∧
      (∀ᶠ w in 𝓝[≠] (0 : ℂ),
        continuedTransform
            (2 * (p.val - 1 / 2) + w) =
          sourcePatchedNumerator p w / w ^ 9) := by
  have hc :
      0 < (2 * (p.val - 1 / 2)).re := by
    simpa using
      mul_pos (by norm_num : (0 : ℝ) < 2) hp
  obtain ⟨hH, hH0, hunit, heq, horderLocal⟩ :=
    exact_pole_certificate
      (point_pair_principal_coefficient_ne_zero p)
      (continuedTransform_cleared_tendsto p hp)
      (continuedTransform_punctured_differentiable _ hc)
  have htranslate :
      meromorphicOrderAt
          (fun w ↦
            continuedTransform
              (2 * (p.val - 1 / 2) + w))
          0 =
        meromorphicOrderAt continuedTransform
          (2 * (p.val - 1 / 2)) := by
    simpa only [zero_add, add_comm] using
      (meromorphicOrderAt_fun_comp_add_const_eq_meromorphicOrderAt
        (f := continuedTransform)
        (x := (0 : ℂ))
        (c := 2 * (p.val - 1 / 2)))
  have horder :
      meromorphicOrderAt continuedTransform
          (2 * (p.val - 1 / 2)) =
        (-9 : ℤ) :=
    htranslate.symm.trans horderLocal
  have hmer :
      MeromorphicAt continuedTransform
        (2 * (p.val - 1 / 2)) :=
    meromorphicAt_of_meromorphicOrderAt_ne_zero
      (by rw [horder]; norm_num)
  exact ⟨hmer, horder, hH, hH0,
    point_pair_principal_coefficient_ne_zero p,
    hunit, heq⟩

/-- Exact local-pole checkpoint reached before global positive-half-plane
meromorphic assembly. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/PoleCertificate/Variant4a47420af240533e823c8885b26fd897339389c5db84cdf1922bc046b219d0dd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/PoleCertificate/Variant4a47420af240533e823c8885b26fd897339389c5db84cdf1922bc046b219d0dd.lean#L1112).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e910f6091b88067e29af8bb15a2f080cb52a38ce` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
