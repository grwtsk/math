# NonemptyInterval.hasNsmul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bc13d143f3d5de77d35d79f5ec5a43f2022e3665622b3f381d1c575b95ce37e0",
  "kind": "instance",
  "lexical_name": "NonemptyInterval.hasNsmul",
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
  "slug": "nonemptyinterval-hasnsmul--0d8a022a0b60668bd5736486",
  "source": {
    "blob": "45a6f65bf63f51f1b4dd889f5d95636ab8eaefb4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 249,
    "line": 239,
    "path": "GRWTSK/Algebra/GroupTheory/Interval/Variant02798f209f65af69c0ed7e8ba050b751c2877cb8c444a341869d09f3eb688a05.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0d8a022a0b60668bd57364866d0f306f59f16041743a48aaecf3f94c609a801b",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Interval/Variant02798f209f65af69c0ed7e8ba050b751c2877cb8c444a341869d09f3eb688a05.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bc13d143f3d5de77d35d79f5ec5a43f2022e3665622b3f381d1c575b95ce37e0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 239–249.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance NonemptyInterval.hasNsmul [AddMonoid α] [Preorder α] [CovariantClass α α (· + ·) (· ≤ ·)]
    [CovariantClass α α (swap (· + ·)) (· ≤ ·)] : SMul ℕ (NonemptyInterval α) :=
  ⟨fun n s => ⟨(n • s.fst, n • s.snd), nsmul_le_nsmul_of_le_right s.fst_le_snd _⟩⟩
#align nonempty_interval.has_nsmul NonemptyInterval.hasNsmul

section Pow

variable [Monoid α] [Preorder α] [CovariantClass α α (· * ·) (· ≤ ·)]
  [CovariantClass α α (swap (· * ·)) (· ≤ ·)]

@[to_additive existing NonemptyInterval.hasNsmul]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Interval/Variant02798f209f65af69c0ed7e8ba050b751c2877cb8c444a341869d09f3eb688a05.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Interval/Variant02798f209f65af69c0ed7e8ba050b751c2877cb8c444a341869d09f3eb688a05.lean#L239).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `45a6f65bf63f51f1b4dd889f5d95636ab8eaefb4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
