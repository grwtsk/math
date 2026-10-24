# eq_bot_or_top_of_isSimpleGroup

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7ad9978c-19ac-6d61-e2a6-2f2c67a759b6",
  "kind": "lemma",
  "lexical_name": "eq_bot_or_top_of_isSimpleGroup",
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
  "slug": "eq-bot-or-top-of-issimplegroup--522d3cc37d2ab3b8e0e7cf00",
  "source": {
    "blob": "4c650d05b3d7110f32d6f89de99008bab81d9bef",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 132,
    "line": 128,
    "path": "GRWTSK/Algebra/GroupTheory/IsSubnormal/Varianta9513063015babca3d35a73fb6df920ee68aafce5074af82190232fe3a0d93de.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:522d3cc37d2ab3b8e0e7cf009bdece3dac838806eb42b40a5d4a8fa90b271c36",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/IsSubnormal/Varianta9513063015babca3d35a73fb6df920ee68aafce5074af82190232fe3a0d93de.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7ad9978c-19ac-6d61-e2a6-2f2c67a759b6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 128–132.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma eq_bot_or_top_of_isSimpleGroup (hG : IsSimpleGroup G) (hN : IsSubnormal H) :
    H = ⊥ ∨ H = ⊤ :=
  (hN.normal_of_isSimpleGroup hG).eq_bot_or_eq_top

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/IsSubnormal/Varianta9513063015babca3d35a73fb6df920ee68aafce5074af82190232fe3a0d93de.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/IsSubnormal/Varianta9513063015babca3d35a73fb6df920ee68aafce5074af82190232fe3a0d93de.lean#L128).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4c650d05b3d7110f32d6f89de99008bab81d9bef` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
