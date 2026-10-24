# IsOrderedSMul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e6dc2632a1bf64f1d95474fad89f8b4004462dfb608e575633b4a504cc993a1b",
  "kind": "class",
  "lexical_name": "IsOrderedSMul",
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
  "slug": "isorderedsmul--9f03544b6d085a44edbee518",
  "source": {
    "blob": "e2f3ef0b298f0659485941182433cb862f31df77",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 70,
    "line": 66,
    "path": "GRWTSK/Algebra/UniversalAlgebra/AddTorsor/Variantef3728151c4dafd58b0b8c8342d02f063581fd040b62e026df181abcf75cd942.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9f03544b6d085a44edbee5187f5338ae3908805dd285f96075dac63d3155b888",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/AddTorsor/Variantef3728151c4dafd58b0b8c8342d02f063581fd040b62e026df181abcf75cd942.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e6dc2632a1bf64f1d95474fad89f8b4004462dfb608e575633b4a504cc993a1b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 66–70.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class IsOrderedSMul (G P : Type*) [LE G] [LE P] [SMul G P] : Prop where
  protected smul_le_smul_left : ∀ a b : P, a ≤ b → ∀ c : G, c • a ≤ c • b
  protected smul_le_smul_right : ∀ c d : G, c ≤ d → ∀ a : P, c • a ≤ d • a

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/AddTorsor/Variantef3728151c4dafd58b0b8c8342d02f063581fd040b62e026df181abcf75cd942.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/AddTorsor/Variantef3728151c4dafd58b0b8c8342d02f063581fd040b62e026df181abcf75cd942.lean#L66).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e2f3ef0b298f0659485941182433cb862f31df77` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
