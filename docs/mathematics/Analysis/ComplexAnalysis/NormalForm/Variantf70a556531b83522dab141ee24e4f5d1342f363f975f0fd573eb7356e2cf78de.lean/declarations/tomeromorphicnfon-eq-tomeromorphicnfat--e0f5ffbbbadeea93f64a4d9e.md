# toMeromorphicNFOn_eq_toMeromorphicNFAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7cbdb1fe-4449-3454-f31c-42d4cd20c068",
  "kind": "theorem",
  "lexical_name": "toMeromorphicNFOn_eq_toMeromorphicNFAt",
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
  "slug": "tomeromorphicnfon-eq-tomeromorphicnfat--e0f5ffbbbadeea93f64a4d9e",
  "source": {
    "blob": "f968a3ab49402aff844e783bd9074d59bf3e8cdd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 879,
    "line": 872,
    "path": "GRWTSK/Analysis/ComplexAnalysis/NormalForm/Variantf70a556531b83522dab141ee24e4f5d1342f363f975f0fd573eb7356e2cf78de.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e0f5ffbbbadeea93f64a4d9eddc53758054e64bcd48d49f8a77b5805db0c90a8",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/NormalForm/Variantf70a556531b83522dab141ee24e4f5d1342f363f975f0fd573eb7356e2cf78de.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7cbdb1fe-4449-3454-f31c-42d4cd20c068`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 872–879.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem toMeromorphicNFOn_eq_toMeromorphicNFAt (hf : MeromorphicOn f U)
    (hx : x ∈ U) :
    toMeromorphicNFOn f U x = toMeromorphicNFAt f x x := by
  apply Filter.EventuallyEq.eq_of_nhds (g := toMeromorphicNFAt f x)
  simp [(toMeromorphicNFOn_eq_toMeromorphicNFAt_on_nhds hf hx).trans]

variable (f U) in
/-- After conversion to normal form on `U`, the function has normal form. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/NormalForm/Variantf70a556531b83522dab141ee24e4f5d1342f363f975f0fd573eb7356e2cf78de.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/NormalForm/Variantf70a556531b83522dab141ee24e4f5d1342f363f975f0fd573eb7356e2cf78de.lean#L872).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f968a3ab49402aff844e783bd9074d59bf3e8cdd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
