# LawfulOrderSup

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6198ab76aba34a2c4ef0274fda14075f5b7b86411b169ad77c9df870f5d79f89",
  "kind": "class",
  "lexical_name": "LawfulOrderSup",
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
  "slug": "lawfulordersup--1018e5b9f26a98b75b34e0c9",
  "source": {
    "blob": "2de289f53415ef8f8bd53fb80d9e52a3e02bd257",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 190,
    "line": 180,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Classes/Variant9f38359d750bdcaf7a1a9794ad208fce966684688ba59e6c3c25327cc37eb5bb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1018e5b9f26a98b75b34e0c9fa01b807a2872c84c2b3372ff17a74ad352d2c52",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Classes/Variant9f38359d750bdcaf7a1a9794ad208fce966684688ba59e6c3c25327cc37eb5bb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6198ab76aba34a2c4ef0274fda14075f5b7b86411b169ad77c9df870f5d79f89`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 180–190.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public class LawfulOrderSup (α : Type u) [Max α] [LE α] where
  max_le_iff : ∀ a b c : α, (max a b) ≤ c ↔ a ≤ c ∧ b ≤ c

/--
This typeclass bundles `MaxEqOr α` and `LawfulOrderSup α`. It characterizes when a `Max α`
instance reasonably computes maxima in some type `α` that has an `LE α` instance.

As long as `α` is a preorder (see `IsPreorder α`), this typeclass implies that the order on
`α` is total and that `Min.min a b` returns either `a` or `b`, whichever is greater or equal to
the other.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Classes/Variant9f38359d750bdcaf7a1a9794ad208fce966684688ba59e6c3c25327cc37eb5bb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Classes/Variant9f38359d750bdcaf7a1a9794ad208fce966684688ba59e6c3c25327cc37eb5bb.lean#L180).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2de289f53415ef8f8bd53fb80d9e52a3e02bd257` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
