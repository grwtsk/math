# locallyFiniteOrder

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:37d546a83f470d228050c796d7ca9501334ab8a7d5278add9fa1722291aeedb9",
  "kind": "instance",
  "lexical_name": "locallyFiniteOrder",
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
  "slug": "locallyfiniteorder--7b52e385385e1a6ec9061ace",
  "source": {
    "blob": "f96725699e76da75fd94812944584ffdbd104083",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 960,
    "line": 928,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Defs/Variant74309127bde30a5a7c829a1dd2ecc2d75dcf1c09c42a1dd0c4593bbe2f2e2d6d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7b52e385385e1a6ec9061ace84d2dd4a09a67addb24ec94a83292ca930e5ef2f",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Defs/Variant74309127bde30a5a7c829a1dd2ecc2d75dcf1c09c42a1dd0c4593bbe2f2e2d6d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:37d546a83f470d228050c796d7ca9501334ab8a7d5278add9fa1722291aeedb9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 928–960.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance locallyFiniteOrder : LocallyFiniteOrder (WithTop α) where
  finsetIcc a b :=
    match a, b with
    | ⊤, ⊤ => {⊤}
    | ⊤, (b : α) => ∅
    | (a : α), ⊤ => insertTop (Ici a)
    | (a : α), (b : α) => (Icc a b).map Embedding.coeWithTop
  finsetIco a b :=
    match a, b with
    | ⊤, _ => ∅
    | (a : α), ⊤ => (Ici a).map Embedding.coeWithTop
    | (a : α), (b : α) => (Ico a b).map Embedding.coeWithTop
  finsetIoc a b :=
    match a, b with
    | ⊤, _ => ∅
    | (a : α), ⊤ => insertTop (Ioi a)
    | (a : α), (b : α) => (Ioc a b).map Embedding.coeWithTop
  finsetIoo a b :=
    match a, b with
    | ⊤, _ => ∅
    | (a : α), ⊤ => (Ioi a).map Embedding.coeWithTop
    | (a : α), (b : α) => (Ioo a b).map Embedding.coeWithTop
  finset_mem_Icc a b x := by
    cases a <;> cases b <;> cases x <;> simp
  finset_mem_Ico a b x := by
    cases a <;> cases b <;> cases x <;> simp
  finset_mem_Ioc a b x := by
    cases a <;> cases b <;> cases x <;> simp
  finset_mem_Ioo a b x := by
    cases a <;> cases b <;> cases x <;> simp

variable (a b : α)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Defs/Variant74309127bde30a5a7c829a1dd2ecc2d75dcf1c09c42a1dd0c4593bbe2f2e2d6d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Defs/Variant74309127bde30a5a7c829a1dd2ecc2d75dcf1c09c42a1dd0c4593bbe2f2e2d6d.lean#L928).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f96725699e76da75fd94812944584ffdbd104083` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
