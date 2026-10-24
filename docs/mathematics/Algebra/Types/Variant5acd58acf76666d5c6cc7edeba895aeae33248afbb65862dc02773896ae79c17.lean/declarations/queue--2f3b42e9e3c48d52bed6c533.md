# Queue

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1e38f10e4a06dc17d97ec32835379d7b85a95e76bd2961962249eda6a25dc9c9",
  "kind": "abbrev",
  "lexical_name": "Queue",
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
  "slug": "queue--2f3b42e9e3c48d52bed6c533",
  "source": {
    "blob": "c4638d5afff95049dcda586f6761eb2f018a0c39",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 86,
    "line": 59,
    "path": "GRWTSK/Algebra/Types/Variant5acd58acf76666d5c6cc7edeba895aeae33248afbb65862dc02773896ae79c17.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2f3b42e9e3c48d52bed6c533302e3aa5eb5f96838587885ba5bdf2b63bee9806",
  "verification": {
    "reference": "docs/verification/Algebra/Types/Variant5acd58acf76666d5c6cc7edeba895aeae33248afbb65862dc02773896ae79c17.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1e38f10e4a06dc17d97ec32835379d7b85a95e76bd2961962249eda6a25dc9c9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 59–86.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
abbrev Queue : Type := Std.TreeSet EqCnstr EqCnstr.compare

/--
A polynomial equipped with a chain of rewrite steps that justifies its equality to the original input.
From an input polynomial `p`, we use equations (i.e., `EqCnstr`) as rewriting rules.
For example, consider the following sequence of rewrites for the input polynomial `x^2 + x*y`
using the equations `x - 1 = 0` (`c₁`) and `y - 2 = 0` (`c₂`).
```
2*x^2 + x*y                  | s₁ := .input (2*x^2 + x*y)
=           - 2*x*(x - 1)
(2*x + x*y)                  | s₂ := .step (2*x + x*y)  1 s₁ (-2) x c₁
=           - 2*1*(x - 1)
(x*y + 2)                    | s₃ := .step (x*y + 2) 1 s₂ (-2) 1 c₁
=           - 1*y*(x - 1)
(y + 2)                      | s₄ := .step (y+2) 1 s₃ (-1) y c₁
=           - 1*1*(y - 2)
4                            | s₅ := .step 4 1 s₄ 1 1 c₂
```
From the chain above, we build the certificate
```
(-2*x - y - 2)*(x-1) + (-1)*(y-2)
```
for
```
4 = (2*x^2 + x*y)
```
because `x-1 = 0` and `y-2=0`
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Types/Variant5acd58acf76666d5c6cc7edeba895aeae33248afbb65862dc02773896ae79c17.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Types/Variant5acd58acf76666d5c6cc7edeba895aeae33248afbb65862dc02773896ae79c17.lean#L59).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c4638d5afff95049dcda586f6761eb2f018a0c39` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
