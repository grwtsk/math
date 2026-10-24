# Interval.add

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:38262dfe8d0d287140171b0e579fb71945e1d19cbb80d9066037a028dc6e1df1",
  "kind": "def",
  "lexical_name": "Interval.add",
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
  "slug": "interval-add--3ca48196d4433ea52f6b1772",
  "source": {
    "blob": "961af7a237750814b14911de5dbdff39e9b8f07c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 227,
    "line": 219,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Interval/Variantf226e98148c0d39bafe7bcd4e0ae3a013681ebbfd62ab91fcf9fc3b41c19c521.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3ca48196d4433ea52f6b1772f115beebb3ac3df4a80efae99c243ee2e128ff72",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Interval/Variantf226e98148c0d39bafe7bcd4e0ae3a013681ebbfd62ab91fcf9fc3b41c19c521.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:38262dfe8d0d287140171b0e579fb71945e1d19cbb80d9066037a028dc6e1df1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 219–227.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Interval.add [Add α] (I J : Interval α) : Interval α where
  lb := match I.lb, J.lb with
    | some a, some b => some (a + b)
    | _, _ => ⊥
  ub := match I.ub, J.ub with
    | some a, some b => some (a + b)
    | _, _ => ⊤

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Interval/Variantf226e98148c0d39bafe7bcd4e0ae3a013681ebbfd62ab91fcf9fc3b41c19c521.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Interval/Variantf226e98148c0d39bafe7bcd4e0ae3a013681ebbfd62ab91fcf9fc3b41c19c521.lean#L219).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `961af7a237750814b14911de5dbdff39e9b8f07c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
