# find_eq_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c67e72ea-588a-4144-682d-ba0deb279b20",
  "kind": "lemma",
  "lexical_name": "find_eq_zero",
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
  "slug": "find-eq-zero--b13c2564c9e75f3cf25b11e3",
  "source": {
    "blob": "7d2bf259d4379a178eeca4e705d98c1baefeaa58",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 106,
    "line": 101,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Find/Variant5a07ff428d4fbd44e2921e630dce57685bc1a1ff544360a7109175aba9fc2640.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b13c2564c9e75f3cf25b11e31079e7f194f3c1018d0a4ae841e48a615366ca70",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/Find/Variant5a07ff428d4fbd44e2921e630dce57685bc1a1ff544360a7109175aba9fc2640.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c67e72ea-588a-4144-682d-ba0deb279b20`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 101–106.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] lemma find_eq_zero (h : ∃ n : ℕ, p n) : Nat.find h = 0 ↔ p 0 := by simp [find_eq_iff]

/-- If a predicate `q` holds at some `x` and implies `p` up to that `x`, then
the earliest `xq` such that `q xq` is at least the smallest `xp` where `p xp`.
The stronger version of `Nat.find_mono`, since this one needs
implication only up to `Nat.find _` while the other requires `q` implying `p` everywhere. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/Find/Variant5a07ff428d4fbd44e2921e630dce57685bc1a1ff544360a7109175aba9fc2640.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Find/Variant5a07ff428d4fbd44e2921e630dce57685bc1a1ff544360a7109175aba9fc2640.lean#L101).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7d2bf259d4379a178eeca4e705d98c1baefeaa58` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
