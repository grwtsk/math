# Anonymous syntax

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:38cde874729faba39cc1d6aefd92c8f1bef5eccae5e784816b6e4c0414fe2fbb",
  "kind": "syntax",
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
  "slug": "syntax--cb60d921e07dc67d2cf11f07",
  "source": {
    "blob": "d3b5e51e2006cfe171e719ceb15c28c0f74a300c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 246,
    "line": 207,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Attr/Variant086b64e1076431d2e02ff270d5ba8ebbe86d3fae6f28b5a18828b5d84b6dd53e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cb60d921e07dc67d2cf11f07af1a20466c7ef3077af9513ad28d91638602b6b7",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Attr/Variant086b64e1076431d2e02ff270d5ba8ebbe86d3fae6f28b5a18828b5d84b6dd53e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `syntax` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:38cde874729faba39cc1d6aefd92c8f1bef5eccae5e784816b6e4c0414fe2fbb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 207–246.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
syntax grindFunCC  := &"funCC"
/--
The `norm` modifier instructs `grind` to use a theorem as a normalization rule. That is,
the theorem is applied during the preprocessing step.
This feature is meant for advanced users who understand how the preprocessor and `grind`'s search
procedure interact with each other.
New users can still benefit from this feature by restricting its use to theorems that completely
eliminate a symbol from the goal. Example:
```
theorem max_def : max n m = if n ≤ m then m else n
```
For a negative example, consider:
```
opaque f : Int → Int → Int → Int
theorem fax1 : f x 0 1 = 1 := sorry
theorem fax2 : f 1 x 1 = 1 := sorry
attribute [grind norm] fax1
attribute [grind =] fax2

example (h : c = 1) : f c 0 c = 1 := by
  grind -- fails
```
In this example, `fax1` is a normalization rule, but it is not applicable to the input goal since
`f c 0 c` is not an instance of `f x 0 1`. However, `f c 0 c` matches the pattern `f 1 x 1` modulo
the equality `c = 1`. Thus, `grind` instantiates `fax2` with `x := 0`, producing the equality
`f 1 0 1 = 1`, which the normalizer simplifies to `True`. As a result, nothing useful is learned.
In the future, we plan to include linters to automatically detect issues like these.
Example:
```
opaque f : Nat → Nat
opaque g : Nat → Nat

@[grind norm] axiom fax : f x = x + 2
@[grind norm ←] axiom fg : f x = g x

example : f x ≥ 2 := by grind
example : f x ≥ g x := by grind
example : f x + g x ≥ 4 := by grind
```
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Attr/Variant086b64e1076431d2e02ff270d5ba8ebbe86d3fae6f28b5a18828b5d84b6dd53e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Attr/Variant086b64e1076431d2e02ff270d5ba8ebbe86d3fae6f28b5a18828b5d84b6dd53e.lean#L207).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d3b5e51e2006cfe171e719ceb15c28c0f74a300c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
