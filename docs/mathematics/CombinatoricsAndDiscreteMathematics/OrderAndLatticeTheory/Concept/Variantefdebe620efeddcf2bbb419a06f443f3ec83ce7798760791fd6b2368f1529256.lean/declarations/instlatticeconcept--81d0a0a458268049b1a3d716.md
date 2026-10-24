# instLatticeConcept

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6c6a20d9eca1628672918c49d7c6f517b2a68a0e942056deb0e7187b0313b41b",
  "kind": "instance",
  "lexical_name": "instLatticeConcept",
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
  "slug": "instlatticeconcept--81d0a0a458268049b1a3d716",
  "source": {
    "blob": "82e7f1edea5cf96c119687aa1a6ac602a62791b2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 271,
    "line": 263,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Concept/Variantefdebe620efeddcf2bbb419a06f443f3ec83ce7798760791fd6b2368f1529256.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:81d0a0a458268049b1a3d716ac7004a0f73a9366b8829a272a6f9e35c6da6dc6",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Concept/Variantefdebe620efeddcf2bbb419a06f443f3ec83ce7798760791fd6b2368f1529256.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6c6a20d9eca1628672918c49d7c6f517b2a68a0e942056deb0e7187b0313b41b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 263–271.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance instLatticeConcept : Lattice (Concept α β r) :=
  { Concept.instSemilatticeInfConcept with
    sup := (· ⊔ ·)
    le_sup_left := fun c d => snd_subset_snd_iff.1 <| inter_subset_left _ _
    le_sup_right := fun c d => snd_subset_snd_iff.1 <| inter_subset_right _ _
    sup_le := fun c d e => by
      simp_rw [← snd_subset_snd_iff]
      exact subset_inter }

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Concept/Variantefdebe620efeddcf2bbb419a06f443f3ec83ce7798760791fd6b2368f1529256.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Concept/Variantefdebe620efeddcf2bbb419a06f443f3ec83ce7798760791fd6b2368f1529256.lean#L263).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `82e7f1edea5cf96c119687aa1a6ac602a62791b2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
