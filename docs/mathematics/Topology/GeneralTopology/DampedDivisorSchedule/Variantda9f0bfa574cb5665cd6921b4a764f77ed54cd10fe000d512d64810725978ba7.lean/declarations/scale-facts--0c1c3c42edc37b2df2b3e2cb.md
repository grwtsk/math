# scale_facts

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "67f119581b9bc43f929165355d9d7bc846d69140",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 18,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/da/da9f0bfa574cb5665cd6921b4a764f77ed54cd10fe000d512d64810725978ba7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0626e184-3179-e9d1-fd3a-1a43ae9f89b0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:01c83aa1-1f28-ebdd-0b47-8df5231441bb",
  "kind": "theorem",
  "lexical_name": "scale_facts",
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
  "slug": "scale-facts--0c1c3c42edc37b2df2b3e2cb",
  "source": {
    "blob": "67f119581b9bc43f929165355d9d7bc846d69140",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 25,
    "line": 18,
    "path": "GRWTSK/Topology/GeneralTopology/DampedDivisorSchedule/Variantda9f0bfa574cb5665cd6921b4a764f77ed54cd10fe000d512d64810725978ba7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0c1c3c42edc37b2df2b3e2cb040b9be93e2e1710a74f300cc57296548478a3ae",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/DampedDivisorSchedule/Variantda9f0bfa574cb5665cd6921b4a764f77ed54cd10fe000d512d64810725978ba7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:01c83aa1-1f28-ebdd-0b47-8df5231441bb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 18–25.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem scale_facts (X : ℕ) (hX : 1 ≤ X) :
    0 < (X : ℝ) ∧ 1 ≤ logScale X ∧ 0 < logScale X := by
  have hx : (1 : ℝ) ≤ X := by exact_mod_cast hX
  have hL : 1 ≤ logScale X := by
    unfold logScale
    linarith [Real.log_nonneg hx]
  exact ⟨by linarith, hL, by linarith⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/DampedDivisorSchedule/Variantda9f0bfa574cb5665cd6921b4a764f77ed54cd10fe000d512d64810725978ba7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/DampedDivisorSchedule/Variantda9f0bfa574cb5665cd6921b4a764f77ed54cd10fe000d512d64810725978ba7.lean#L18).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `67f119581b9bc43f929165355d9d7bc846d69140` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
