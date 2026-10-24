# ContMDiffOn.smul_section_of_tsupport

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ba7e9bf8-4af1-9f7b-0ae1-5e2c06237eaf",
  "kind": "lemma",
  "lexical_name": "ContMDiffOn.smul_section_of_tsupport",
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
  "slug": "contmdiffon-smul-section-of-tsupport--77a52a1c985b079a3761e395",
  "source": {
    "blob": "28bdae28cd89a51fdc7fade174fa6434a3ab85de",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 207,
    "line": 196,
    "path": "GRWTSK/Geometry/DifferentialGeometry/ContMDiffSection/Variant13136b51d97cc8d8aea8d5e7efeb6b9adac1b554ebed3ac1850d5f6d5c24ebcf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:77a52a1c985b079a3761e395ad193c95777140454a06726cbe3e5493a6e225fa",
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

Occurrence: `result:ba7e9bf8-4af1-9f7b-0ae1-5e2c06237eaf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 196–207.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma ContMDiffOn.smul_section_of_tsupport {s : Π (x : M), V x} {ψ : M → 𝕜} (hψ : CMDiff[u] n ψ)
    (ht : IsOpen u) (ht' : tsupport ψ ⊆ u) (hs : CMDiff[u] n (T% s)) :
    CMDiff n (T% (ψ • s)) := by
  apply contMDiff_of_contMDiffOn_union_of_isOpen (hψ.smul_section hs) ?_ ?_ ht
      (isOpen_compl_iff.mpr <| isClosed_tsupport ψ)
  · apply ((contMDiff_zeroSection _ _).contMDiffOn (s := (tsupport ψ)ᶜ)).congr
    intro y hy
    simp [image_eq_zero_of_notMem_tsupport hy, zeroSection]
  · exact Set.compl_subset_iff_union.mp <| Set.compl_subset_compl.mpr ht'

/-- The sum of a locally finite collection of sections is `C^k` iff each section is.
Version at a point within a set. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/ContMDiffSection/Variant13136b51d97cc8d8aea8d5e7efeb6b9adac1b554ebed3ac1850d5f6d5c24ebcf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/ContMDiffSection/Variant13136b51d97cc8d8aea8d5e7efeb6b9adac1b554ebed3ac1850d5f6d5c24ebcf.lean#L196).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `28bdae28cd89a51fdc7fade174fa6434a3ab85de` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
