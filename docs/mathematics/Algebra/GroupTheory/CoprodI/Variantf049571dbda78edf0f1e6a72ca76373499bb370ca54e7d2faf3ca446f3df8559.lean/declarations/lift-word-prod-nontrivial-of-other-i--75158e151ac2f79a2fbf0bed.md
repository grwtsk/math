# lift_word_prod_nontrivial_of_other_i

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4a0a046b-9fe4-5e74-4248-71750e2a098c",
  "kind": "theorem",
  "lexical_name": "lift_word_prod_nontrivial_of_other_i",
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
  "slug": "lift-word-prod-nontrivial-of-other-i--75158e151ac2f79a2fbf0bed",
  "source": {
    "blob": "faae9fbe0da89dd14edad39462e48e55bb4b8171",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 844,
    "line": 836,
    "path": "GRWTSK/Algebra/GroupTheory/CoprodI/Variantf049571dbda78edf0f1e6a72ca76373499bb370ca54e7d2faf3ca446f3df8559.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:75158e151ac2f79a2fbf0bed7dbddbbd35637e347049e2108efa0e2b913d7219",
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

Occurrence: `result:4a0a046b-9fe4-5e74-4248-71750e2a098c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 836–844.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lift_word_prod_nontrivial_of_other_i {i j k} (w : NeWord H i j) (hhead : k ≠ i)
    (hlast : k ≠ j) : lift f w.prod ≠ 1 := by
  intro heq1
  have : X k ⊆ X i := by simpa [heq1] using lift_word_ping_pong f X hpp w hlast.symm
  obtain ⟨x, hx⟩ := hXnonempty k
  exact (hXdisj hhead).le_bot ⟨hx, this hx⟩

variable [Nontrivial ι]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/CoprodI/Variantf049571dbda78edf0f1e6a72ca76373499bb370ca54e7d2faf3ca446f3df8559.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/CoprodI/Variantf049571dbda78edf0f1e6a72ca76373499bb370ca54e7d2faf3ca446f3df8559.lean#L836).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `faae9fbe0da89dd14edad39462e48e55bb4b8171` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
