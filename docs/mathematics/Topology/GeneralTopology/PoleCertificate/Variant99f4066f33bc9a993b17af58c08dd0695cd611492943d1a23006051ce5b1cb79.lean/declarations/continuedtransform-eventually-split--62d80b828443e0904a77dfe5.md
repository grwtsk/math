# continuedTransform_eventually_split

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:48f31a87-8a08-5f41-2099-01b098eff7b9",
  "kind": "theorem",
  "lexical_name": "continuedTransform_eventually_split",
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
  "slug": "continuedtransform-eventually-split--62d80b828443e0904a77dfe5",
  "source": {
    "blob": "7ab27680bded49f54d9fba2b94939d442257a19e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 958,
    "line": 930,
    "path": "GRWTSK/Topology/GeneralTopology/PoleCertificate/Variant99f4066f33bc9a993b17af58c08dd0695cd611492943d1a23006051ce5b1cb79.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:62d80b828443e0904a77dfe57387b4134463a5f626e3e6515f60cca907dcf03a",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/PoleCertificate/Variant99f4066f33bc9a993b17af58c08dd0695cd611492943d1a23006051ce5b1cb79.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:48f31a87-8a08-5f41-2099-01b098eff7b9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 930–958.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem continuedTransform_eventually_split
    (p : ZeroPoint)
    (hp : 0 < (p.val - 1 / 2).re) :
    ∀ᶠ w in 𝓝[≠] (0 : ℂ),
      continuedTransform
          (2 * (p.val - 1 / 2) + w) =
        pointPairKernel p w +
          remainder p
            (2 * (p.val - 1 / 2) + w) := by
  have hp0 :
      p.val - 1 / 2 ≠ 0 := by
    intro h
    rw [h] at hp
    norm_num at hp
  have hc :
      0 < (2 * (p.val - 1 / 2)).re := by
    simpa using
      mul_pos (by norm_num : (0 : ℝ) < 2) hp
  filter_upwards
    [eventually_center_add_mem_domain
      (2 * (p.val - 1 / 2)) hc]
    with w hw
  exact
    tsum_eq_pointPairKernel_add_remainder
      p hp0 w
      (continuedTransform_summable _ hw)

/-- The analytic noncolliding remainder cannot cancel the exact finite
reflected-pair coefficient. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/PoleCertificate/Variant99f4066f33bc9a993b17af58c08dd0695cd611492943d1a23006051ce5b1cb79.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/PoleCertificate/Variant99f4066f33bc9a993b17af58c08dd0695cd611492943d1a23006051ce5b1cb79.lean#L930).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7ab27680bded49f54d9fba2b94939d442257a19e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
