# ContMDiffAt.finsum_section_of_locallyFinite

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6df1cc12-d156-87da-b132-1a133abd5cd9",
  "kind": "lemma",
  "lexical_name": "ContMDiffAt.finsum_section_of_locallyFinite",
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
  "slug": "contmdiffat-finsum-section-of-locallyfinite--c0e406d8b964070b1378b1ae",
  "source": {
    "blob": "28bdae28cd89a51fdc7fade174fa6434a3ab85de",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 282,
    "line": 276,
    "path": "GRWTSK/Geometry/DifferentialGeometry/ContMDiffSection/Variant13136b51d97cc8d8aea8d5e7efeb6b9adac1b554ebed3ac1850d5f6d5c24ebcf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c0e406d8b964070b1378b1ae8fed5735e164404dcf9680db55f89e5052393aac",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/ContMDiffSection/Variant13136b51d97cc8d8aea8d5e7efeb6b9adac1b554ebed3ac1850d5f6d5c24ebcf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6df1cc12-d156-87da-b132-1a133abd5cd9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 276–282.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma ContMDiffAt.finsum_section_of_locallyFinite
    (ht : LocallyFinite fun i ↦ {x : M | t i x ≠ 0})
    (ht' : ∀ i, CMDiffAt n (T% (t i ·)) x₀) :
    CMDiffAt n (T% (fun x ↦ ∑ᶠ i, t i x)) x₀ := by
  simp_rw [← contMDiffWithinAt_univ] at ht' ⊢
  exact .finsum_section_of_locallyFinite ht ht'

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/ContMDiffSection/Variant13136b51d97cc8d8aea8d5e7efeb6b9adac1b554ebed3ac1850d5f6d5c24ebcf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/ContMDiffSection/Variant13136b51d97cc8d8aea8d5e7efeb6b9adac1b554ebed3ac1850d5f6d5c24ebcf.lean#L276).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `28bdae28cd89a51fdc7fade174fa6434a3ab85de` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
