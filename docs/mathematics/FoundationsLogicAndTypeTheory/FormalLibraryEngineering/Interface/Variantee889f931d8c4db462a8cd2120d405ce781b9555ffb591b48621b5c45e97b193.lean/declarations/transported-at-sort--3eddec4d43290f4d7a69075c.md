# transported_at_sort

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a2a53b2e-c943-c79a-ea83-855a6e491a1a",
  "kind": "theorem",
  "lexical_name": "transported_at_sort",
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
  "slug": "transported-at-sort--3eddec4d43290f4d7a69075c",
  "source": {
    "blob": "c360bbd4f3637b2b82c46fa4765135191b47789c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 316,
    "line": 306,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Interface/Variantee889f931d8c4db462a8cd2120d405ce781b9555ffb591b48621b5c45e97b193.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3eddec4d43290f4d7a69075c9f519d0cab779d30ca7182afebc2030552bb91d3",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Interface/Variantee889f931d8c4db462a8cd2120d405ce781b9555ffb591b48621b5c45e97b193.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a2a53b2e-c943-c79a-ea83-855a6e491a1a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 306–316.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem transported_at_sort {Γ : List (Expr S)} {M : Expr S} {e : J.Env Γ} {s : S}
    (ht : HasType P Γ M (.sort s)) (hs : StronglyNormalizing (M.subst (J.images e))) :
    J.Transported M (.sort s) e := by
  apply J.transported_of_ground (.inl ⟨s,rfl⟩)
  have hh : M.subst (J.images e) ∈ Top Ω (.sort s) :=
    ⟨ContextTower.HasType.subst ht (J.typed e),hs⟩
  simpa only [Expr.subst,Expr.normalForm_of_normal (Normal.sort s),sort_ground_eq_top] using hh

variable (H : Processed Ω U C)
include H

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Interface/Variantee889f931d8c4db462a8cd2120d405ce781b9555ffb591b48621b5c45e97b193.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Interface/Variantee889f931d8c4db462a8cd2120d405ce781b9555ffb591b48621b5c45e97b193.lean#L306).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c360bbd4f3637b2b82c46fa4765135191b47789c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
