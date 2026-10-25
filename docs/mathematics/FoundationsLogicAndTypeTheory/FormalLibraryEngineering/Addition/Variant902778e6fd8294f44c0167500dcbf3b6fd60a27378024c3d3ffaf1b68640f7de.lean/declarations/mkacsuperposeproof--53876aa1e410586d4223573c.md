# mkACSuperposeProof

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1887d184602e41e871be85abc8f1aa771347babd4ec26b5dcc0966ee1d2ecf46",
  "kind": "def",
  "lexical_name": "mkACSuperposeProof",
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
  "slug": "mkacsuperposeproof--53876aa1e410586d4223573c",
  "source": {
    "blob": "cab91cdf92ef91ceb61392d33d99236b369fae4e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 403,
    "line": 378,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Addition/Variant902778e6fd8294f44c0167500dcbf3b6fd60a27378024c3d3ffaf1b68640f7de.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:53876aa1e410586d4223573c04d65a136879eed4710a8692e23647067116a1c2",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Addition/Variant902778e6fd8294f44c0167500dcbf3b6fd60a27378024c3d3ffaf1b68640f7de.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1887d184602e41e871be85abc8f1aa771347babd4ec26b5dcc0966ee1d2ecf46`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 378–403.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mkACSuperposeProof (ra sb a b r s ts tr : ACApps) (tsEqa trEqb : DelayedExpr) :
    MetaM DelayedExpr := do
  let .apps _ _ := tr | failure
  let .apps op _ := ts | failure
  let some tse := ts.toExpr | failure
  let some re := r.toExpr | failure
  let some tre := tr.toExpr | failure
  let some se := s.toExpr | failure
  let some ae := a.toExpr | failure
  let some be := b.toExpr | failure
  let some rae := ra.toExpr | failure
  let some sbe := sb.toExpr | failure
  let tsrEqar := DelayedExpr.congrFun (.congrArg op tsEqa) r -- `(t * s) * r = a * r`
  let trsEqbs := DelayedExpr.congrFun (.congrArg op trEqb) s -- `(t * r) * s = b * s`
  let tsr := mkApp2 op tse re -- `(t * s) * r`
  let trs := mkApp2 op tre se -- `(t * r) * s`
  let ar := mkApp2 op ae re -- `a * r`
  let bs := mkApp2 op be se -- `b * r`
  let tsrEqtrs ← mkACProof tsr trs -- `(t * s) * r = (t * r) * s`
  let raEqar ← mkACProof rae ar -- `r * a = a * r`
  let bsEqsb ← mkACProof bs sbe -- `b * s = s * b`
  return .eqTrans raEqar (.eqTrans (.eqSymm tsrEqar) (.eqTrans tsrEqtrs (.eqTrans trsEqbs bsEqsb)))

/-- Given `tsEqa : ts = a`, for each equality `trEqb : tr = b` in `acR` where
the intersection `t` of `ts` and `tr` is nonempty, let `ts = t*s` and `tr := t*r`, add a new
equality `r*a = s*b`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Addition/Variant902778e6fd8294f44c0167500dcbf3b6fd60a27378024c3d3ffaf1b68640f7de.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Addition/Variant902778e6fd8294f44c0167500dcbf3b6fd60a27378024c3d3ffaf1b68640f7de.lean#L378).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cab91cdf92ef91ceb61392d33d99236b369fae4e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
