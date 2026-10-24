# evalIntervalLength

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b41992b2d340d5fe423479ef120287ff7e88bd36f18325eb8c5d575ab96b3e29",
  "kind": "def",
  "lexical_name": "evalIntervalLength",
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
  "slug": "evalintervallength--eca0a975844f51265bae280a",
  "source": {
    "blob": "57096ba027d71c9811f559da0873b91f1ec72028",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 686,
    "line": 679,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Basic/Variantc55fe79f3493b06dd176f420c852d1756993db4a927fe8c715f3c85442dc1be7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:eca0a975844f51265bae280aad5f0f36aee3dacc84672710448c2ca3672ab9ee",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Basic/Variantc55fe79f3493b06dd176f420c852d1756993db4a927fe8c715f3c85442dc1be7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b41992b2d340d5fe423479ef120287ff7e88bd36f18325eb8c5d575ab96b3e29`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 679–686.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def evalIntervalLength : PositivityExt where
  eval {u α} _ _ e := do
    let ~q(@Interval.length _ $ig $ipo $a) := e | throwError "not Interval.length"
    let _i ← synthInstanceQ q(IsOrderedAddMonoid $α)
    assumeInstancesCommute
    return .nonnegative q(Interval.length_nonneg $a)

end Mathlib.Meta.Positivity
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Basic/Variantc55fe79f3493b06dd176f420c852d1756993db4a927fe8c715f3c85442dc1be7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Basic/Variantc55fe79f3493b06dd176f420c852d1756993db4a927fe8c715f3c85442dc1be7.lean#L679).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `57096ba027d71c9811f559da0873b91f1ec72028` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
