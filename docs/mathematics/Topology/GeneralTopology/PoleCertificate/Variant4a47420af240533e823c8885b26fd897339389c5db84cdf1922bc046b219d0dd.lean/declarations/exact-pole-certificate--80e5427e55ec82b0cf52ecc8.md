# exact_pole_certificate

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
      "line": 1060,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4a/4a47420af240533e823c8885b26fd897339389c5db84cdf1922bc046b219d0dd.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:128414c2-f250-e3a3-67bb-0fd416d174fa",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:eec9702e-8a92-92ed-aef1-96af8e9a482d",
  "kind": "theorem",
  "lexical_name": "exact_pole_certificate",
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
  "slug": "exact-pole-certificate--80e5427e55ec82b0cf52ecc8",
  "source": {
    "blob": "e910f6091b88067e29af8bb15a2f080cb52a38ce",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1101,
    "line": 1060,
    "path": "GRWTSK/Topology/GeneralTopology/PoleCertificate/Variant4a47420af240533e823c8885b26fd897339389c5db84cdf1922bc046b219d0dd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:80e5427e55ec82b0cf52ecc8fc31c2de96aa5c0208d0bd3f70495dd5138b6642",
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

Occurrence: `result:eec9702e-8a92-92ed-aef1-96af8e9a482d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1060–1101.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exact_pole_certificate
    {f : ℂ → ℂ} {a : ℂ}
    (ha : a ≠ 0)
    (hlim :
      Tendsto (fun w ↦ w ^ 9 * f w)
        (𝓝[≠] 0) (𝓝 a))
    (hd :
      ∀ᶠ w in 𝓝[≠] (0 : ℂ),
        DifferentiableAt ℂ f w) :
    AnalyticAt ℂ (patchedNumerator f a) 0 ∧
      patchedNumerator f a 0 = a ∧
      (∀ᶠ w in 𝓝 (0 : ℂ),
        patchedNumerator f a w ≠ 0) ∧
      (∀ᶠ w in 𝓝[≠] (0 : ℂ),
        f w = patchedNumerator f a w / w ^ 9) ∧
      meromorphicOrderAt f 0 = (-9 : ℤ) := by
  have hH :=
    patchedNumerator_analytic hlim hd
  have hH0 :
      patchedNumerator f a 0 ≠ 0 := by
    simpa only [patchedNumerator_zero] using ha
  have hunit :
      ∀ᶠ w in 𝓝 (0 : ℂ),
        patchedNumerator f a w ≠ 0 :=
    (hH.continuousAt.ne_iff_eventually_ne
      continuousAt_const).mp hH0
  have heq :
      ∀ᶠ w in 𝓝[≠] (0 : ℂ),
        f w =
          patchedNumerator f a w / w ^ 9 := by
    filter_upwards [self_mem_nhdsWithin]
      with w hw
    have hne : w ≠ 0 := hw
    rw [patchedNumerator_of_ne f a w hne]
    field_simp
  exact ⟨hH, patchedNumerator_zero f a,
    hunit, heq,
    meromorphicOrderAt_of_patched_numerator
      hH hH0 heq⟩

/-- The continued transform recentered at `2 * (p.val - 1 / 2)` and multiplied
by the ninth power, with its principal coefficient assigned at the origin. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/PoleCertificate/Variant4a47420af240533e823c8885b26fd897339389c5db84cdf1922bc046b219d0dd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/PoleCertificate/Variant4a47420af240533e823c8885b26fd897339389c5db84cdf1922bc046b219d0dd.lean#L1060).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e910f6091b88067e29af8bb15a2f080cb52a38ce` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
