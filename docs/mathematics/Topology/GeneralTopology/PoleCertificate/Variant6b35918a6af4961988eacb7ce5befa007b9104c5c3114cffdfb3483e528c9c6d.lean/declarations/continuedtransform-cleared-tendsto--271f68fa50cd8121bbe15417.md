# continuedTransform_cleared_tendsto

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "22f6ee82aa1100af52a16283318b3d6a9f4ea382",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 948,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6b/6b35918a6af4961988eacb7ce5befa007b9104c5c3114cffdfb3483e528c9c6d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:113cd0cd-b751-f040-59b5-c6e021f5eb31",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e08c811c-0c79-ab59-93c2-cc23678292d2",
  "kind": "theorem",
  "lexical_name": "continuedTransform_cleared_tendsto",
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
  "slug": "continuedtransform-cleared-tendsto--271f68fa50cd8121bbe15417",
  "source": {
    "blob": "22f6ee82aa1100af52a16283318b3d6a9f4ea382",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 984,
    "line": 948,
    "path": "GRWTSK/Topology/GeneralTopology/PoleCertificate/Variant6b35918a6af4961988eacb7ce5befa007b9104c5c3114cffdfb3483e528c9c6d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:271f68fa50cd8121bbe1541786d074b4a14ddc8345a927daaefb39f09e162a1b",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/PoleCertificate/Variant6b35918a6af4961988eacb7ce5befa007b9104c5c3114cffdfb3483e528c9c6d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e08c811c-0c79-ab59-93c2-cc23678292d2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 948–984.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem continuedTransform_cleared_tendsto
    (p : ZeroPoint)
    (hp : 0 < (p.val - 1 / 2).re) :
    Tendsto
      (fun w : ℂ ↦
        w ^ 9 *
          continuedTransform
            (2 * (p.val - 1 / 2) + w))
      (𝓝[≠] 0)
      (𝓝 (pointPairPrincipalCoefficient p)) := by
  have hg :
      ContinuousAt
        (fun w : ℂ ↦
          remainder p
            (2 * (p.val - 1 / 2) + w))
        0 := by
    have h :
        ContinuousAt (remainder p)
          (2 * (p.val - 1 / 2) + (0 : ℂ)) := by
      simpa only [add_zero] using
        (remainder_analytic_at p hp).continuousAt
    exact h.comp (by fun_prop)
  have hlim :=
    ninth_order_limit_add_continuous
      (p := (0 : ℂ))
      (by
        simpa only [sub_zero] using
          point_pair_cleared_tendsto p)
      hg
  apply hlim.congr'
  filter_upwards
    [continuedTransform_eventually_split p hp]
    with w hw
  simpa only [sub_zero] using
    congrArg (fun x : ℂ ↦ w ^ 9 * x) hw.symm

/-- Cleared local product with the correct limiting value assigned at zero. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/PoleCertificate/Variant6b35918a6af4961988eacb7ce5befa007b9104c5c3114cffdfb3483e528c9c6d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/PoleCertificate/Variant6b35918a6af4961988eacb7ce5befa007b9104c5c3114cffdfb3483e528c9c6d.lean#L948).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `22f6ee82aa1100af52a16283318b3d6a9f4ea382` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
