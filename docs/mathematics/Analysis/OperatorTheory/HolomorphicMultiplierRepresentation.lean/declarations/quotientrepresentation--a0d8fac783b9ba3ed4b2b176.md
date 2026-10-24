# quotientRepresentation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:053faf08de93d6e16c07e3473b1858891693941e90f9230dd1c1662e9600334b",
  "kind": "def",
  "lexical_name": "quotientRepresentation",
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
  "slug": "quotientrepresentation--a0d8fac783b9ba3ed4b2b176",
  "source": {
    "blob": "f4b6ffe568daa82ba3e0257c8f81e7881ca8f802",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 151,
    "line": 110,
    "path": "GRWTSK/Analysis/Operator/HolomorphicMultiplierRepresentation.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a0d8fac783b9ba3ed4b2b176550d958fcb7a6761f824c0a8d4bee19fbd514ce2",
  "verification": {
    "reference": "docs/verification/Analysis/OperatorTheory/HolomorphicMultiplierRepresentation.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:053faf08de93d6e16c07e3473b1858891693941e90f9230dd1c1662e9600334b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 110–151.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def quotientRepresentation (M : MetricWeights C) (μ : Measure D.X.carrier)
    (hOpen : D.IsOpenCover) :
    BoundedSymbol D.X →+* (SectionQuotient M μ hOpen →L[ℂ] SectionQuotient M μ hOpen) where
  toFun f := quotientOperator f.toMultiplier M μ hOpen
  map_zero' := by
    ext q
    refine Quotient.inductionOn q ?_
    intro s
    apply (classOf_eq_iff M μ hOpen _ _).mpr
    filter_upwards [] with x
    change (0 : ℂ) * s.1.value x = 0
    exact zero_mul _
  map_one' := by
    ext q
    refine Quotient.inductionOn q ?_
    intro s
    apply (classOf_eq_iff M μ hOpen _ _).mpr
    filter_upwards [] with x
    change (1 : ℂ) * s.1.value x = s.1.value x
    exact one_mul _
  map_add' := by
    intro f g
    ext q
    refine Quotient.inductionOn q ?_
    intro s
    apply (classOf_eq_iff M μ hOpen _ _).mpr
    filter_upwards [] with x
    change (f.value x + g.value x) * s.1.value x =
      f.value x * s.1.value x + g.value x * s.1.value x
    exact add_mul _ _ _
  map_mul' := by
    intro f g
    ext q
    refine Quotient.inductionOn q ?_
    intro s
    apply (classOf_eq_iff M μ hOpen _ _).mpr
    filter_upwards [] with x
    change (f.value x * g.value x) * s.1.value x =
      f.value x * (g.value x * s.1.value x)
    exact mul_assoc _ _ _

/-- Different bounds on the same function cannot produce different represented operators. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/OperatorTheory/HolomorphicMultiplierRepresentation.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Operator/HolomorphicMultiplierRepresentation.lean#L110).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f4b6ffe568daa82ba3e0257c8f81e7881ca8f802` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
