# completeAtomicBooleanAlgebra

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4e9789eed051d893ee520e823bb80916c41b420e3e11c4585a94574b66214142",
  "kind": "instance",
  "lexical_name": "completeAtomicBooleanAlgebra",
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
  "slug": "completeatomicbooleanalgebra--ec3c22e07d1a5dd02df3271a",
  "source": {
    "blob": "55bd0e1e20438cd4f2449b7ec87bf391a0b42dbc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 201,
    "line": 178,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variant182b91fbeb3974f1ca86d4a830baeb47b0d8fcb4e4c9b3da7b1b4fb0267142c4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ec3c22e07d1a5dd02df3271a910d4b851a910b48ae960a6f0f24ad5590f7f0bb",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variant182b91fbeb3974f1ca86d4a830baeb47b0d8fcb4e4c9b3da7b1b4fb0267142c4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4e9789eed051d893ee520e823bb80916c41b420e3e11c4585a94574b66214142`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 178–201.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance completeAtomicBooleanAlgebra : CompleteAtomicBooleanAlgebra (Digraph V) :=
  { Digraph.distribLattice with
    le := (· ≤ ·)
    sup := (· ⊔ ·)
    inf := (· ⊓ ·)
    compl := HasCompl.compl
    sdiff := (· \ ·)
    top := Digraph.completeDigraph V
    bot := Digraph.emptyDigraph V
    le_top := fun _ _ _ _ ↦ trivial
    bot_le := fun _ _ _ h ↦ h.elim
    sdiff_eq := fun _ _ ↦ rfl
    inf_compl_le_bot := fun _ _ _ h ↦ absurd h.1 h.2
    top_le_sup_compl := fun G v w _ ↦ by tauto
    sSup := sSup
    le_sSup := fun _ G hG _ _ hab ↦ ⟨G, hG, hab⟩
    sSup_le := fun s G hG a b ↦ by
      rintro ⟨H, hH, hab⟩
      exact hG _ hH hab
    sInf := sInf
    sInf_le := fun _ _ hG _ _ hab ↦ hab hG
    le_sInf := fun _ _ hG _ _ hab ↦ fun _ hH ↦ hG _ hH hab
    iInf_iSup_eq := fun f ↦ by ext; simp [Classical.skolem] }

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variant182b91fbeb3974f1ca86d4a830baeb47b0d8fcb4e4c9b3da7b1b4fb0267142c4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variant182b91fbeb3974f1ca86d4a830baeb47b0d8fcb4e4c9b3da7b1b4fb0267142c4.lean#L178).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `55bd0e1e20438cd4f2449b7ec87bf391a0b42dbc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
