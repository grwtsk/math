# natAbs_odd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:33029590-dacd-7b9d-6158-142186ecff0a",
  "kind": "lemma",
  "lexical_name": "natAbs_odd",
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
  "slug": "natabs-odd--02d4fd6d1107747eb3eb5ce7",
  "source": {
    "blob": "9a9bcf197f5cd674cd7635fa1b4894a76c1d320c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 113,
    "line": 108,
    "path": "GRWTSK/Algebra/Parity/Variante6458ebe39f96fbe6fc9de0b0d12ff6d934c5fc51b2aed88810a7f074b306fce.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:02d4fd6d1107747eb3eb5ce7f3befa8dc773303fb7a189815d3343bbd3e6969d",
  "verification": {
    "reference": "docs/verification/Algebra/Parity/Variante6458ebe39f96fbe6fc9de0b0d12ff6d934c5fc51b2aed88810a7f074b306fce.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:33029590-dacd-7b9d-6158-142186ecff0a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 108–113.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma natAbs_odd : Odd n.natAbs ↔ Odd n := by
  rw [← not_even_iff_odd, ← Nat.not_even_iff_odd, natAbs_even]

protected alias ⟨_, _root_.Even.natAbs⟩ := natAbs_even
protected alias ⟨_, _root_.Odd.natAbs⟩ := natAbs_odd

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Parity/Variante6458ebe39f96fbe6fc9de0b0d12ff6d934c5fc51b2aed88810a7f074b306fce.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Parity/Variante6458ebe39f96fbe6fc9de0b0d12ff6d934c5fc51b2aed88810a7f074b306fce.lean#L108).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9a9bcf197f5cd674cd7635fa1b4894a76c1d320c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
