# topEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ebaa83f97b4106ac814cbfad19b4bfbdd1c6d3a5f1f006aac12dc74fb9cb6642",
  "kind": "def",
  "lexical_name": "topEquiv",
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
  "slug": "topequiv--0ddb0e81db7cb110b23fdd3f",
  "source": {
    "blob": "21653ae70326f10fd8cbfcfa99620f510b2188d9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 603,
    "line": 591,
    "path": "GRWTSK/Algebra/GroupTheory/Operations/Variant352a76b48f0eb5f6816e89958c00fc7ab1cd7106506543e97eb2b4ea8e7c5b98.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0ddb0e81db7cb110b23fdd3f61bdd6f8217a17c0631ab06f1aeacfde33c19328",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Operations/Variant352a76b48f0eb5f6816e89958c00fc7ab1cd7106506543e97eb2b4ea8e7c5b98.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ebaa83f97b4106ac814cbfad19b4bfbdd1c6d3a5f1f006aac12dc74fb9cb6642`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 591–603.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def topEquiv : (⊤ : Subsemigroup M) ≃* M where
  toFun x := x
  invFun x := ⟨x, mem_top x⟩
  left_inv x := x.eta _
  right_inv _ := rfl
  map_mul' _ _ := rfl
#align subsemigroup.top_equiv Subsemigroup.topEquiv
#align add_subsemigroup.top_equiv AddSubsemigroup.topEquiv
#align subsemigroup.top_equiv_symm_apply_coe Subsemigroup.topEquiv_symm_apply_coe
#align add_subsemigroup.top_equiv_symm_apply_coe AddSubsemigroup.topEquiv_symm_apply_coe
#align add_subsemigroup.top_equiv_apply AddSubsemigroup.topEquiv_apply

@[to_additive (attr := simp)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Operations/Variant352a76b48f0eb5f6816e89958c00fc7ab1cd7106506543e97eb2b4ea8e7c5b98.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Operations/Variant352a76b48f0eb5f6816e89958c00fc7ab1cd7106506543e97eb2b4ea8e7c5b98.lean#L591).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `21653ae70326f10fd8cbfcfa99620f510b2188d9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
