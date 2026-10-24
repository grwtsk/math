# closedOnsetAtom_add_omitted

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0ba6ec4a-d90b-6994-ad9a-25311a5ec4e1",
  "kind": "theorem",
  "lexical_name": "closedOnsetAtom_add_omitted",
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
  "slug": "closedonsetatom-add-omitted--b3780eee89862a93a296092a",
  "source": {
    "blob": "d86bd1182f9c0185d7572d388205c9932ed43ecf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 176,
    "line": 170,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Attempt05/Variant15c39274847b6a9aa3057193ba52fd384946310e76a14f16c755197caeb6d3ff.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b3780eee89862a93a296092afe142634b3f7636d2338aac84d284f70a7aa5965",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Attempt05/Variant15c39274847b6a9aa3057193ba52fd384946310e76a14f16c755197caeb6d3ff.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0ba6ec4a-d90b-6994-ad9a-25311a5ec4e1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 170–176.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem closedOnsetAtom_add_omitted (t : ℝ) (p : Nat.Primes) (k : ℕ) :
    closedOnsetAtom t p k + omittedOnsetAtom t p k = primeMomentAtom 0 p k := by
  unfold closedOnsetAtom omittedOnsetAtom powerOnset powerWeight primeMomentAtom momentAtom
  by_cases h : ↑(k+2)*Real.log (p.val:ℝ) ≤ t
  · simp only [h,if_true,not_lt.mpr h,if_false,pow_zero,one_mul,zero_add,pow_one,add_zero]
  · simp only [h,if_false,lt_of_not_ge h,if_true,pow_zero,one_mul,pow_one,zero_add]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Attempt05/Variant15c39274847b6a9aa3057193ba52fd384946310e76a14f16c755197caeb6d3ff.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Attempt05/Variant15c39274847b6a9aa3057193ba52fd384946310e76a14f16c755197caeb6d3ff.lean#L170).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d86bd1182f9c0185d7572d388205c9932ed43ecf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
