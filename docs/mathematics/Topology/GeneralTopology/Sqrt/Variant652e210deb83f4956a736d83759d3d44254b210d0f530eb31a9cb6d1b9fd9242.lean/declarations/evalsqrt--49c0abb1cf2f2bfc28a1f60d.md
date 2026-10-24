# evalSqrt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:779fcdd75dae0adb8fe5f70122909e503839a3176a22944b18eeb371274319bf",
  "kind": "def",
  "lexical_name": "evalSqrt",
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
  "slug": "evalsqrt--49c0abb1cf2f2bfc28a1f60d",
  "source": {
    "blob": "5b2f0b61610e600eb2809bf5b8b126374ed20be1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 401,
    "line": 387,
    "path": "GRWTSK/Topology/GeneralTopology/Sqrt/Variant652e210deb83f4956a736d83759d3d44254b210d0f530eb31a9cb6d1b9fd9242.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:49c0abb1cf2f2bfc28a1f60dac14b0c0b7831b11c181a609b6ac794fae1750f7",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Sqrt/Variant652e210deb83f4956a736d83759d3d44254b210d0f530eb31a9cb6d1b9fd9242.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:779fcdd75dae0adb8fe5f70122909e503839a3176a22944b18eeb371274319bf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 387–401.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def evalSqrt : PositivityExt where eval {_ _} _zα _pα e := do
  let (.app _ (a : Q(Real))) ← whnfR e | throwError "not Real.sqrt"
  let zα' ← synthInstanceQ (q(Zero Real) : Q(Type))
  let pα' ← synthInstanceQ (q(PartialOrder Real) : Q(Type))
  let ra ← core zα' pα' a
  assertInstancesCommute
  match ra with
  | .positive pa => pure (.positive (q(Real.sqrt_pos_of_pos $pa) : Expr))
  | _ => pure (.nonnegative (q(Real.sqrt_nonneg $a) : Expr))

end Mathlib.Meta.Positivity

namespace Real

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Sqrt/Variant652e210deb83f4956a736d83759d3d44254b210d0f530eb31a9cb6d1b9fd9242.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Sqrt/Variant652e210deb83f4956a736d83759d3d44254b210d0f530eb31a9cb6d1b9fd9242.lean#L387).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5b2f0b61610e600eb2809bf5b8b126374ed20be1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
