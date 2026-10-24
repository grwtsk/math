# rcomap'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:11487ebdae66cb9dfaeb432f10f5a388b03f5fc4b208bde222929749a181e47d",
  "kind": "def",
  "lexical_name": "rcomap'",
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
  "slug": "rcomap--ea0be286ea1cc77100fcd35c",
  "source": {
    "blob": "e1c952f4ea401743a475f2c0df802638a62720a3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 147,
    "line": 139,
    "path": "GRWTSK/Topology/GeneralTopology/Partial/Variantb75ce5562ee6e1b93b4b268dc7c3bde566a10a1b694aa220331117a1f9657e12.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ea0be286ea1cc77100fcd35c8fa05a06b3ca8a3edc4d52ff99a740b5af2b6450",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Partial/Variantb75ce5562ee6e1b93b4b268dc7c3bde566a10a1b694aa220331117a1f9657e12.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:11487ebdae66cb9dfaeb432f10f5a388b03f5fc4b208bde222929749a181e47d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 139–147.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def rcomap' (r : Rel α β) (f : Filter β) : Filter α where
  sets := Rel.image (fun s t => r.preimage s ⊆ t) f.sets
  univ_sets := ⟨Set.univ, univ_mem, Set.subset_univ _⟩
  sets_of_superset := fun ⟨a', ha', ma'a⟩ ab => ⟨a', ha', ma'a.trans ab⟩
  inter_sets := fun ⟨a', ha₁, ha₂⟩ ⟨b', hb₁, hb₂⟩ =>
    ⟨a' ∩ b', inter_mem ha₁ hb₁,
      (@Rel.preimage_inter _ _ r _ _).trans (Set.inter_subset_inter ha₂ hb₂)⟩

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Partial/Variantb75ce5562ee6e1b93b4b268dc7c3bde566a10a1b694aa220331117a1f9657e12.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Partial/Variantb75ce5562ee6e1b93b4b268dc7c3bde566a10a1b694aa220331117a1f9657e12.lean#L139).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e1c952f4ea401743a475f2c0df802638a62720a3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
