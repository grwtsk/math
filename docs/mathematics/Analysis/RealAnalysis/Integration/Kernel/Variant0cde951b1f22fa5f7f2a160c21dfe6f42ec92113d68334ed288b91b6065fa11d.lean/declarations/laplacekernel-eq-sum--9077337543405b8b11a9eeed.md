# laplaceKernel_eq_sum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5d3e56782820eb272f935a426b620923282a6d0c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 174,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/0c/0cde951b1f22fa5f7f2a160c21dfe6f42ec92113d68334ed288b91b6065fa11d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6354d94b-a790-2c04-7566-6c2507e4bbcd",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7b8d0ecd-6892-038d-e39b-28279138e06a",
  "kind": "lemma",
  "lexical_name": "laplaceKernel_eq_sum",
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
  "slug": "laplacekernel-eq-sum--9077337543405b8b11a9eeed",
  "source": {
    "blob": "5d3e56782820eb272f935a426b620923282a6d0c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 184,
    "line": 174,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Kernel/Variant0cde951b1f22fa5f7f2a160c21dfe6f42ec92113d68334ed288b91b6065fa11d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9077337543405b8b11a9eeed6dbcd34a6caf8e4ad520902ab341cf068bcb4b48",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Kernel/Variant0cde951b1f22fa5f7f2a160c21dfe6f42ec92113d68334ed288b91b6065fa11d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7b8d0ecd-6892-038d-e39b-28279138e06a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 174–184.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma laplaceKernel_eq_sum
    (k : ℕ) (w : ℂ) :
    laplaceKernel k w =
      Complex.exp (-w) *
        (∑ j ∈ Finset.range (k + 1),
          (k.factorial : ℂ) / j.factorial * w ^ j) /
        w ^ (k + 1) := by
  rw [laplaceKernel, kernelNumerator_eq_sum]

/-- Reversing the finite factorial polynomial produces the source's
descending-factorial numerator. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Kernel/Variant0cde951b1f22fa5f7f2a160c21dfe6f42ec92113d68334ed288b91b6065fa11d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Kernel/Variant0cde951b1f22fa5f7f2a160c21dfe6f42ec92113d68334ed288b91b6065fa11d.lean#L174).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5d3e56782820eb272f935a426b620923282a6d0c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
