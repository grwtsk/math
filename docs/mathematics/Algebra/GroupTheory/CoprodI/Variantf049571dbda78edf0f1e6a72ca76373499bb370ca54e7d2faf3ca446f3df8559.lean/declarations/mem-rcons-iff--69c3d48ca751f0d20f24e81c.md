# mem_rcons_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:96a5d5e8-dec1-ccae-4ba7-6c076668b340",
  "kind": "theorem",
  "lexical_name": "mem_rcons_iff",
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
  "slug": "mem-rcons-iff--69c3d48ca751f0d20f24e81c",
  "source": {
    "blob": "faae9fbe0da89dd14edad39462e48e55bb4b8171",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 385,
    "line": 375,
    "path": "GRWTSK/Algebra/GroupTheory/CoprodI/Variantf049571dbda78edf0f1e6a72ca76373499bb370ca54e7d2faf3ca446f3df8559.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:69c3d48ca751f0d20f24e81cccf22883282348d98aa14fed0d9b93aa8613545e",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/CoprodI/Variantf049571dbda78edf0f1e6a72ca76373499bb370ca54e7d2faf3ca446f3df8559.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:96a5d5e8-dec1-ccae-4ba7-6c076668b340`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 375–385.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_rcons_iff {i j : ι} (p : Pair M i) (m : M j) :
    ⟨_, m⟩ ∈ (rcons p).toList ↔ ⟨_, m⟩ ∈ p.tail.toList ∨
      m ≠ 1 ∧ (∃ h : i = j, m = h ▸ p.head) := by
  simp only [rcons, cons, ne_eq]
  grind

end

/-- Induct on a word by adding letters one at a time without reduction,
effectively inducting on the underlying `List`. -/
@[elab_as_elim]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/CoprodI/Variantf049571dbda78edf0f1e6a72ca76373499bb370ca54e7d2faf3ca446f3df8559.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/CoprodI/Variantf049571dbda78edf0f1e6a72ca76373499bb370ca54e7d2faf3ca446f3df8559.lean#L375).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `faae9fbe0da89dd14edad39462e48e55bb4b8171` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
