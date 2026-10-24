# completeAtomicBooleanAlgebra

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1443c0c95c12271cc5201d953d96dcbcf5517fec945bebe64ab21628b5c48bbe",
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
  "slug": "completeatomicbooleanalgebra--7d0a532409a0662744113bfa",
  "source": {
    "blob": "38042fbcd690a9d85bc47c93d1030890b7890228",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 193,
    "line": 170,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variant57533b2e03ebe11634a495022017362883f2bc5b51358057c68dffbae95319df.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7d0a532409a0662744113bfa9cabcae92d5b8555053b8c70a63da1e1264a11c7",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variant57533b2e03ebe11634a495022017362883f2bc5b51358057c68dffbae95319df.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1443c0c95c12271cc5201d953d96dcbcf5517fec945bebe64ab21628b5c48bbe`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 170–193.

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

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variant57533b2e03ebe11634a495022017362883f2bc5b51358057c68dffbae95319df.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variant57533b2e03ebe11634a495022017362883f2bc5b51358057c68dffbae95319df.lean#L170).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `38042fbcd690a9d85bc47c93d1030890b7890228` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
