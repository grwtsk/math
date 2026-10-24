# Module.IsTorsionFree.of_smul_eq_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "15d082b9e385d917b477f436945ecaa370cb8c74",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 175,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e4/e4694ba089682e02e340570e45ff995c7ed8a8e8d7b479932d60d1ec33566725.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:70e5ce15-54ba-bd2e-9384-9a4b250a93c8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:46ac17aa-fbc1-090e-37b3-fafeb8225908",
  "kind": "lemma",
  "lexical_name": "Module.IsTorsionFree.of_smul_eq_zero",
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
  "slug": "module-istorsionfree-of-smul-eq-zero--fba8e1cba38a8f88c6b66225",
  "source": {
    "blob": "15d082b9e385d917b477f436945ecaa370cb8c74",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 180,
    "line": 175,
    "path": "GRWTSK/Algebra/LinearAlgebra/Free/Variante4694ba089682e02e340570e45ff995c7ed8a8e8d7b479932d60d1ec33566725.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fba8e1cba38a8f88c6b66225ec3c3d7f19a6278d9ad13f20355be0ad87799715",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Free/Variante4694ba089682e02e340570e45ff995c7ed8a8e8d7b479932d60d1ec33566725.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:46ac17aa-fbc1-090e-37b3-fafeb8225908`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 175–180.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Module.IsTorsionFree.of_smul_eq_zero [Nontrivial R]
    (h : ∀ (r : R) (m : M), r • m = 0 → r = 0 ∨ m = 0) :
    IsTorsionFree R M where
  isSMulRegular r hr m₁ m₂ hm := by
    simpa [sub_eq_zero, hr.ne_zero] using h r (m₁ - m₂) (by simpa [smul_sub, sub_eq_zero] using hm)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Free/Variante4694ba089682e02e340570e45ff995c7ed8a8e8d7b479932d60d1ec33566725.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Free/Variante4694ba089682e02e340570e45ff995c7ed8a8e8d7b479932d60d1ec33566725.lean#L175).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `15d082b9e385d917b477f436945ecaa370cb8c74` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
