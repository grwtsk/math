# evalENNRealToEReal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1e75850e262b62ef3878311671940d18be8f46d672344dcac6b3fab6600cb52b",
  "kind": "def",
  "lexical_name": "evalENNRealToEReal",
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
  "slug": "evalennrealtoereal--494a19d4c15f86019fe6b29a",
  "source": {
    "blob": "96aed10aeef5b9dfda24e88e524026019f8c7b42",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 854,
    "line": 838,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variantd0b9ac98dfb7cadf2bac0fd38ba2e193c2a3f7fce095e7c3601e1b0e681b2440.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:494a19d4c15f86019fe6b29a4dcfa583f7188a51ef0a81fd909caad28bf57c8b",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variantd0b9ac98dfb7cadf2bac0fd38ba2e193c2a3f7fce095e7c3601e1b0e681b2440.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1e75850e262b62ef3878311671940d18be8f46d672344dcac6b3fab6600cb52b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 838–854.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def evalENNRealToEReal : PositivityExt where eval {u α} _zα _pα e := do
  match u, α, e with
  | 0, ~q(EReal), ~q(ENNReal.toEReal $a) =>
    let ra ← core q(inferInstance) q(inferInstance) a
    assertInstancesCommute
    match ra with
    | .positive pa => pure (.positive q(EReal.coe_ennreal_pos.2 $pa))
    | .nonzero pa => pure (.positive q(EReal.coe_ennreal_pos_iff_ne_zero.2 $pa))
    | _ => pure (.nonnegative q(EReal.coe_ennreal_nonneg $a))
  | _, _, _ => throwError "not ENNReal.toEReal"

/-- Extension for the `positivity` tactic: projection from `EReal` to `ℝ`.

We prove that `EReal.toReal x` is nonnegative whenever `x` is nonnegative.
Since `EReal.toReal ⊤ = 0`, we cannot prove a stronger statement,
at least without relying on a tactic like `finiteness`. -/
@[positivity EReal.toReal _]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variantd0b9ac98dfb7cadf2bac0fd38ba2e193c2a3f7fce095e7c3601e1b0e681b2440.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variantd0b9ac98dfb7cadf2bac0fd38ba2e193c2a3f7fce095e7c3601e1b0e681b2440.lean#L838).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `96aed10aeef5b9dfda24e88e524026019f8c7b42` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
