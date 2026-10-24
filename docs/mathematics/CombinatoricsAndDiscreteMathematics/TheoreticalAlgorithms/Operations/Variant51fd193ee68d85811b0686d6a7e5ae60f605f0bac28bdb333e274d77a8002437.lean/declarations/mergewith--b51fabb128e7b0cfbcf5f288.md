# mergeWith

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f6281c0d163c7c0e633b19c39171e50e7d06eaf1ae6825d7e8c53f90e8031978",
  "kind": "def",
  "lexical_name": "mergeWith",
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
  "slug": "mergewith--b51fabb128e7b0cfbcf5f288",
  "source": {
    "blob": "424b51b8cdec7b1f703e926f9a03be3b02b64d55",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 959,
    "line": 947,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Operations/Variant51fd193ee68d85811b0686d6a7e5ae60f605f0bac28bdb333e274d77a8002437.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b51fabb128e7b0cfbcf5f28875a29d84a7e18f724aa5fc6ddf94354a313deacf",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Operations/Variant51fd193ee68d85811b0686d6a7e5ae60f605f0bac28bdb333e274d77a8002437.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f6281c0d163c7c0e633b19c39171e50e7d06eaf1ae6825d7e8c53f90e8031978`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 947–959.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mergeWith [Ord α] [LawfulEqOrd α] (mergeFn : (a : α) → β a → β a → β a) (t₁ t₂ : Impl α β)
    (ht₁ : t₁.Balanced) : BalancedTree α β :=
  t₂.foldl (δ := BalancedTree α β) (init := (⟨t₁, ht₁⟩ : BalancedTree α β)) fun t a b₂ =>
    (t.impl.alter a (fun
      | none => some b₂
      | some b₁ => some <| mergeFn a b₁ b₂) t.balanced_impl).toBalancedTree

/--
Returns a map that contains all mappings of `t₁` and `t₂`. In case that both maps contain the
same key `k` with respect to `cmp`, the provided function is used to determine the new value from
the respective values in `t₁` and `t₂`.
-/
@[inline]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Operations/Variant51fd193ee68d85811b0686d6a7e5ae60f605f0bac28bdb333e274d77a8002437.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Operations/Variant51fd193ee68d85811b0686d6a7e5ae60f605f0bac28bdb333e274d77a8002437.lean#L947).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `424b51b8cdec7b1f703e926f9a03be3b02b64d55` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
