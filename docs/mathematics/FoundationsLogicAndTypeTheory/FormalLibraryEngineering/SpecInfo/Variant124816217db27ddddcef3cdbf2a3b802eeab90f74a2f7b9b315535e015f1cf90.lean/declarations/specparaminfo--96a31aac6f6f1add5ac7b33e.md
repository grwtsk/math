# SpecParamInfo

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:74d0cf19c03fc20b707d94c8267078ab3b92b0c8f91724ad330b34aedbfbfcf3",
  "kind": "inductive",
  "lexical_name": "SpecParamInfo",
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
  "slug": "specparaminfo--96a31aac6f6f1add5ac7b33e",
  "source": {
    "blob": "2995a8dc9e7f778efa46ff91b436581595930951",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 60,
    "line": 27,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SpecInfo/Variant124816217db27ddddcef3cdbf2a3b802eeab90f74a2f7b9b315535e015f1cf90.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:96a31aac6f6f1add5ac7b33e74ea54c3b68cac191ad09e9cb128cd49d0c9a035",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SpecInfo/Variant124816217db27ddddcef3cdbf2a3b802eeab90f74a2f7b9b315535e015f1cf90.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `inductive` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:74d0cf19c03fc20b707d94c8267078ab3b92b0c8f91724ad330b34aedbfbfcf3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 27–60.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
inductive SpecParamInfo where
  /--
  A parameter that is an type class instance (or an arrow that produces a type class instance),
  and is fixed in recursive declarations. By default, Lean always specializes this kind of argument.
  If the `weak` parameter is set we only specialize for this parameter iff another parameter causes
  specialization as well.
  -/
  | fixedInst (weak : Bool)
  /--
  A parameter that is a function and is fixed in recursive declarations. If the user tags a declaration
  with `@[specialize]` without specifying which arguments should be specialized, Lean will specialize
  `.fixedHO` arguments in addition to `.fixedInst`.
  -/
  | fixedHO
  /--
  Computationally irrelevant parameters that are fixed in recursive declarations,
  *and* there is a `fixedInst`, `fixedHO`, or `user` param that depends on it.
  -/
  | fixedNeutral
  /--
  An argument that has been specified in the `@[specialize]` attribute. Lean specializes it even if it is
  not fixed in recursive declarations. Non-termination can happen, and Lean interrupts it with an error message
  based on the stack depth.
  -/
  | user
  /--
  Parameter is not going to be specialized.
  -/
  | other
  deriving Inhabited, Repr

namespace SpecParamInfo

@[inline]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SpecInfo/Variant124816217db27ddddcef3cdbf2a3b802eeab90f74a2f7b9b315535e015f1cf90.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SpecInfo/Variant124816217db27ddddcef3cdbf2a3b802eeab90f74a2f7b9b315535e015f1cf90.lean#L27).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2995a8dc9e7f778efa46ff91b436581595930951` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
