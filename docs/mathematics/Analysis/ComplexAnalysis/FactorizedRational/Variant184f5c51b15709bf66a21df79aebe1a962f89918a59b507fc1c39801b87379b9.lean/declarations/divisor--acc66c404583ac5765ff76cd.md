# divisor

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5ba19bdc72427599d24cb7af06dc3bd014ff4aa8",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 175,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/18/184f5c51b15709bf66a21df79aebe1a962f89918a59b507fc1c39801b87379b9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b4f41308-916a-9a39-face-6840a3305a12",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3dfe85e5-dead-10c4-1640-2a57ea74e0bd",
  "kind": "theorem",
  "lexical_name": "divisor",
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
  "slug": "divisor--acc66c404583ac5765ff76cd",
  "source": {
    "blob": "5ba19bdc72427599d24cb7af06dc3bd014ff4aa8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 202,
    "line": 175,
    "path": "GRWTSK/Analysis/ComplexAnalysis/FactorizedRational/Variant184f5c51b15709bf66a21df79aebe1a962f89918a59b507fc1c39801b87379b9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:acc66c404583ac5765ff76cdfca669e9ac9963bdf2ac012a3861fb4f39e10d43",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/FactorizedRational/Variant184f5c51b15709bf66a21df79aebe1a962f89918a59b507fc1c39801b87379b9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3dfe85e5-dead-10c4-1640-2a57ea74e0bd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 175–202.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem divisor {U : Set 𝕜} {D : locallyFinsuppWithin U ℤ} (hD : D.support.Finite) :
    MeromorphicOn.divisor (∏ᶠ u, (· - u) ^ D u) U = D := by
  ext z
  by_cases hz : z ∈ U
  <;> simp [(meromorphicNFOn D U).meromorphicOn, hz, meromorphicOrderAt_eq D hD]

end Function.FactorizedRational

open Function.FactorizedRational

/-!
## Elimination of Zeros and Poles

This section shows that every meromorphic function with finitely many zeros and poles is equivalent,
modulo equality on codiscrete sets, to the product of a factorized rational function and an analytic
function without zeros.

We provide analogous results for functions of the form `log ‖meromorphic‖`.

TODO: Identify some of the terms that appear in the decomposition.
-/

/--
If `f` is meromorphic on an open set `U`, if `f` is nowhere locally constant zero, and if the
support of the divisor of `f` is finite, then there exists an analytic function `g` on `U` without
zeros such that `f` is equivalent, modulo equality on codiscrete sets, to the product of `g` and the
factorized rational function associated with the divisor of `f`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/FactorizedRational/Variant184f5c51b15709bf66a21df79aebe1a962f89918a59b507fc1c39801b87379b9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/FactorizedRational/Variant184f5c51b15709bf66a21df79aebe1a962f89918a59b507fc1c39801b87379b9.lean#L175).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5ba19bdc72427599d24cb7af06dc3bd014ff4aa8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
