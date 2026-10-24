# evalIntervalLength

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0019c35afbf1008c2c63f9dff91488b234540f0dcda502fb59a59e85c9868902",
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
  "slug": "evalintervallength--3e24dce007d129d0897ee1d6",
  "source": {
    "blob": "45a6f65bf63f51f1b4dd889f5d95636ab8eaefb4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 768,
    "line": 755,
    "path": "GRWTSK/Algebra/GroupTheory/Interval/Variant02798f209f65af69c0ed7e8ba050b751c2877cb8c444a341869d09f3eb688a05.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3e24dce007d129d0897ee1d6485044d0daafe824d8fdb6319b95f938c24392b7",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Interval/Variant02798f209f65af69c0ed7e8ba050b751c2877cb8c444a341869d09f3eb688a05.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0019c35afbf1008c2c63f9dff91488b234540f0dcda502fb59a59e85c9868902`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 755–768.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def evalIntervalLength : PositivityExt where
  eval {u α} _ _ e := do
    let .app (f : Q(Interval $α → $α)) (a : Q(Interval $α)) ←
      withReducible (whnf e) | throwError "not NonemptyInterval.length"
    let _eq : $e =Q $f $a := ⟨⟩
    let _I ← synthInstanceQ (q(OrderedAddCommGroup $α) : Q(Type u))
    assumeInstancesCommute
    let ⟨_f_eq⟩ ←
      withDefault <| withNewMCtxDepth <| assertDefEqQ (u := u.succ) f q(Interval.length)
    return .nonnegative q(Interval.length_nonneg $a)

end Mathlib.Meta.Positivity

open Interval
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Interval/Variant02798f209f65af69c0ed7e8ba050b751c2877cb8c444a341869d09f3eb688a05.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Interval/Variant02798f209f65af69c0ed7e8ba050b751c2877cb8c444a341869d09f3eb688a05.lean#L755).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `45a6f65bf63f51f1b4dd889f5d95636ab8eaefb4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
