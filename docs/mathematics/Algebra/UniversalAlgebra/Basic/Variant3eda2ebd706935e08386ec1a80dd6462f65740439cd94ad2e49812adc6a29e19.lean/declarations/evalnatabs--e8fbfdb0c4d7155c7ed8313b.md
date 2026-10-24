# evalNatAbs

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9b26ef5ba18bb02eecfeb3c25f6f92ebf6e7142deb38bbc34f0d8cadcc0a78c0",
  "kind": "def",
  "lexical_name": "evalNatAbs",
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
  "slug": "evalnatabs--e8fbfdb0c4d7155c7ed8313b",
  "source": {
    "blob": "1fb2c9bb68bc26a05ab688ea9872511e9d3e8e08",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 384,
    "line": 363,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Basic/Variant3eda2ebd706935e08386ec1a80dd6462f65740439cd94ad2e49812adc6a29e19.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e8fbfdb0c4d7155c7ed8313b417d6886743a3612068d5fae6602a711252bff75",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Basic/Variant3eda2ebd706935e08386ec1a80dd6462f65740439cd94ad2e49812adc6a29e19.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9b26ef5ba18bb02eecfeb3c25f6f92ebf6e7142deb38bbc34f0d8cadcc0a78c0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 363–384.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def evalNatAbs : PositivityExt where eval {u α} _zα _pα e := do
  match u, α, e with
  | 0, ~q(ℕ), ~q(Int.natAbs $a) =>
    let zα' : Q(Zero Int) := q(inferInstance)
    let pα' : Q(PartialOrder Int) := q(inferInstance)
    let ra ← core zα' pα' a
    match ra with
    | .positive pa =>
      assertInstancesCommute
      pure (.positive q(int_natAbs_pos $pa))
    | .nonzero pa =>
      assertInstancesCommute
      pure (.positive q(Int.natAbs_pos.mpr $pa))
    | .nonnegative _pa =>
      pure .none
    | .none =>
      pure .none
  | _, _, _ => throwError "not Int.natAbs"

/-- Extension for the `positivity` tactic: `Nat.cast` is always non-negative,
and positive when its input is. -/
@[positivity Nat.cast _]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Basic/Variant3eda2ebd706935e08386ec1a80dd6462f65740439cd94ad2e49812adc6a29e19.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Basic/Variant3eda2ebd706935e08386ec1a80dd6462f65740439cd94ad2e49812adc6a29e19.lean#L363).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1fb2c9bb68bc26a05ab688ea9872511e9d3e8e08` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
