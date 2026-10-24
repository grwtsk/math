# natDegree_X_pow_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6fb28f68-a865-6779-b584-718a4878dd69",
  "kind": "lemma",
  "lexical_name": "natDegree_X_pow_mul",
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
  "slug": "natdegree-x-pow-mul--ebf833483d08a447caf75407",
  "source": {
    "blob": "0f9454995c7dd335d080f531a44379cfce352228",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 520,
    "line": 517,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Operations/Variant9cc745a35396ba268b1ea5f51fd4cf21d1aba318527632cd9724b22035351be9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ebf833483d08a447caf75407c9383c3a70fe56929a7163c876f4e330a665f3dd",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Operations/Variant9cc745a35396ba268b1ea5f51fd4cf21d1aba318527632cd9724b22035351be9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6fb28f68-a865-6779-b584-718a4878dd69`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 517–520.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] lemma natDegree_X_pow_mul (hp : p ≠ 0) : natDegree (X ^ n * p) = natDegree p + n := by
  rw [commute_X_pow, natDegree_mul_X_pow n hp]

--  This lemma explicitly does not require the `Nontrivial R` assumption.
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Operations/Variant9cc745a35396ba268b1ea5f51fd4cf21d1aba318527632cd9724b22035351be9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Operations/Variant9cc745a35396ba268b1ea5f51fd4cf21d1aba318527632cd9724b22035351be9.lean#L517).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0f9454995c7dd335d080f531a44379cfce352228` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
