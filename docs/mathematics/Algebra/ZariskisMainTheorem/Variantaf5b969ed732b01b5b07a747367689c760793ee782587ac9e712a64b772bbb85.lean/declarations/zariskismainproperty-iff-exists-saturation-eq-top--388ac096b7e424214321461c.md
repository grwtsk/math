# zariskisMainProperty_iff_exists_saturation_eq_top

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "98122731c6ffb3714ba0aa2e741c563b58befd87",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 96,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/af/af5b969ed732b01b5b07a747367689c760793ee782587ac9e712a64b772bbb85.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8cb369e1-704d-751b-cdb5-5f392905414f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:dd39ffd8-530a-e108-eb4e-445f8ffb1341",
  "kind": "lemma",
  "lexical_name": "zariskisMainProperty_iff_exists_saturation_eq_top",
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
  "slug": "zariskismainproperty-iff-exists-saturation-eq-top--388ac096b7e424214321461c",
  "source": {
    "blob": "98122731c6ffb3714ba0aa2e741c563b58befd87",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 101,
    "line": 96,
    "path": "GRWTSK/Algebra/ZariskisMainTheorem/Variantaf5b969ed732b01b5b07a747367689c760793ee782587ac9e712a64b772bbb85.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:388ac096b7e424214321461cb3e83723316b18a7ffc99c78126dd16584b1e06e",
  "verification": {
    "reference": "docs/verification/Algebra/ZariskisMainTheorem/Variantaf5b969ed732b01b5b07a747367689c760793ee782587ac9e712a64b772bbb85.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dd39ffd8-530a-e108-eb4e-445f8ffb1341`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 96–101.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma zariskisMainProperty_iff_exists_saturation_eq_top {p : Ideal S} :
    ZariskisMainProperty R p ↔ ∃ r ∉ p, ∃ h : IsIntegral R r,
      (integralClosure R S).saturation (.powers r) (by simpa [Submonoid.powers_le]) = ⊤ := by
  simp [zariskisMainProperty_iff, ← top_le_iff, SetLike.le_def,
    Submonoid.mem_powers_iff, mem_integralClosure_iff]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/ZariskisMainTheorem/Variantaf5b969ed732b01b5b07a747367689c760793ee782587ac9e712a64b772bbb85.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/ZariskisMainTheorem/Variantaf5b969ed732b01b5b07a747367689c760793ee782587ac9e712a64b772bbb85.lean#L96).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `98122731c6ffb3714ba0aa2e741c563b58befd87` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
