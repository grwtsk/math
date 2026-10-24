# IsLocalizedModule.eq_iff_exists

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "467646b2838e258a32c000b1011b7faccc28ea67",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 545,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/19/19e2e898548994031945aa0487a05615f8ad4c2a6fafdc9b6ee96852955a83d2.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:626f557b-48c2-0960-8984-40bad65d2c1a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9840513b-9255-6efb-c4bb-4fa36b6b6d2e",
  "kind": "lemma",
  "lexical_name": "IsLocalizedModule.eq_iff_exists",
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
  "slug": "islocalizedmodule-eq-iff-exists--4f0c09abb9defb94d13b42ec",
  "source": {
    "blob": "467646b2838e258a32c000b1011b7faccc28ea67",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 551,
    "line": 545,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant19e2e898548994031945aa0487a05615f8ad4c2a6fafdc9b6ee96852955a83d2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4f0c09abb9defb94d13b42ecc7385612b225bd9484d80244dc840559c63be836",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variant19e2e898548994031945aa0487a05615f8ad4c2a6fafdc9b6ee96852955a83d2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9840513b-9255-6efb-c4bb-4fa36b6b6d2e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 545–551.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IsLocalizedModule.eq_iff_exists [IsLocalizedModule S f] {x₁ x₂} :
    f x₁ = f x₂ ↔ ∃ c : S, c • x₁ = c • x₂ :=
  Iff.intro exists_of_eq fun ⟨c, h⟩ ↦ by
    apply_fun f at h
    simp_rw [f.map_smul_of_tower, Submonoid.smul_def, ← Module.algebraMap_end_apply R R] at h
    exact ((Module.End.isUnit_iff _).mp <| map_units f c).1 h

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variant19e2e898548994031945aa0487a05615f8ad4c2a6fafdc9b6ee96852955a83d2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variant19e2e898548994031945aa0487a05615f8ad4c2a6fafdc9b6ee96852955a83d2.lean#L545).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `467646b2838e258a32c000b1011b7faccc28ea67` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
