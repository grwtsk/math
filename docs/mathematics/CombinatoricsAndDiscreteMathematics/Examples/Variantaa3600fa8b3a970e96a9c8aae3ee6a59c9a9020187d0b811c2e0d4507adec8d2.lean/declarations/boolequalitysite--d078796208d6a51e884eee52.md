# boolEqualitySite

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:31466d14103fc7e9c10071f9e025eef1a2398dfeafaf6c1f37a742e7aafee909",
  "kind": "def",
  "lexical_name": "boolEqualitySite",
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
  "slug": "boolequalitysite--d078796208d6a51e884eee52",
  "source": {
    "blob": "cd01c02726de9af22206d68c8a1943acfc7c20a6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 245,
    "line": 231,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Examples/Variantaa3600fa8b3a970e96a9c8aae3ee6a59c9a9020187d0b811c2e0d4507adec8d2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d078796208d6a51e884eee5258e37fbc13d9b2a1dcee2377e5bf6331aa6de051",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Examples/Variantaa3600fa8b3a970e96a9c8aae3ee6a59c9a9020187d0b811c2e0d4507adec8d2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:31466d14103fc7e9c10071f9e025eef1a2398dfeafaf6c1f37a742e7aafee909`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 231–245.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def boolEqualitySite : FiniteCommunicationSite where
  Object := Bool
  objectFintype := inferInstance
  objectDecEq := inferInstance
  partialOrder := inferInstance
  orderDecidable := inferInstance
  cover := fun base ↦ {base}
  cover_below := by
    intro base member hmember
    simp only [Finset.mem_singleton] at hmember
    subst member
    exact @le_refl Bool inferInstance base
  identity := ⟨"world-model:site:bool-equality"⟩

/-- Constant Boolean presheaf with identity restrictions. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Examples/Variantaa3600fa8b3a970e96a9c8aae3ee6a59c9a9020187d0b811c2e0d4507adec8d2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Examples/Variantaa3600fa8b3a970e96a9c8aae3ee6a59c9a9020187d0b811c2e0d4507adec8d2.lean#L231).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cd01c02726de9af22206d68c8a1943acfc7c20a6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
