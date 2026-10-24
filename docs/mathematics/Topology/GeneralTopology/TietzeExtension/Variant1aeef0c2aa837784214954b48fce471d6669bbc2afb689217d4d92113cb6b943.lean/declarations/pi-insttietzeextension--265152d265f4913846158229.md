# Pi.instTietzeExtension

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fbb9c637966cf3924490518d587e3f2bf4993c5d3dd81780dea6099c761145fb",
  "kind": "instance",
  "lexical_name": "Pi.instTietzeExtension",
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
  "slug": "pi-insttietzeextension--265152d265f4913846158229",
  "source": {
    "blob": "0633efa8cd3de9cc199301dabd52fea3bcc6576e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 134,
    "line": 128,
    "path": "GRWTSK/Topology/GeneralTopology/TietzeExtension/Variant1aeef0c2aa837784214954b48fce471d6669bbc2afb689217d4d92113cb6b943.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:265152d265f4913846158229d001ef33b35231a1eefd8eda6945f47ed3998b94",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/TietzeExtension/Variant1aeef0c2aa837784214954b48fce471d6669bbc2afb689217d4d92113cb6b943.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fbb9c637966cf3924490518d587e3f2bf4993c5d3dd81780dea6099c761145fb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 128–134.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance Pi.instTietzeExtension {ι : Type*} {Y : ι → Type v} [∀ i, TopologicalSpace (Y i)]
    [∀ i, TietzeExtension.{u} (Y i)] : TietzeExtension.{u} (∀ i, Y i) where
  exists_restrict_eq' s hs f := by
    obtain ⟨g', hg'⟩ := Classical.skolem.mp <| fun i ↦
      ContinuousMap.exists_restrict_eq hs (ContinuousMap.piEquiv _ _ |>.symm f i)
    exact ⟨ContinuousMap.piEquiv _ _ g', by ext x i; congrm($(hg' i) x)⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/TietzeExtension/Variant1aeef0c2aa837784214954b48fce471d6669bbc2afb689217d4d92113cb6b943.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/TietzeExtension/Variant1aeef0c2aa837784214954b48fce471d6669bbc2afb689217d4d92113cb6b943.lean#L128).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0633efa8cd3de9cc199301dabd52fea3bcc6576e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
