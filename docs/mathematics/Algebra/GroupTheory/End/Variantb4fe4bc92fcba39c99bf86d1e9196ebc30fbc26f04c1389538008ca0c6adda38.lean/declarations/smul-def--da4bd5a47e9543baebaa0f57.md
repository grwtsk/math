# smul_def

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:098d5346-35b6-aaad-0803-1e8ad15958be",
  "kind": "lemma",
  "lexical_name": "smul_def",
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
  "slug": "smul-def--da4bd5a47e9543baebaa0f57",
  "source": {
    "blob": "8959c86d925d2f181cc93bbbf9559cd0b15d42ac",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 136,
    "line": 133,
    "path": "GRWTSK/Algebra/GroupTheory/End/Variantb4fe4bc92fcba39c99bf86d1e9196ebc30fbc26f04c1389538008ca0c6adda38.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:da4bd5a47e9543baebaa0f5792a0be07610f8753d67788338c58d98722469cce",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/End/Variantb4fe4bc92fcba39c99bf86d1e9196ebc30fbc26f04c1389538008ca0c6adda38.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:098d5346-35b6-aaad-0803-1e8ad15958be`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 133–136.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[to_additive (attr := simp)] protected lemma smul_def (f : MulAut M) (a : M) : f • a = f a := rfl

/-- `MulAut.applyDistribMulAction` is faithful. -/
@[to_additive /-- `AddAut.applyAddDistribAddAction` is faithful. -/]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/End/Variantb4fe4bc92fcba39c99bf86d1e9196ebc30fbc26f04c1389538008ca0c6adda38.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/End/Variantb4fe4bc92fcba39c99bf86d1e9196ebc30fbc26f04c1389538008ca0c6adda38.lean#L133).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8959c86d925d2f181cc93bbbf9559cd0b15d42ac` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
