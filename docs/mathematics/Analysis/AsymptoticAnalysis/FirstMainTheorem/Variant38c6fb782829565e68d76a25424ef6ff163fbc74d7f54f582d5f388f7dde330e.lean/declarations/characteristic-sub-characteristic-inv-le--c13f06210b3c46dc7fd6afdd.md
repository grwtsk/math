# characteristic_sub_characteristic_inv_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:aa903e52-5261-5298-6d37-44b656a0cb19",
  "kind": "theorem",
  "lexical_name": "characteristic_sub_characteristic_inv_le",
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
  "slug": "characteristic-sub-characteristic-inv-le--c13f06210b3c46dc7fd6afdd",
  "source": {
    "blob": "ec5c0627dac69fac77a52c6248b3116da3c4b75a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 116,
    "line": 105,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/FirstMainTheorem/Variant38c6fb782829565e68d76a25424ef6ff163fbc74d7f54f582d5f388f7dde330e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c13f06210b3c46dc7fd6afddccf9a79591b9a8f43dad7aa853b9fdf07d8b2a69",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/FirstMainTheorem/Variant38c6fb782829565e68d76a25424ef6ff163fbc74d7f54f582d5f388f7dde330e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:aa903e52-5261-5298-6d37-44b656a0cb19`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 105–116.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem characteristic_sub_characteristic_inv_le (hf : Meromorphic f) :
    |characteristic f ⊤ R - characteristic f⁻¹ ⊤ R|
      ≤ max |log ‖f 0‖| |log ‖meromorphicTrailingCoeffAt f 0‖| := by
  by_cases h : R = 0
  · simp [h, characteristic_sub_characteristic_inv_at_zero hf]
  · simp [characteristic_sub_characteristic_inv_of_ne_zero hf h]

/--
First part of the First Main Theorem, qualitative version: If `f` is meromorphic on the complex
plane, then the characteristic functions of `f` and `f⁻¹` agree asymptotically up to a bounded
function.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/FirstMainTheorem/Variant38c6fb782829565e68d76a25424ef6ff163fbc74d7f54f582d5f388f7dde330e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/FirstMainTheorem/Variant38c6fb782829565e68d76a25424ef6ff163fbc74d7f54f582d5f388f7dde330e.lean#L105).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ec5c0627dac69fac77a52c6248b3116da3c4b75a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
