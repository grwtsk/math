# evalBoundingSieveWeights

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e0e92241432bb10960816a863d9f3b5f76db24cd7100742d7dad4fa4aab7dcba",
  "kind": "def",
  "lexical_name": "evalBoundingSieveWeights",
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
  "slug": "evalboundingsieveweights--7e5734869fb1c7f85559bd5f",
  "source": {
    "blob": "f0ffa4d2b7ed763496737bc3100d210365d038a3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 124,
    "line": 98,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergSieve/Variant06e6f48b85a8e30dbaf24c78329519d66334d62244d2b5c99c7a066dc5d6ae48.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7e5734869fb1c7f85559bd5f670e437ae91fc8636cf6bf3a5673c8cdf1ec780e",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergSieve/Variant06e6f48b85a8e30dbaf24c78329519d66334d62244d2b5c99c7a066dc5d6ae48.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e0e92241432bb10960816a863d9f3b5f76db24cd7100742d7dad4fa4aab7dcba`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 98–124.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def evalBoundingSieveWeights : PositivityExt where eval {u α} _zα _pα e := do
  match u, α, e with
  | 0, ~q(ℝ), ~q(@BoundingSieve.weights $i $n) =>
    assertInstancesCommute
    pure (.nonnegative q(BoundingSieve.weights_nonneg $n))
  | _, _, _ => throwError "not BoundingSieve.weights"

end Mathlib.Meta.Positivity

namespace SelbergSieve
open BoundingSieve

namespace Notation

@[inherit_doc nu]
scoped notation3 "ν" => nu
@[inherit_doc prodPrimes]
scoped notation3 "P" => prodPrimes
@[inherit_doc weights]
scoped notation3 "a" => weights
@[inherit_doc totalMass]
scoped notation3 "X" => totalMass
@[inherit_doc support]
scoped notation3 "A" => support
@[inherit_doc level]
scoped notation3 "y" => level

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergSieve/Variant06e6f48b85a8e30dbaf24c78329519d66334d62244d2b5c99c7a066dc5d6ae48.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergSieve/Variant06e6f48b85a8e30dbaf24c78329519d66334d62244d2b5c99c7a066dc5d6ae48.lean#L98).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f0ffa4d2b7ed763496737bc3100d210365d038a3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
