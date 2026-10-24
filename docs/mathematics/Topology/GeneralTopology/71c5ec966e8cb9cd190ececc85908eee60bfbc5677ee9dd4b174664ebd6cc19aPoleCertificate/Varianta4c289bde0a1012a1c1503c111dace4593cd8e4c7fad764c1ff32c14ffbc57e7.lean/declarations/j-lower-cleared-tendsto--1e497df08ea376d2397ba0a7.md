# J_lower_cleared_tendsto

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bcc38972-09ee-df0d-d8e3-4f496ca9d9d8",
  "kind": "lemma",
  "lexical_name": "J_lower_cleared_tendsto",
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
  "slug": "j-lower-cleared-tendsto--1e497df08ea376d2397ba0a7",
  "source": {
    "blob": "de06cc4b6a444d170fe5a20fa003acb92df90238",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 75,
    "line": 51,
    "path": "GRWTSK/Topology/GeneralTopology/71c5ec966e8cb9cd190ececc85908eee60bfbc5677ee9dd4b174664ebd6cc19aPoleCertificate/Varianta4c289bde0a1012a1c1503c111dace4593cd8e4c7fad764c1ff32c14ffbc57e7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1e497df08ea376d2397ba0a78a881230e8109ac1c857022306428d629011600b",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/71c5ec966e8cb9cd190ececc85908eee60bfbc5677ee9dd4b174664ebd6cc19aPoleCertificate/Varianta4c289bde0a1012a1c1503c111dace4593cd8e4c7fad764c1ff32c14ffbc57e7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bcc38972-09ee-df0d-d8e3-4f496ca9d9d8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 51–75.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma J_lower_cleared_tendsto
    (k n : ℕ) (hkn : k < n) :
    Tendsto
      (fun w : ℂ ↦ w ^ (n + 1) * J k w)
      (𝓝[≠] 0) (𝓝 0) := by
  have hp :
      Tendsto (fun w : ℂ ↦ w ^ (n - k))
        (𝓝[≠] 0) (𝓝 0) := by
    have hid :
        Tendsto (fun w : ℂ ↦ w)
          (𝓝[≠] 0) (𝓝 0) :=
      continuousAt_id.tendsto.mono_left
        nhdsWithin_le_nhds
    simpa only [zero_pow (Nat.sub_ne_zero_of_lt hkn)] using
      hid.pow (n - k)
  have h := hp.mul (J_cleared_tendsto k)
  simp only [zero_mul] at h
  convert h using 1
  funext w
  rw [← mul_assoc, ← pow_add]
  congr 2
  omega

/-- For a finite degree-eight polynomial, only its top coefficient survives
after clearing order nine. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/71c5ec966e8cb9cd190ececc85908eee60bfbc5677ee9dd4b174664ebd6cc19aPoleCertificate/Varianta4c289bde0a1012a1c1503c111dace4593cd8e4c7fad764c1ff32c14ffbc57e7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/71c5ec966e8cb9cd190ececc85908eee60bfbc5677ee9dd4b174664ebd6cc19aPoleCertificate/Varianta4c289bde0a1012a1c1503c111dace4593cd8e4c7fad764c1ff32c14ffbc57e7.lean#L51).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `de06cc4b6a444d170fe5a20fa003acb92df90238` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
