# divExact_eq_ediv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "855635fb1ddc652debd9b4f843ecd546ef94dee9",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 150,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3b/3b831c3aee5aea53a8c40eb6332e5bd8de74b3e552df183da1f70412da978e95.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:280c50b4-d07b-356b-c9fc-a78e1b2af32c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8359ed21-7e3a-b78f-2dce-33034ef38988",
  "kind": "theorem",
  "lexical_name": "divExact_eq_ediv",
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
  "slug": "divexact-eq-ediv--a7950362579b017a52f6cb30",
  "source": {
    "blob": "855635fb1ddc652debd9b4f843ecd546ef94dee9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 177,
    "line": 150,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant3b831c3aee5aea53a8c40eb6332e5bd8de74b3e552df183da1f70412da978e95.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a7950362579b017a52f6cb308640786df79ff11e3f474ec07261629b45988348",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant3b831c3aee5aea53a8c40eb6332e5bd8de74b3e552df183da1f70412da978e95.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8359ed21-7e3a-b78f-2dce-33034ef38988`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 150–177.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem divExact_eq_ediv {x y : Int} (h : y ∣ x) : x.divExact y h = x / y := rfl

/-! ### T-rounding division -/

/--
Integer division using the T-rounding convention.

In [the T-rounding convention][t-rounding] (division with truncation), all rounding is towards zero.
Division by 0 is defined to be 0. In this convention, `Int.tmod a b + b * (Int.tdiv a b) = a`.

[t-rounding]: https://dl.acm.org/doi/pdf/10.1145/128861.128862

This function is overridden by the compiler with an efficient implementation. This definition is the
logical model.

Examples:
* `(7 : Int).tdiv (0 : Int) = 0`
* `(0 : Int).tdiv (7 : Int) = 0`
* `(12 : Int).tdiv (6 : Int) = 2`
* `(12 : Int).tdiv (-6 : Int) = -2`
* `(-12 : Int).tdiv (6 : Int) = -2`
* `(-12 : Int).tdiv (-6 : Int) = 2`
* `(12 : Int).tdiv (7 : Int) = 1`
* `(12 : Int).tdiv (-7 : Int) = -1`
* `(-12 : Int).tdiv (7 : Int) = -1`
* `(-12 : Int).tdiv (-7 : Int) = 1`
-/
@[extern "lean_int_div", implicit_reducible]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant3b831c3aee5aea53a8c40eb6332e5bd8de74b3e552df183da1f70412da978e95.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant3b831c3aee5aea53a8c40eb6332e5bd8de74b3e552df183da1f70412da978e95.lean#L150).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `855635fb1ddc652debd9b4f843ecd546ef94dee9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
