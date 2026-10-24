# TransitionDefect

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:31a1b437475e092c4adfa2d0d455b193c96437109a03c6752be1506dd7fc5dc8",
  "kind": "structure",
  "lexical_name": "TransitionDefect",
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
  "slug": "transitiondefect--4e8c889b2247d5cc27720346",
  "source": {
    "blob": "f9c3a7d07fbf52a4bf5bbaedd9424c74d2e3377b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 184,
    "line": 148,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripOverlapAudit.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4e8c889b2247d5cc27720346875f66b191390d6f67458db7ae8fcbeb13a9b6e2",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CriticalStripOverlapAudit.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:31a1b437475e092c4adfa2d0d455b193c96437109a03c6752be1506dd7fc5dc8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 148–184.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure TransitionDefect
    {A X H : Type*} [Ring A] [AddCommGroup H] [Module ℂ H]
    {root : NoncommutativeHeightRoot A X H}
    (left right : CriticalStripChart root) where
  defectId : String
  overlap : left.Overlaps right
  coordinateMap : A → A
  statementTransport : StatementTransport left.localStatement right.localStatement
  leftBinding : SourceBinding
  rightBinding : SourceBinding
  left_binding_matches : leftBinding.Matches left
  right_binding_matches : rightBinding.Matches right
  orientation : TransitionDefectOrientation
  mismatchReadout : A → A → ℝ
  defectAt : X → ℝ
  defect_eq :
    ∀ x, left.carrier x → right.carrier x →
      defectAt x =
        mismatchReadout (coordinateMap (left.coordinate x)) (right.coordinate x)
  boundAt : X → ℝ
  bound_nonnegative : ∀ x, 0 ≤ boundAt x
  defect_bound :
    ∀ x, left.carrier x → right.carrier x →
      |defectAt x| ≤ boundAt x
  vanishingObligation : Prop
  defect_zero_of_vanishing :
    vanishingObligation →
      ∀ x, left.carrier x → right.carrier x → defectAt x = 0
  coordinate_exact_of_vanishing :
    vanishingObligation →
      ∀ x, left.carrier x → right.carrier x →
        coordinateMap (left.coordinate x) = right.coordinate x

namespace TransitionDefect

/-- A vanishing defect with exact source identity becomes an exact directional
coordinate transition. Logical equivalence remains an independent question. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CriticalStripOverlapAudit.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripOverlapAudit.lean#L148).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f9c3a7d07fbf52a4bf5bbaedd9424c74d2e3377b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
