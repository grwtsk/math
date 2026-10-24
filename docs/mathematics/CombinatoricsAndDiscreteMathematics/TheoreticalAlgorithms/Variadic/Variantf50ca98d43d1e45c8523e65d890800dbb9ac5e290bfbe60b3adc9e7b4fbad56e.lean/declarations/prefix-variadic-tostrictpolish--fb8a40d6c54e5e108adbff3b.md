# Prefix.Variadic.toStrictPolish

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1b53475f00f0c9e74cb68cca196deb3b48052b4d55f2cfdf33a26de1ac1494e2",
  "kind": "def",
  "lexical_name": "Prefix.Variadic.toStrictPolish",
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
  "slug": "prefix-variadic-tostrictpolish--fb8a40d6c54e5e108adbff3b",
  "source": {
    "blob": "0601bd39815753a601ca31dd941531638a4a255c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 73,
    "line": 60,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Variadic/Variantf50ca98d43d1e45c8523e65d890800dbb9ac5e290bfbe60b3adc9e7b4fbad56e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fb8a40d6c54e5e108adbff3b9ddc8ec4787179bb3fb5e0a069d0784f850bda9d",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Variadic/Variantf50ca98d43d1e45c8523e65d890800dbb9ac5e290bfbe60b3adc9e7b4fbad56e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1b53475f00f0c9e74cb68cca196deb3b48052b4d55f2cfdf33a26de1ac1494e2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 60–73.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Prefix.Variadic.toStrictPolish
    (p : Prefix.Variadic α) :
    List (Prefix.StrictToken α) :=
  Tree.toStrictPolish (Prefix.Variadic.toTree p)

mutual

/--
Flatten associative conjunction and disjunction nodes into variadic
variadic nodes.

This preserves order but removes unnecessary binary nesting for AND/OR.
Non-commutative and non-associative operators are not flattened.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Variadic/Variantf50ca98d43d1e45c8523e65d890800dbb9ac5e290bfbe60b3adc9e7b4fbad56e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Variadic/Variantf50ca98d43d1e45c8523e65d890800dbb9ac5e290bfbe60b3adc9e7b4fbad56e.lean#L60).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0601bd39815753a601ca31dd941531638a4a255c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
