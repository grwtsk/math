# tendsto_bdd_div_atTop_nhds_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1ce9fd73-6205-ba3e-785d-5728b4e51bd6",
  "kind": "theorem",
  "lexical_name": "tendsto_bdd_div_atTop_nhds_zero",
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
  "slug": "tendsto-bdd-div-attop-nhds-zero--3ca00143b584ac9a49cd578d",
  "source": {
    "blob": "ec1f164a4c97f723ff80718721ca32ebd1c8dc21",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 277,
    "line": 272,
    "path": "GRWTSK/Topology/GeneralTopology/Field/Variant54d42088e1199d161404aa91f9687200c69804a567438038507e147532909305.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3ca00143b584ac9a49cd578d2a7af33009ed9b3116ac66258cc9fd5a082e717d",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Field/Variant54d42088e1199d161404aa91f9687200c69804a567438038507e147532909305.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1ce9fd73-6205-ba3e-785d-5728b4e51bd6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 272–277.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendsto_bdd_div_atTop_nhds_zero {f g : α → 𝕜} {b B : 𝕜}
    (hb : ∀ᶠ x in l, b ≤ f x) (hB : ∀ᶠ x in l, f x ≤ B) (hg : Tendsto g l atTop) :
    Tendsto (fun x => f x / g x) l (𝓝 0) := by
  simp only [div_eq_mul_inv]
  exact bdd_le_mul_tendsto_zero hb hB hg.inv_tendsto_atTop

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Field/Variant54d42088e1199d161404aa91f9687200c69804a567438038507e147532909305.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Field/Variant54d42088e1199d161404aa91f9687200c69804a567438038507e147532909305.lean#L272).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ec1f164a4c97f723ff80718721ca32ebd1c8dc21` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
