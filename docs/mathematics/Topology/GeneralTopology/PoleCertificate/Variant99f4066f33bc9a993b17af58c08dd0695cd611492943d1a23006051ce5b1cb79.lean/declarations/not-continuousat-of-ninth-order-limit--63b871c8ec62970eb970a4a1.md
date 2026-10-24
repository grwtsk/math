# not_continuousAt_of_ninth_order_limit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:75da9abd-47dd-7e47-3858-201e73decdec",
  "kind": "theorem",
  "lexical_name": "not_continuousAt_of_ninth_order_limit",
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
  "slug": "not-continuousat-of-ninth-order-limit--63b871c8ec62970eb970a4a1",
  "source": {
    "blob": "7ab27680bded49f54d9fba2b94939d442257a19e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 320,
    "line": 294,
    "path": "GRWTSK/Topology/GeneralTopology/PoleCertificate/Variant99f4066f33bc9a993b17af58c08dd0695cd611492943d1a23006051ce5b1cb79.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:63b871c8ec62970eb970a4a111c1b03147a20167b6bc847f0e954d029910e77f",
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

Occurrence: `result:75da9abd-47dd-7e47-3858-201e73decdec`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 294–320.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem not_continuousAt_of_ninth_order_limit
    {f : ℂ → ℂ} {p c : ℂ}
    (hf :
      Tendsto (fun s ↦ (s - p) ^ 9 * f s)
        (𝓝[≠] p) (𝓝 c))
    (hc : c ≠ 0) :
    ¬ ContinuousAt f p := by
  intro hcont
  have hp :
      Tendsto (fun s : ℂ ↦ (s - p) ^ 9)
        (𝓝[≠] p) (𝓝 0) := by
    have ht :=
      ((tendsto_id :
        Tendsto (id : ℂ → ℂ) (𝓝 p) (𝓝 p)).sub_const p).pow 9
    simpa using
      ht.mono_left (nhdsWithin_le_nhds (s := {p}ᶜ))
  have hzero :
      Tendsto (fun s ↦ (s - p) ^ 9 * f s)
        (𝓝[≠] p) (𝓝 0) := by
    simpa using
      hp.mul (hcont.tendsto.mono_left nhdsWithin_le_nhds)
  exact hc (tendsto_nhds_unique hf hzero)

/-! ## Local isolation -/

/-- Local finiteness excludes all scaled candidates other than a fixed center
in some neighborhood. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/PoleCertificate/Variant99f4066f33bc9a993b17af58c08dd0695cd611492943d1a23006051ce5b1cb79.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/PoleCertificate/Variant99f4066f33bc9a993b17af58c08dd0695cd611492943d1a23006051ce5b1cb79.lean#L294).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7ab27680bded49f54d9fba2b94939d442257a19e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
