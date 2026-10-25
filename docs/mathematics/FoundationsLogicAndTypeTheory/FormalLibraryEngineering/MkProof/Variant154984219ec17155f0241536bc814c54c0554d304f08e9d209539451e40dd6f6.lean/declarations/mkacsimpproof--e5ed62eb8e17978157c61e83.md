# mkACSimpProof

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9c2685c88c259ff9f0df9aa64eb9fc13447c03e94de501f51ac75799814ca44c",
  "kind": "def",
  "lexical_name": "mkACSimpProof",
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
  "slug": "mkacsimpproof--e5ed62eb8e17978157c61e83",
  "source": {
    "blob": "dfc379783c76d7ad01c62f53e4cc6306991feafd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 584,
    "line": 563,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MkProof/Variant154984219ec17155f0241536bc814c54c0554d304f08e9d209539451e40dd6f6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e5ed62eb8e17978157c61e834ade832feb7c3e44924915425c0ae3a9f61fc5f2",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MkProof/Variant154984219ec17155f0241536bc814c54c0554d304f08e9d209539451e40dd6f6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9c2685c88c259ff9f0df9aa64eb9fc13447c03e94de501f51ac75799814ca44c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 563–584.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mkACSimpProof (tr t s r sr : ACApps) (tEqs : DelayedExpr) : MetaM DelayedExpr := do
  if tr == t then
    return tEqs
  else if tr == sr then
    let some tre := tr.toExpr | failure
    DelayedExpr.ofExpr <$> mkEqRefl tre
  else
    let .apps op _ := tr | failure
    let some re := r.toExpr | failure
    let some te := t.toExpr | failure
    let some se := s.toExpr | failure
    let some tre := tr.toExpr | failure
    let some sre := sr.toExpr | failure
    let opr := op.app re -- `(*) r`
    let rt := mkApp2 op re te -- `r * t`
    let rs := mkApp2 op re se -- `r * s`
    let rtEqrs := DelayedExpr.congrArg opr tEqs
    let trEqrt ← mkACProof tre rt
    let rsEqsr ← mkACProof rs sre
    return .eqTrans (.eqTrans trEqrt rtEqrs) rsEqsr

/-- Given `e := lhs * r` and `H : lhs = rhs`, return `rhs * r` and the proof of `e = rhs * r`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MkProof/Variant154984219ec17155f0241536bc814c54c0554d304f08e9d209539451e40dd6f6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MkProof/Variant154984219ec17155f0241536bc814c54c0554d304f08e9d209539451e40dd6f6.lean#L563).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dfc379783c76d7ad01c62f53e4cc6306991feafd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
