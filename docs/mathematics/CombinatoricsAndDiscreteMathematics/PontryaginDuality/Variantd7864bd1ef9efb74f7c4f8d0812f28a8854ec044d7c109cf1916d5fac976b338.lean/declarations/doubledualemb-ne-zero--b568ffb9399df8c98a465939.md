# doubleDualEmb_ne_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e38ed4ad-7c11-8a80-9412-18293871cdcc",
  "kind": "lemma",
  "lexical_name": "doubleDualEmb_ne_zero",
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
  "slug": "doubledualemb-ne-zero--b568ffb9399df8c98a465939",
  "source": {
    "blob": "82d70ca6c37e679d92264aea8ad41c715e589e7c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 174,
    "line": 171,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/PontryaginDuality/Variantd7864bd1ef9efb74f7c4f8d0812f28a8854ec044d7c109cf1916d5fac976b338.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b568ffb9399df8c98a465939af608b55f06cf3c48ee33388118ea30f455e4455",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/PontryaginDuality/Variantd7864bd1ef9efb74f7c4f8d0812f28a8854ec044d7c109cf1916d5fac976b338.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e38ed4ad-7c11-8a80-9412-18293871cdcc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 171–174.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma doubleDualEmb_ne_zero : (doubleDualEmb a : AddChar (AddChar α ℂ) ℂ) ≠ 0 ↔ a ≠ 0 :=
  doubleDualEmb_eq_zero.not

/-- The double dual isomorphism of a finite abelian group. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/PontryaginDuality/Variantd7864bd1ef9efb74f7c4f8d0812f28a8854ec044d7c109cf1916d5fac976b338.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/PontryaginDuality/Variantd7864bd1ef9efb74f7c4f8d0812f28a8854ec044d7c109cf1916d5fac976b338.lean#L171).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `82d70ca6c37e679d92264aea8ad41c715e589e7c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
