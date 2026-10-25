# rangeOfWType

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c84891b5168034d1d42e496a08bb53f3e1be151975de1f86471a2fe3eceaa4cc",
  "kind": "def",
  "lexical_name": "rangeOfWType",
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
  "slug": "rangeofwtype--5b995f1ff000686a318bcf19",
  "source": {
    "blob": "37f45168df1dd9d3feb00f776dd540f3e1e9868f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 56,
    "line": 48,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Subfield/Varianta59dd79af1d9247999e11936c9e9a1c5b23c58d20a2213afc49045d9dedb63d6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5b995f1ff000686a318bcf19ac65af590e30a459a761c64772a174c723dae14d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/Subfield/Varianta59dd79af1d9247999e11936c9e9a1c5b23c58d20a2213afc49045d9dedb63d6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c84891b5168034d1d42e496a08bb53f3e1be151975de1f86471a2fe3eceaa4cc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 48–56.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def rangeOfWType : Subfield (closure s) where
  carrier := Set.range (WType.elim _ <| operate s)
  add_mem' := by rintro _ _ ⟨x, rfl⟩ ⟨y, rfl⟩; exact ⟨WType.mk (.inl 0) (Bool.rec x y), by rfl⟩
  mul_mem' := by rintro _ _ ⟨x, rfl⟩ ⟨y, rfl⟩; exact ⟨WType.mk (.inl 1) (Bool.rec x y), by rfl⟩
  neg_mem' := by rintro _ ⟨x, rfl⟩; exact ⟨WType.mk (.inl 2) fun _ ↦ x, rfl⟩
  inv_mem' := by rintro _ ⟨x, rfl⟩; exact ⟨WType.mk (.inl 3) fun _ ↦ x, rfl⟩
  zero_mem' := ⟨WType.mk (.inl 4) Empty.rec, rfl⟩
  one_mem' := ⟨WType.mk (.inl 5) Empty.rec, rfl⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/Subfield/Varianta59dd79af1d9247999e11936c9e9a1c5b23c58d20a2213afc49045d9dedb63d6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Subfield/Varianta59dd79af1d9247999e11936c9e9a1c5b23c58d20a2213afc49045d9dedb63d6.lean#L48).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `37f45168df1dd9d3feb00f776dd540f3e1e9868f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
