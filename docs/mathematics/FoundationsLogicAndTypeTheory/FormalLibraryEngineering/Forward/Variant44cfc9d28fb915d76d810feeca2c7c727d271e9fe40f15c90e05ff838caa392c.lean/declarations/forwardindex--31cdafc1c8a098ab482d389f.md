# ForwardIndex

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:751dbd31abd80c52a7a233daa0642eb95cdb727ae72212b40c56747539f6e6a8",
  "kind": "structure",
  "lexical_name": "ForwardIndex",
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
  "slug": "forwardindex--31cdafc1c8a098ab482d389f",
  "source": {
    "blob": "b2f1755857cfea314ae10bf064e48a3d348091a1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 33,
    "line": 20,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Forward/Variant44cfc9d28fb915d76d810feeca2c7c727d271e9fe40f15c90e05ff838caa392c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:31cdafc1c8a098ab482d389f6626d500e60a70a765e75a9bfbf4a6a6bc0c2bd5",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Forward/Variant44cfc9d28fb915d76d810feeca2c7c727d271e9fe40f15c90e05ff838caa392c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:751dbd31abd80c52a7a233daa0642eb95cdb727ae72212b40c56747539f6e6a8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 20–33.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure ForwardIndex where
  /-- Maps expressions `T` to all tuples `(r, i)` where `r : ForwardRule`,
  `i : PremiseIndex` and the `i`-th argument of the type of `r.expr` (counting
  from zero) likely unifies with `T`. -/
  tree : DiscrTree (ForwardRule × PremiseIndex)
  /-- Indexes the forward rules contained in `tree` by name. -/
  nameToRule : PHashMap RuleName ForwardRule
  /-- Constant forward rules, i.e. forward rules that have no premises and no
  rule pattern. -/
  constRules : PHashSet ForwardRule
  deriving Inhabited

namespace ForwardIndex

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Forward/Variant44cfc9d28fb915d76d810feeca2c7c727d271e9fe40f15c90e05ff838caa392c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Forward/Variant44cfc9d28fb915d76d810feeca2c7c727d271e9fe40f15c90e05ff838caa392c.lean#L20).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b2f1755857cfea314ae10bf064e48a3d348091a1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
