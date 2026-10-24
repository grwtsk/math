# Prop.instCompleteLattice

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6c59f62497a6c4b557a12cfec4a8daf00bd782a5e59861742c7cfb4b169a4494",
  "kind": "instance",
  "lexical_name": "Prop.instCompleteLattice",
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
  "slug": "prop-instcompletelattice--661e7864cac5ea4a6e36ccb3",
  "source": {
    "blob": "7a823f454968ddf034e11179c977d3d13ff38922",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1178,
    "line": 1169,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variantaf3ed6c997fbf28f6f66b7f859867ea1e3ddccf28afc0ba270dcf7f3300a9ab0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:661e7864cac5ea4a6e36ccb394c261ac876aaf9909e3ab40b9a3157bea58742a",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variantaf3ed6c997fbf28f6f66b7f859867ea1e3ddccf28afc0ba270dcf7f3300a9ab0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6c59f62497a6c4b557a12cfec4a8daf00bd782a5e59861742c7cfb4b169a4494`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1169–1178.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance Prop.instCompleteLattice : CompleteLattice Prop where
  __ := Prop.instBoundedOrder
  __ := Prop.instDistribLattice
  sSup s := ∃ a ∈ s, a
  le_sSup _ a h p := ⟨a, h, p⟩
  sSup_le _ _ h := fun ⟨b, h', p⟩ => h b h' p
  sInf s := ∀ a, a ∈ s → a
  sInf_le _ a h p := p a h
  le_sInf _ _ h p b hb := h b hb p

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variantaf3ed6c997fbf28f6f66b7f859867ea1e3ddccf28afc0ba270dcf7f3300a9ab0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variantaf3ed6c997fbf28f6f66b7f859867ea1e3ddccf28afc0ba270dcf7f3300a9ab0.lean#L1169).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7a823f454968ddf034e11179c977d3d13ff38922` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
