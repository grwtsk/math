# regularized_determinant_has_external_soundness

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e715da0c0504a2ae1b1c61a4bbee5474143d482d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 189,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8b/8b4cbe96dca838816f3f66344dbe71daff877c39d7a603b4579bfec1cad85898.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:35b67562-6461-21b6-6451-b175c93c11c8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:daaae590-141c-8e56-fb63-1c2b299d7e97",
  "kind": "theorem",
  "lexical_name": "regularized_determinant_has_external_soundness",
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
  "slug": "regularized-determinant-has-external-soundness--dad012db03c3434fabd8c69e",
  "source": {
    "blob": "e715da0c0504a2ae1b1c61a4bbee5474143d482d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 201,
    "line": 189,
    "path": "GRWTSK/Topology/GeneralTopology/ArithmeticAuthorities/Variant8b4cbe96dca838816f3f66344dbe71daff877c39d7a603b4579bfec1cad85898.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dad012db03c3434fabd8c69e1ac7b85abc1226c29fbf946e7fc8f19ac1af646e",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ArithmeticAuthorities/Variant8b4cbe96dca838816f3f66344dbe71daff877c39d7a603b4579bfec1cad85898.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:daaae590-141c-8e56-fb63-1c2b299d7e97`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 189–201.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem regularized_determinant_has_external_soundness
    (A : RegularizedDeterminantAuthority) :
    A.regularizationSound ∧ A.errorBoundSound :=
  ⟨A.regularizationSoundProof, A.errorBoundSoundProof⟩

/-! ## 4. Elliptic arithmetic torsion authority -/

/--
A verified ZKP torsion authority.

This is the permitted route by which elliptic torsion enters the number-theoretic
context.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ArithmeticAuthorities/Variant8b4cbe96dca838816f3f66344dbe71daff877c39d7a603b4579bfec1cad85898.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ArithmeticAuthorities/Variant8b4cbe96dca838816f3f66344dbe71daff877c39d7a603b4579bfec1cad85898.lean#L189).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e715da0c0504a2ae1b1c61a4bbee5474143d482d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
