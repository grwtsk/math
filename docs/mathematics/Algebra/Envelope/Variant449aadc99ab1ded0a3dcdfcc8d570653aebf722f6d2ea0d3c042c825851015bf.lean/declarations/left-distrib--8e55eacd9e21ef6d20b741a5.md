# left_distrib

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0e362ca1-a1d9-26af-52f4-fcac2b3b5810",
  "kind": "theorem",
  "lexical_name": "left_distrib",
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
  "slug": "left-distrib--8e55eacd9e21ef6d20b741a5",
  "source": {
    "blob": "4a8bbdbfa9f103f20b5f740dd71af1b30bc0d541",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 222,
    "line": 216,
    "path": "GRWTSK/Algebra/Envelope/Variant449aadc99ab1ded0a3dcdfcc8d570653aebf722f6d2ea0d3c042c825851015bf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8e55eacd9e21ef6d20b741a55d2f6424b85facacb3b6a6e6dbee77bf9bdf9630",
  "verification": {
    "reference": "docs/verification/Algebra/Envelope/Variant449aadc99ab1ded0a3dcdfcc8d570653aebf722f6d2ea0d3c042c825851015bf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0e362ca1-a1d9-26af-52f4-fcac2b3b5810`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 216–222.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem left_distrib (a b c : Q α) : mul a (add b c) = add (mul a b) (mul a c) := by
  obtain ⟨⟨_, _⟩⟩ := a
  obtain ⟨⟨_, _⟩⟩ := b
  obtain ⟨⟨_, _⟩⟩ := c
  simp; apply Quot.sound
  simp [Semiring.left_distrib]; refine ⟨0, ?_⟩; ac_rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Envelope/Variant449aadc99ab1ded0a3dcdfcc8d570653aebf722f6d2ea0d3c042c825851015bf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Envelope/Variant449aadc99ab1ded0a3dcdfcc8d570653aebf722f6d2ea0d3c042c825851015bf.lean#L216).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4a8bbdbfa9f103f20b5f740dd71af1b30bc0d541` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
