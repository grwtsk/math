# Anonymous elab

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:db096a6e84e7925cd801484dc30c2743021736f83a900f88cb824703ccadbb32",
  "kind": "elab",
  "lexical_name": null,
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
  "slug": "elab--457edf4ba36e2b3e9cc6499b",
  "source": {
    "blob": "7d822b5b3dc4cb31b1737dbe2bbd652541025731",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 329,
    "line": 305,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variantb604f096758bb8a32411a7009430d5bc508d655e787f9bdd6a67401f1fa35ba3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:457edf4ba36e2b3e9cc6499bb73d9ab7f8a41b7cbba53d5d56e8bd236aef2d55",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variantb604f096758bb8a32411a7009430d5bc508d655e787f9bdd6a67401f1fa35ba3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `elab` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:db096a6e84e7925cd801484dc30c2743021736f83a900f88cb824703ccadbb32`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 305–329.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
elab (name := normNum)
    "norm_num" cfg:optConfig only:&" only"? args:(simpArgs ?) loc:(location ?) : tactic =>
  elabNormNum cfg args loc (simpOnly := only.isSome) (useSimp := true)

/--
`norm_num1` normalizes numerical expressions in the goal. It is a basic version of `norm_num`
that does not call `simp`.

By default, it supports the operations `+` `-` `*` `/` `⁻¹` `^` and `%` over types with (at least)
an `AddMonoidWithOne` instance, such as `ℕ`, `ℤ`, `ℚ`, `ℝ`, `ℂ`. If the goal has the form `A = B`,
`A ≠ B`, `A < B` or `A ≤ B`, where `A` and `B` are numerical expressions, `norm_num1` will try to
close it. It also has a relatively simple primality prover.
:e
This tactic is extensible. Extensions can allow `norm_num1` to evaluate more kinds of expressions,
or to prove more kinds of propositions. See the `@[norm_num]` attribute for further information on
extending `norm_num1`.

* `norm_num1 at l` normalizes at location(s) `l`.

Examples:
```lean
example : 43 ≤ 74 + (33 : ℤ) := by norm_num1
example : ¬ (7-2)/(2*3) ≥ (1:ℝ) + 2/(3^2) := by norm_num1
```
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variantb604f096758bb8a32411a7009430d5bc508d655e787f9bdd6a67401f1fa35ba3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variantb604f096758bb8a32411a7009430d5bc508d655e787f9bdd6a67401f1fa35ba3.lean#L305).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7d822b5b3dc4cb31b1737dbe2bbd652541025731` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
