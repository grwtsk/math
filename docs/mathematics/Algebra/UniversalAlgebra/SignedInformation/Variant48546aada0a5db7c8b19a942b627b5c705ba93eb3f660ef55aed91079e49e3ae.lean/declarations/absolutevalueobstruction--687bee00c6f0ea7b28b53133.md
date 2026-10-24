# absoluteValueObstruction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3647d1a9e676e1fdef5e559d06db07c449004f5f8e4b3f2597d7fd73af798bb8",
  "kind": "def",
  "lexical_name": "absoluteValueObstruction",
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
  "slug": "absolutevalueobstruction--687bee00c6f0ea7b28b53133",
  "source": {
    "blob": "b9a08d59b2a56bfbc8fc7aa07087c74665c324ee",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 35,
    "line": 29,
    "path": "GRWTSK/Algebra/UniversalAlgebra/SignedInformation/Variant48546aada0a5db7c8b19a942b627b5c705ba93eb3f660ef55aed91079e49e3ae.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:687bee00c6f0ea7b28b531334f12e4d4bd3fa6122053481ee527e73dcb9189d7",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/SignedInformation/Variant48546aada0a5db7c8b19a942b627b5c705ba93eb3f660ef55aed91079e49e3ae.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3647d1a9e676e1fdef5e559d06db07c449004f5f8e4b3f2597d7fd73af798bb8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 29–35.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def absoluteValueObstruction : DescentObstruction (abs : ℝ → ℝ) (id : ℝ → ℝ) where
  left := 1
  right := -1
  sameCarrier := by norm_num
  targetSeparated := by norm_num

/-- The identity real-valued target cannot factor through absolute value. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/SignedInformation/Variant48546aada0a5db7c8b19a942b627b5c705ba93eb3f660ef55aed91079e49e3ae.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/SignedInformation/Variant48546aada0a5db7c8b19a942b627b5c705ba93eb3f660ef55aed91079e49e3ae.lean#L29).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b9a08d59b2a56bfbc8fc7aa07087c74665c324ee` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
