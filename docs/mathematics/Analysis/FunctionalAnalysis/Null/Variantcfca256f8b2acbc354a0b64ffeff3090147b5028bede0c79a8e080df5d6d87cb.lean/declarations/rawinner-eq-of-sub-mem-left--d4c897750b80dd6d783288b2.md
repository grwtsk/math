# rawInner_eq_of_sub_mem_left

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:637352e0-26ed-7a19-dbff-32d2e15fc114",
  "kind": "theorem",
  "lexical_name": "rawInner_eq_of_sub_mem_left",
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
  "slug": "rawinner-eq-of-sub-mem-left--d4c897750b80dd6d783288b2",
  "source": {
    "blob": "272006aec790f45ccd99e2b7e03b9605c91761f2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 90,
    "line": 78,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/Null/Variantcfca256f8b2acbc354a0b64ffeff3090147b5028bede0c79a8e080df5d6d87cb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d4c897750b80dd6d783288b281d90a6452b906957c01e0b232312deb27f8e5b2",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/Null/Variantcfca256f8b2acbc354a0b64ffeff3090147b5028bede0c79a8e080df5d6d87cb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:637352e0-26ed-7a19-dbff-32d2e15fc114`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 78–90.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem rawInner_eq_of_sub_mem_left
    {f f' : Raw kernel}
    (differenceNull : f - f' ∈ kernelNullSubmodule kernel)
    (g : Raw kernel) :
    Raw.inner kernel f g = Raw.inner kernel f' g := by
  have zero := null_orthogonal_all kernel differenceNull g
  have expanded := Raw.add_left kernel (f - f') f' g
  rw [sub_add_cancel] at expanded
  rw [zero, zero_add] at expanded
  exact expanded

/-- Replacing a right representative by a congruent raw vector does not
change the kernel form. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/Null/Variantcfca256f8b2acbc354a0b64ffeff3090147b5028bede0c79a8e080df5d6d87cb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/Null/Variantcfca256f8b2acbc354a0b64ffeff3090147b5028bede0c79a8e080df5d6d87cb.lean#L78).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `272006aec790f45ccd99e2b7e03b9605c91761f2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
