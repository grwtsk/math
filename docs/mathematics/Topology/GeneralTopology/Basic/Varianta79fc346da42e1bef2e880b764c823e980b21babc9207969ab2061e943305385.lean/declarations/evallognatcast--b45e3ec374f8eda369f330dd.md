# evalLogNatCast

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d7a291a83c3a685ead7bc42e09665a8ba1da0a636e3bf561c51cd22d9fa93fcf",
  "kind": "def",
  "lexical_name": "evalLogNatCast",
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
  "slug": "evallognatcast--b45e3ec374f8eda369f330dd",
  "source": {
    "blob": "7842acb5fe55332a2b878514d3b012087e11ca01",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 545,
    "line": 539,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Varianta79fc346da42e1bef2e880b764c823e980b21babc9207969ab2061e943305385.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b45e3ec374f8eda369f330ddfc3a79c4d685d8bbb7d8fb8133c17d9c1312d7c9",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Varianta79fc346da42e1bef2e880b764c823e980b21babc9207969ab2061e943305385.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d7a291a83c3a685ead7bc42e09665a8ba1da0a636e3bf561c51cd22d9fa93fcf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 539–545.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def evalLogNatCast : PositivityExt where eval {_ _} _zα _pα e := do
  let .app (f : Q(ℝ → ℝ)) (.app _ (a : Q(ℕ))) ← withReducible (whnf e) | throwError "not Real.log"
  guard <|← withDefault <| withNewMCtxDepth <| isDefEq f q(Real.log)
  pure (.nonnegative (q(Real.log_nat_cast_nonneg $a) : Lean.Expr))

/-- Extension for the `positivity` tactic: `Real.log` of an integer is always nonnegative. -/
@[positivity Real.log (Int.cast _)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Varianta79fc346da42e1bef2e880b764c823e980b21babc9207969ab2061e943305385.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Varianta79fc346da42e1bef2e880b764c823e980b21babc9207969ab2061e943305385.lean#L539).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7842acb5fe55332a2b878514d3b012087e11ca01` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
