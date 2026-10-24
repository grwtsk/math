# eventuallyEq_of_left_inv_of_right_inv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:62466dcf-938a-2ebf-9dc2-b77ad1952b2f",
  "kind": "theorem",
  "lexical_name": "eventuallyEq_of_left_inv_of_right_inv",
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
  "slug": "eventuallyeq-of-left-inv-of-right-inv--23a469de8bba451bb44f5ca6",
  "source": {
    "blob": "02cbee76447f54a768e22d0f005d2d25a6e68715",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 94,
    "line": 90,
    "path": "GRWTSK/Topology/GeneralTopology/Tendsto/Variant064bdba4d4833cc732b496e6a139b7575433fb58422e10b15cb79863bed08558.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:23a469de8bba451bb44f5ca6330af984f4086fbf1e0057bd384077acd80108cc",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Tendsto/Variant064bdba4d4833cc732b496e6a139b7575433fb58422e10b15cb79863bed08558.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:62466dcf-938a-2ebf-9dc2-b77ad1952b2f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 90–94.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eventuallyEq_of_left_inv_of_right_inv {f : α → β} {g₁ g₂ : β → α} {fa : Filter α}
    {fb : Filter β} (hleft : ∀ᶠ x in fa, g₁ (f x) = x) (hright : ∀ᶠ y in fb, f (g₂ y) = y)
    (htendsto : Tendsto g₂ fb fa) : g₁ =ᶠ[fb] g₂ :=
  (htendsto.eventually hleft).mp <| hright.mono fun _ hr hl => (congr_arg g₁ hr.symm).trans hl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Tendsto/Variant064bdba4d4833cc732b496e6a139b7575433fb58422e10b15cb79863bed08558.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Tendsto/Variant064bdba4d4833cc732b496e6a139b7575433fb58422e10b15cb79863bed08558.lean#L90).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `02cbee76447f54a768e22d0f005d2d25a6e68715` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
