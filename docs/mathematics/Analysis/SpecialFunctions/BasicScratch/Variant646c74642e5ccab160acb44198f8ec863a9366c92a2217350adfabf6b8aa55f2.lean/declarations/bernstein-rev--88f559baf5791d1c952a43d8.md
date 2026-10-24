# bernstein_rev

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:61ae0a52-02ea-e07b-1be7-6bc66a22332b",
  "kind": "theorem",
  "lexical_name": "bernstein_rev",
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
  "slug": "bernstein-rev--88f559baf5791d1c952a43d8",
  "source": {
    "blob": "86ab147b7896067ba72a1eda362614f0db4a8598",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 63,
    "line": 53,
    "path": "GRWTSK/Analysis/SpecialFunctions/BasicScratch/Variant646c74642e5ccab160acb44198f8ec863a9366c92a2217350adfabf6b8aa55f2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:88f559baf5791d1c952a43d84fd914d67768c88aa8799ae9df5cf1f0b20abcaa",
  "verification": {
    "reference": "docs/verification/Analysis/SpecialFunctions/BasicScratch/Variant646c74642e5ccab160acb44198f8ec863a9366c92a2217350adfabf6b8aa55f2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:61ae0a52-02ea-e07b-1be7-6bc66a22332b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 53–63.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem bernstein_rev (degree : ℕ) (i : Fin (degree + 1)) (t : ℝ) :
    bernstein degree i.rev t = bernstein degree i (1 - t) := by
  have hsum := i.add_rev_cast
  have hrev : i.rev.1 = degree - i.1 := by omega
  rw [bernstein, bernstein]
  rw [hrev]
  rw [Nat.choose_symm i.is_le]
  rw [Nat.sub_sub_self i.is_le]
  ring

end Surface.Core.Bezier.Scratch
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/SpecialFunctions/BasicScratch/Variant646c74642e5ccab160acb44198f8ec863a9366c92a2217350adfabf6b8aa55f2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/SpecialFunctions/BasicScratch/Variant646c74642e5ccab160acb44198f8ec863a9366c92a2217350adfabf6b8aa55f2.lean#L53).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `86ab147b7896067ba72a1eda362614f0db4a8598` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
