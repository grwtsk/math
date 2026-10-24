# zetaPoleFactor_limit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:15ff31a8-f0c6-64d0-cfdb-2c5dfda0f5af",
  "kind": "theorem",
  "lexical_name": "zetaPoleFactor_limit",
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
  "slug": "zetapolefactor-limit--2e7c6ee60d3857cf5316643c",
  "source": {
    "blob": "6826f7f782ecaac32a2d0115b03eb28d122b620c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 50,
    "line": 36,
    "path": "GRWTSK/Analysis/ComplexAnalysis/MobiusReciprocalPoleBeforeInventory/Variante7f2679ef3a440f1ec3c09ca8103f8ccc0eccbe3020456f87077d9fcf3961bef.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2e7c6ee60d3857cf5316643cea14a76831e2dd438a61041fe09960d69d82855e",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/MobiusReciprocalPoleBeforeInventory/Variante7f2679ef3a440f1ec3c09ca8103f8ccc0eccbe3020456f87077d9fcf3961bef.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:15ff31a8-f0c6-64d0-cfdb-2c5dfda0f5af`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 36–50.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem zetaPoleFactor_limit :
    Tendsto zetaPoleFactor (𝓝[≠] 0) (𝓝 1) := by
  have ht : Tendsto (fun s : ℂ => 1 + s) (𝓝[≠] 0) (𝓝[≠] 1) := by
    apply tendsto_nhdsWithin_iff.mpr
    constructor
    · simpa using! (((continuous_const : Continuous (fun _ : ℂ => (1 : ℂ))).add
        continuous_id).tendsto 0).mono_left nhdsWithin_le_nhds
    · filter_upwards [self_mem_nhdsWithin] with s hs
      simpa using hs
  have h := riemannZeta_residue_one.comp ht
  apply h.congr'
  filter_upwards [self_mem_nhdsWithin] with s hs
  simp only [Function.comp_apply, add_sub_cancel_left]
  exact (zetaPoleFactor_off s hs).symm

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/MobiusReciprocalPoleBeforeInventory/Variante7f2679ef3a440f1ec3c09ca8103f8ccc0eccbe3020456f87077d9fcf3961bef.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/MobiusReciprocalPoleBeforeInventory/Variante7f2679ef3a440f1ec3c09ca8103f8ccc0eccbe3020456f87077d9fcf3961bef.lean#L36).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6826f7f782ecaac32a2d0115b03eb28d122b620c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
