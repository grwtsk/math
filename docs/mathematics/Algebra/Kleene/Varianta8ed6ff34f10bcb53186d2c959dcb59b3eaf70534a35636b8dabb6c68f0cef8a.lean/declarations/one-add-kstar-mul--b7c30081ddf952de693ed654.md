# one_add_kstar_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:372eb621-a23d-4283-259c-92af85ebddc8",
  "kind": "theorem",
  "lexical_name": "one_add_kstar_mul",
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
  "slug": "one-add-kstar-mul--b7c30081ddf952de693ed654",
  "source": {
    "blob": "9abfc687e6ad4f30a7dd7aeadb1176278c77df58",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 267,
    "line": 253,
    "path": "GRWTSK/Algebra/Kleene/Varianta8ed6ff34f10bcb53186d2c959dcb59b3eaf70534a35636b8dabb6c68f0cef8a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b7c30081ddf952de693ed6541f64c2a1a66d8c3f908d9e9427ecc2c6f728ff87",
  "verification": {
    "reference": "docs/verification/Algebra/Kleene/Varianta8ed6ff34f10bcb53186d2c959dcb59b3eaf70534a35636b8dabb6c68f0cef8a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:372eb621-a23d-4283-259c-92af85ebddc8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 253–267.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem one_add_kstar_mul : 1 + a∗ * a = a∗ := by
  have h : 1 + a∗ * a ≤ a∗ := by
    rw [add_le_iff]
    exact ⟨one_le_kstar, kstar_mul_le_kstar⟩
  apply le_antisymm h
  suffices 1 + (1 + a∗ * a) * a ≤ 1 + a∗ * a by
    rw [add_le_iff] at this
    nth_rw 1 [← one_mul a∗]
    exact (mul_left_mono this.1).trans (mul_kstar_le_self this.2)
  apply add_le_add_right (mul_left_mono h)

end KleeneAlgebra

namespace Prod

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Kleene/Varianta8ed6ff34f10bcb53186d2c959dcb59b3eaf70534a35636b8dabb6c68f0cef8a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Kleene/Varianta8ed6ff34f10bcb53186d2c959dcb59b3eaf70534a35636b8dabb6c68f0cef8a.lean#L253).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9abfc687e6ad4f30a7dd7aeadb1176278c77df58` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
