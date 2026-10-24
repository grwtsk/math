# evalENNRealRpow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:04909290ec7f430c8f9edb8e266440871cd85991603bb41c759cc549d272fdf8",
  "kind": "def",
  "lexical_name": "evalENNRealRpow",
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
  "slug": "evalennrealrpow--4370bc3a3948f0091c9ddef3",
  "source": {
    "blob": "d6250a8a4d2ad21514990494d6dc41a60d2707ad",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1197,
    "line": 1166,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/NNReal/Variantb6f708f02f2a9c5964a642eab10864a1aecca6f6cb96f67ccf74988b879f5a3b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4370bc3a3948f0091c9ddef3f1e278bdc5d108077bf73b77f26b331af6e50b46",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/NNReal/Variantb6f708f02f2a9c5964a642eab10864a1aecca6f6cb96f67ccf74988b879f5a3b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:04909290ec7f430c8f9edb8e266440871cd85991603bb41c759cc549d272fdf8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1166–1197.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
meta def evalENNRealRpow : PositivityExt where eval {u α} _ pα? e :=
  match pα? with | none => pure .none | some _ => do
  match u, α, e with
  | 0, ~q(ℝ≥0∞), ~q($a ^ (0 : ℝ)) =>
    assertInstancesCommute
    pure (.positive q(ENNReal.rpow_zero_pos $a))
  | 0, ~q(ℝ≥0∞), ~q($a ^ ($b : ℝ)) =>
    assertInstancesCommute
    let ra ← core q(inferInstance) (some q(inferInstance)) a
    let rb ← catchNone <| core q(inferInstance) (some q(inferInstance)) b
    match ra, rb with
    | .positive pa, .positive pb =>
      pure (.positive q(ENNReal.rpow_pos_of_nonneg $pa <| le_of_lt $pb))
    | .positive pa, .nonnegative pb =>
      pure (.positive q(ENNReal.rpow_pos_of_nonneg $pa $pb))
    | .positive pa, _ =>
      let some ha ← isFiniteM? a | pure <| .nonnegative q(zero_le (a := $e))
      pure <| .positive q(ENNReal.rpow_pos $pa $ha)
    | _, _ =>
      pure <| .nonnegative q(zero_le (a := $e))
  | _, _, _ => throwError "not ENNReal.rpow"

end Mathlib.Meta.Positivity

/-!
## NormNum extension for NNReal powers
-/

namespace Mathlib.Meta.NormNum

open Lean.Meta Qq

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/NNReal/Variantb6f708f02f2a9c5964a642eab10864a1aecca6f6cb96f67ccf74988b879f5a3b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/NNReal/Variantb6f708f02f2a9c5964a642eab10864a1aecca6f6cb96f67ccf74988b879f5a3b.lean#L1166).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d6250a8a4d2ad21514990494d6dc41a60d2707ad` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
