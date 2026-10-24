# decidableSuffix

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bd82b421dea7e086c97bc27cb3de89735722cee7ec26c42169b8f1d451d295c2",
  "kind": "instance",
  "lexical_name": "decidableSuffix",
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
  "slug": "decidablesuffix--2f447ce901a6573d310a6c74",
  "source": {
    "blob": "2eb342d94cf2723bac2f2fbebf2865cba35688f0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 246,
    "line": 237,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Infix/Variantb3f8a398db3dfac6b435f509b8fc512d25631c73fd8b56c32e7870b55a26e154.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2f447ce901a6573d310a6c74206e98e2bce8a269f8208c6e4f91162dd433bfeb",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Infix/Variantb3f8a398db3dfac6b435f509b8fc512d25631c73fd8b56c32e7870b55a26e154.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bd82b421dea7e086c97bc27cb3de89735722cee7ec26c42169b8f1d451d295c2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 237–246.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance decidableSuffix [DecidableEq α] : ∀ l₁ l₂ : List α, Decidable (l₁ <:+ l₂)
  | [], l₂ => isTrue ⟨l₂, append_nil _⟩
  | a :: l₁, [] => isFalse <| mt (Sublist.length_le ∘ isSuffix.sublist) (by simp)
  | l₁, b :: l₂ =>
    @decidable_of_decidable_of_iff _ _
      (@instDecidableOr _ _ _ (l₁.decidableSuffix l₂))
      suffix_cons_iff.symm
termination_by decidableSuffix l₁ l₂ => (l₁, l₂)
#align list.decidable_suffix List.decidableSuffix

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Infix/Variantb3f8a398db3dfac6b435f509b8fc512d25631c73fd8b56c32e7870b55a26e154.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Infix/Variantb3f8a398db3dfac6b435f509b8fc512d25631c73fd8b56c32e7870b55a26e154.lean#L237).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2eb342d94cf2723bac2f2fbebf2865cba35688f0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
