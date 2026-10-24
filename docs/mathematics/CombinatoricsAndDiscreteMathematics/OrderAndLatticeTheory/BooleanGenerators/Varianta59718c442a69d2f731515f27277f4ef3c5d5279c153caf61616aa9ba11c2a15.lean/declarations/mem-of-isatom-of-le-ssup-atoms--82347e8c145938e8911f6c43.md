# mem_of_isAtom_of_le_sSup_atoms

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6e0db41a-9790-6395-530b-adb1c6877a16",
  "kind": "lemma",
  "lexical_name": "mem_of_isAtom_of_le_sSup_atoms",
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
  "slug": "mem-of-isatom-of-le-ssup-atoms--82347e8c145938e8911f6c43",
  "source": {
    "blob": "20f5e0c6fc9916a9b3005b78bdcc31b822773d65",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 129,
    "line": 119,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BooleanGenerators/Varianta59718c442a69d2f731515f27277f4ef3c5d5279c153caf61616aa9ba11c2a15.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:82347e8c145938e8911f6c4379bd1a429c7e7281d77b3ff1fadf8718bcad3239",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BooleanGenerators/Varianta59718c442a69d2f731515f27277f4ef3c5d5279c153caf61616aa9ba11c2a15.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6e0db41a-9790-6395-530b-adb1c6877a16`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 119–129.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma mem_of_isAtom_of_le_sSup_atoms (hS : BooleanGenerators S) (a : α) (ha : IsAtom a)
    (haS : a ≤ sSup S) : a ∈ S := by
  obtain ⟨T, hT, rfl⟩ := hS.atomistic a haS
  obtain rfl | ⟨a, haT⟩ := T.eq_empty_or_nonempty
  · simp only [sSup_empty] at ha
    exact (ha.1 rfl).elim
  suffices sSup T = a from this ▸ hT haT
  have : a ≤ sSup T := le_sSup haT
  rwa [ha.le_iff_eq, eq_comm] at this
  exact (hS.isAtom a (hT haT)).1

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BooleanGenerators/Varianta59718c442a69d2f731515f27277f4ef3c5d5279c153caf61616aa9ba11c2a15.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BooleanGenerators/Varianta59718c442a69d2f731515f27277f4ef3c5d5279c153caf61616aa9ba11c2a15.lean#L119).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `20f5e0c6fc9916a9b3005b78bdcc31b822773d65` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
