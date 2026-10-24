# Perm.slice

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1ac739b8debc64d430269b458543a2a3220da219debf31ea85ef3c058cf0c53a",
  "kind": "def",
  "lexical_name": "Perm.slice",
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
  "slug": "perm-slice--0b65cea82f317bf0e6dfe204",
  "source": {
    "blob": "68dd0fcf4d8b0cd7a3bf549bebd2b223c625b750",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 308,
    "line": 299,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Functions/Variantb27f08511c9676c7b2639fc6f5d6f065eb2b478f2d022fa67e9c760ed33eaf4f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0b65cea82f317bf0e6dfe20401ecdf99da9c892bcd565c85e9697ce4651b6e43",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Functions/Variantb27f08511c9676c7b2639fc6f5d6f065eb2b478f2d022fa67e9c760ed33eaf4f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1ac739b8debc64d430269b458543a2a3220da219debf31ea85ef3c058cf0c53a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 299–308.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Perm.slice [DecidableEq α] (n m : ℕ) :
    (Σ' xs ys : List α, xs ~ ys ∧ ys.Nodup) → Σ' xs ys : List α, xs ~ ys ∧ ys.Nodup
  | ⟨xs, ys, h, h'⟩ =>
    let xs' := List.dropSlice n m xs
    have h₀ : xs' ~ ys.inter xs' := List.Perm.dropSlice_inter _ _ h h'
    ⟨xs', ys.inter xs', h₀, h'.inter _⟩

/-- A list, in decreasing order, of sizes that should be
sliced off a list of length `n`
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Functions/Variantb27f08511c9676c7b2639fc6f5d6f065eb2b478f2d022fa67e9c760ed33eaf4f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Functions/Variantb27f08511c9676c7b2639fc6f5d6f065eb2b478f2d022fa67e9c760ed33eaf4f.lean#L299).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `68dd0fcf4d8b0cd7a3bf549bebd2b223c625b750` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
