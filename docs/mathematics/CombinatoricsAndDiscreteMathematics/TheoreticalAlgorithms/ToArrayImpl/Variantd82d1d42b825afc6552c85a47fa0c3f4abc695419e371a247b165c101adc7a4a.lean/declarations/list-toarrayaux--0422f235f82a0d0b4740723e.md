# List.toArrayAux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3d85d9f2e6332dd6b79ade31d3edb690af6f9f7b2a5b35f070a3ff3debda3d7b",
  "kind": "def",
  "lexical_name": "List.toArrayAux",
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
  "slug": "list-toarrayaux--0422f235f82a0d0b4740723e",
  "source": {
    "blob": "dc1af2e53c1761dcf2bf09dad692a79e98607229",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 43,
    "line": 30,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToArrayImpl/Variantd82d1d42b825afc6552c85a47fa0c3f4abc695419e371a247b165c101adc7a4a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0422f235f82a0d0b4740723e35a3b5d66a500c626752e27e1da25d8f4fc1b78d",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToArrayImpl/Variantd82d1d42b825afc6552c85a47fa0c3f4abc695419e371a247b165c101adc7a4a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3d85d9f2e6332dd6b79ade31d3edb690af6f9f7b2a5b35f070a3ff3debda3d7b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 30–43.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def List.toArrayAux : List α → Array α → Array α
  | nil,       xs => xs
  | cons a as, xs => toArrayAux as (xs.push a)

/--
Converts a `List α` into an `Array α` by repeatedly pushing elements from the list onto an empty
array. `O(|xs|)`.

Use `List.toArray` instead of calling this function directly. At runtime, this operation implements
both `List.toArray` and `Array.mk`.
-/
-- This function is exported to C, where it is called by `Array.mk`
-- (the constructor) to implement this functionality.
@[inline, expose, match_pattern, pp_nodot, export lean_list_to_array]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToArrayImpl/Variantd82d1d42b825afc6552c85a47fa0c3f4abc695419e371a247b165c101adc7a4a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToArrayImpl/Variantd82d1d42b825afc6552c85a47fa0c3f4abc695419e371a247b165c101adc7a4a.lean#L30).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dc1af2e53c1761dcf2bf09dad692a79e98607229` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
