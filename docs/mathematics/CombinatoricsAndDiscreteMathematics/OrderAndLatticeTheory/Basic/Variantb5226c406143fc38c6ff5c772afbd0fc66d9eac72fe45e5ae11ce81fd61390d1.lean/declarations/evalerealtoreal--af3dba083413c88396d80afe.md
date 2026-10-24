# evalERealToReal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f192ca6a2fceb9b8003ae416b62a4a80c70320a4f9f6c369a21303d8b82a991a",
  "kind": "def",
  "lexical_name": "evalERealToReal",
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
  "slug": "evalerealtoreal--af3dba083413c88396d80afe",
  "source": {
    "blob": "c2b0545413c99838354373ef42214af0e1e4f3d6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 902,
    "line": 886,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variantb5226c406143fc38c6ff5c772afbd0fc66d9eac72fe45e5ae11ce81fd61390d1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:af3dba083413c88396d80afead18704d987696d4bd2e9bdae1e1f1791f0f4c30",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variantb5226c406143fc38c6ff5c772afbd0fc66d9eac72fe45e5ae11ce81fd61390d1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f192ca6a2fceb9b8003ae416b62a4a80c70320a4f9f6c369a21303d8b82a991a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 886–902.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
meta def evalERealToReal : PositivityExt where eval {u α} _zα pα? e :=
  match pα? with | none => pure .none | some _ => do
  match u, α, e with
  | 0, ~q(Real), ~q(EReal.toReal $a) =>
    assertInstancesCommute
    match (← core q(inferInstance) (some q(inferInstance)) a).toNonneg with
    | .some pa => pure (.nonnegative q(EReal.toReal_nonneg $pa))
    | _ => pure .none
  | _, _, _ => throwError "not EReal.toReal"

/-- Extension for the `positivity` tactic: projection from `EReal` to `ℝ≥0∞`.

We show that `EReal.toENNReal x` is positive whenever `x` is positive,
and it is nonnegative otherwise.
We cannot deduce any corollaries from `x ≠ 0`, since `EReal.toENNReal x = 0` for `x < 0`.
-/
@[positivity EReal.toENNReal _]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variantb5226c406143fc38c6ff5c772afbd0fc66d9eac72fe45e5ae11ce81fd61390d1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variantb5226c406143fc38c6ff5c772afbd0fc66d9eac72fe45e5ae11ce81fd61390d1.lean#L886).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c2b0545413c99838354373ef42214af0e1e4f3d6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
