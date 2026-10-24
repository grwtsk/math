# le_isUnit_iff_zero_notMem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a4c7ac86-5151-a1df-1eb1-83569ad1fe08",
  "kind": "lemma",
  "lexical_name": "le_isUnit_iff_zero_notMem",
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
  "slug": "le-isunit-iff-zero-notmem--d4266add7dd2855fd8d80870",
  "source": {
    "blob": "af92c2d9aa664006aa0708c530acea56f7b363f2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 126,
    "line": 120,
    "path": "GRWTSK/Algebra/Zero/Variantb2eb0b6b787971606bce5bd4f22b8036ee523bf08e9c27e91a0ccacef7bb8f1d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d4266add7dd2855fd8d808705d9e259f27877141b8ec7415edd4da050b8cdd51",
  "verification": {
    "reference": "docs/verification/Algebra/Zero/Variantb2eb0b6b787971606bce5bd4f22b8036ee523bf08e9c27e91a0ccacef7bb8f1d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a4c7ac86-5151-a1df-1eb1-83569ad1fe08`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 120–126.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma le_isUnit_iff_zero_notMem [IsLocalRing R]
    {M : Submonoid R} : M ≤ IsUnit.submonoid R ↔ 0 ∉ M := by
  have := ((Ring.krullDimLE_zero_and_isLocalRing_tfae R).out 1 3 rfl rfl).mp ⟨‹_›, ‹_›⟩
  exact ⟨fun h₁ h₂ ↦ not_isUnit_zero (h₁ h₂),
    fun H x hx ↦ (this x).not_left.mp fun ⟨n, hn⟩ ↦ H (hn ▸ pow_mem hx n)⟩

variable (R) in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Zero/Variantb2eb0b6b787971606bce5bd4f22b8036ee523bf08e9c27e91a0ccacef7bb8f1d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Zero/Variantb2eb0b6b787971606bce5bd4f22b8036ee523bf08e9c27e91a0ccacef7bb8f1d.lean#L120).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `af92c2d9aa664006aa0708c530acea56f7b363f2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
