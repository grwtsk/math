# rankXYZRemainders

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d2434d3c78bd92ec511f73adf0f189f90d80224a6ac966ac434da33e7400231a",
  "kind": "def",
  "lexical_name": "rankXYZRemainders",
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
  "slug": "rankxyzremainders--dee803a40b17c892809dc9b1",
  "source": {
    "blob": "d172d4334d01d82eedf57db46cf3ff6749b51783",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 363,
    "line": 356,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Fixed/Variantacf8fe41341773bdae3988c6b7fe86243549d39df305c2efdc682ac7337a6e9e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:dee803a40b17c892809dc9b1bbbf0d8e077132528dedc8cae3fc45be60a41ec5",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/Fixed/Variantacf8fe41341773bdae3988c6b7fe86243549d39df305c2efdc682ac7337a6e9e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d2434d3c78bd92ec511f73adf0f189f90d80224a6ac966ac434da33e7400231a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 356–363.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[expose] def rankXYZRemainders (x y z : Int) :
    AxisRemainder × AxisRemainder × AxisRemainder :=
  let first := orderRemainderPair ⟨.x, x⟩ ⟨.y, y⟩
  let second := orderRemainderPair first.2 ⟨.z, z⟩
  let third := orderRemainderPair first.1 second.1
  (third.1, third.2, second.2)

@[surface_novel]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/Fixed/Variantacf8fe41341773bdae3988c6b7fe86243549d39df305c2efdc682ac7337a6e9e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Fixed/Variantacf8fe41341773bdae3988c6b7fe86243549d39df305c2efdc682ac7337a6e9e.lean#L356).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d172d4334d01d82eedf57db46cf3ff6749b51783` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
