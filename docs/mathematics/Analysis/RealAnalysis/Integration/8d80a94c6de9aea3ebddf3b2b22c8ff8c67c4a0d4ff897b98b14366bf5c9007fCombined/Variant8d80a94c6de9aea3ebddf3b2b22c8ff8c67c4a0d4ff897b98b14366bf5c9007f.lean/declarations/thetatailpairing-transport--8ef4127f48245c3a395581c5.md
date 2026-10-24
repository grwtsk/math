# thetaTailPairing_transport

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1cb2ea4ff85f9945a5df6f0d152da2a0cd7adf95",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 253,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8d/8d80a94c6de9aea3ebddf3b2b22c8ff8c67c4a0d4ff897b98b14366bf5c9007f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:bf16a289-1f33-8ecf-9334-420c67166a83",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:fa27fca0-c2de-7ade-9675-91b0df7bd006",
  "kind": "theorem",
  "lexical_name": "thetaTailPairing_transport",
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
  "slug": "thetatailpairing-transport--8ef4127f48245c3a395581c5",
  "source": {
    "blob": "1cb2ea4ff85f9945a5df6f0d152da2a0cd7adf95",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 259,
    "line": 253,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/8d80a94c6de9aea3ebddf3b2b22c8ff8c67c4a0d4ff897b98b14366bf5c9007fCombined/Variant8d80a94c6de9aea3ebddf3b2b22c8ff8c67c4a0d4ff897b98b14366bf5c9007f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8ef4127f48245c3a395581c58307863f03d6593dbe0397d57b402653a9cc12ee",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/8d80a94c6de9aea3ebddf3b2b22c8ff8c67c4a0d4ff897b98b14366bf5c9007fCombined/Variant8d80a94c6de9aea3ebddf3b2b22c8ff8c67c4a0d4ff897b98b14366bf5c9007f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fa27fca0-c2de-7ade-9675-91b0df7bd006`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 253–259.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem thetaTailPairing_transport (m q : ℕ) :
    (4 : ℝ) ^ q * tailPairing m q =
      ∫ t in Ici (0 : ℝ), thetaPhi t * evenBasis (m + q) t := by
  cases q with
  | zero => simp [tailPairing]
  | succ q => simpa only [Nat.add_assoc, Nat.succ_eq_add_one] using tailPairing_succ_beta m q

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/8d80a94c6de9aea3ebddf3b2b22c8ff8c67c4a0d4ff897b98b14366bf5c9007fCombined/Variant8d80a94c6de9aea3ebddf3b2b22c8ff8c67c4a0d4ff897b98b14366bf5c9007f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/8d80a94c6de9aea3ebddf3b2b22c8ff8c67c4a0d4ff897b98b14366bf5c9007fCombined/Variant8d80a94c6de9aea3ebddf3b2b22c8ff8c67c4a0d4ff897b98b14366bf5c9007f.lean#L253).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1cb2ea4ff85f9945a5df6f0d152da2a0cd7adf95` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
