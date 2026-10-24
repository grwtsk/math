# absoluteValueObstruction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:29e171cecc1592a8988e402de5a68f3270196dc0e59ac8cc3f16ffd56d442a7c",
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
  "slug": "absolutevalueobstruction--8fce236412d55c70c2d13f14",
  "source": {
    "blob": "942c1c7bfa38e2e7b820629e356a870e97fc9821",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 27,
    "line": 21,
    "path": "GRWTSK/Algebra/UniversalAlgebra/SignedInformation/Variant5e8df15de68a8ab00d0ab9440297b2131c68eeb65b210d27f6293144ddca1565.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8fce236412d55c70c2d13f14bcb6437273b0db3eb92f47e4a9bcee161cd87c16",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/SignedInformation/Variant5e8df15de68a8ab00d0ab9440297b2131c68eeb65b210d27f6293144ddca1565.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:29e171cecc1592a8988e402de5a68f3270196dc0e59ac8cc3f16ffd56d442a7c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 21–27.

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

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/SignedInformation/Variant5e8df15de68a8ab00d0ab9440297b2131c68eeb65b210d27f6293144ddca1565.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/SignedInformation/Variant5e8df15de68a8ab00d0ab9440297b2131c68eeb65b210d27f6293144ddca1565.lean#L21).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `942c1c7bfa38e2e7b820629e356a870e97fc9821` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
