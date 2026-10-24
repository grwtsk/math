# SlashAction.smul_slash_of_tower

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0e99a5c9-6170-d979-3711-aa888938939b",
  "kind": "theorem",
  "lexical_name": "SlashAction.smul_slash_of_tower",
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
  "slug": "slashaction-smul-slash-of-tower--bed12ba6fd359810cde7fc86",
  "source": {
    "blob": "67776816f49fd552e79e034b51d4a658146264e4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 85,
    "line": 76,
    "path": "GRWTSK/Algebra/GroupTheory/SlashActions/Variant5ee95cef244c4029a35fb3e144a17bfa4ec6eac9f4e0da6a5723ab8e7f970c41.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bed12ba6fd359810cde7fc86e0290d68b6e0691cb666678c3d0e2c2529d6bd05",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/SlashActions/Variant5ee95cef244c4029a35fb3e144a17bfa4ec6eac9f4e0da6a5723ab8e7f970c41.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0e99a5c9-6170-d979-3711-aa888938939b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 76–85.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem SlashAction.smul_slash_of_tower {R β G α : Type*} (γ : Type*) [Group G] [AddGroup α]
    [Monoid γ] [MulAction γ α] [SMul R γ] [SMul R α] [IsScalarTower R γ α] [SlashAction β G α γ]
    (k : β) (g : G) (a : α) (r : R) : (r • a) ∣[k;γ] g = r • a ∣[k;γ] g := by
  rw [← smul_one_smul γ r a, SlashAction.smul_slash, smul_one_smul]
#align slash_action.smul_slash_of_tower SlashAction.smul_slash_of_tower

attribute [simp] SlashAction.zero_slash SlashAction.slash_one SlashAction.smul_slash
  SlashAction.add_slash

/-- Slash_action induced by a monoid homomorphism.-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/SlashActions/Variant5ee95cef244c4029a35fb3e144a17bfa4ec6eac9f4e0da6a5723ab8e7f970c41.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/SlashActions/Variant5ee95cef244c4029a35fb3e144a17bfa4ec6eac9f4e0da6a5723ab8e7f970c41.lean#L76).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `67776816f49fd552e79e034b51d4a658146264e4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
