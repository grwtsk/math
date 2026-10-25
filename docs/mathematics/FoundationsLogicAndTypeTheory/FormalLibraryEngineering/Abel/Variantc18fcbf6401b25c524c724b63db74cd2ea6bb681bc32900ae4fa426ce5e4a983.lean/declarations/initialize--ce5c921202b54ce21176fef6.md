# Anonymous initialize

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:05f7a2a86bb3e10b5e5ef95e6394e679d753b267ced2daf8e81e7737b362bf84",
  "kind": "initialize",
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
  "slug": "initialize--ce5c921202b54ce21176fef6",
  "source": {
    "blob": "76f300877a4aaaf415ceb88dd0f914714800eeb8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 64,
    "line": 32,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Abel/Variantc18fcbf6401b25c524c724b63db74cd2ea6bb681bc32900ae4fa426ce5e4a983.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ce5c921202b54ce21176fef6a42e1c1505ed2a1aff1b758de6ad4558735911f7",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Abel/Variantc18fcbf6401b25c524c724b63db74cd2ea6bb681bc32900ae4fa426ce5e4a983.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `initialize` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:05f7a2a86bb3e10b5e5ef95e6394e679d753b267ced2daf8e81e7737b362bf84`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 32–64.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
initialize registerTraceClass `abel.detail

/--
Tactic for evaluating equations in the language of
*additive*, commutative monoids and groups.

`abel` and its variants work as both tactics and conv tactics.

* `abel1` fails if the target is not an equality that is provable by the axioms of
  commutative monoids/groups.
* `abel_nf` rewrites all group expressions into a normal form.
  * In tactic mode, `abel_nf at h` can be used to rewrite in a hypothesis.
  * `abel_nf (config := cfg)` allows for additional configuration:
    * `red`: the reducibility setting (overridden by `!`)
    * `zetaDelta`: if true, local let variables can be unfolded (overridden by `!`)
    * `recursive`: if true, `abel_nf` will also recurse into atoms
* `abel!`, `abel1!`, `abel_nf!` will use a more aggressive reducibility setting to identify atoms.

For example:

```
example [AddCommMonoid α] (a b : α) : a + (b + a) = a + a + b := by abel
example [AddCommGroup α] (a : α) : (3 : ℤ) • a = a + (2 : ℤ) • a := by abel
```

## Future work

* In mathlib 3, `abel` accepted additional optional arguments:
  ```
  syntax "abel" (&" raw" <|> &" term")? (location)? : tactic
  ```
  It is undecided whether these features should be restored eventually.
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Abel/Variantc18fcbf6401b25c524c724b63db74cd2ea6bb681bc32900ae4fa426ce5e4a983.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Abel/Variantc18fcbf6401b25c524c724b63db74cd2ea6bb681bc32900ae4fa426ce5e4a983.lean#L32).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `76f300877a4aaaf415ceb88dd0f914714800eeb8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
