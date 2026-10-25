# evalERealAdd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:71c5b047ef7532f7cc7711b7176a3bbd44adcbf4608380fe2bffdc155431045d",
  "kind": "def",
  "lexical_name": "evalERealAdd",
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
  "slug": "evalerealadd--73b88232d10d7894e01a1b9a",
  "source": {
    "blob": "8c211d379089b952142b6adb0cc50c3ef119435b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 874,
    "line": 856,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Operations/Variantbe0057cc160acbbdfa0bd6d75eaae950eb00edbfd747b23983d6578d740f6fde.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:73b88232d10d7894e01a1b9a230360c4be90a97344f51183b123e10b3d91fe8d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Operations/Variantbe0057cc160acbbdfa0bd6d75eaae950eb00edbfd747b23983d6578d740f6fde.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:71c5b047ef7532f7cc7711b7176a3bbd44adcbf4608380fe2bffdc155431045d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 856–874.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def evalERealAdd : PositivityExt where eval {u α} zα pα e := do
  match u, α, e with
  | 0, ~q(EReal), ~q($a + $b) =>
    assertInstancesCommute
    match ← core zα pα a with
    | .positive pa =>
      match (← core zα pα b).toNonneg with
      | some pb => pure (.positive q(EReal.add_pos_of_pos_of_nonneg $pa $pb))
      | _ => pure .none
    | .nonnegative pa =>
      match ← core zα pα b with
      | .positive pb => pure (.positive q(EReal.add_pos_of_nonneg_of_pos $pa $pb))
      | .nonnegative pb => pure (.nonnegative q(add_nonneg $pa $pb))
      | _ => pure .none
    | _ => pure .none
  | _, _, _ => throwError "not a sum of 2 `EReal`s"

/-- Extension for the `positivity` tactic: product of two `EReal`s. -/
@[positivity (_ * _ : EReal)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Operations/Variantbe0057cc160acbbdfa0bd6d75eaae950eb00edbfd747b23983d6578d740f6fde.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Operations/Variantbe0057cc160acbbdfa0bd6d75eaae950eb00edbfd747b23983d6578d740f6fde.lean#L856).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8c211d379089b952142b6adb0cc50c3ef119435b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
