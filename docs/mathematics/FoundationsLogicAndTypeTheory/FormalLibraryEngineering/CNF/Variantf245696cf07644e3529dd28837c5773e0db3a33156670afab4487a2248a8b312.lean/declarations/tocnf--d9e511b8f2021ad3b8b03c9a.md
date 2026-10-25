# toCNF

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2e19705ccdaf089b58eb2bdd1e0c080e19f8285f72a312f27886f7a2b4a9c8ec",
  "kind": "def",
  "lexical_name": "toCNF",
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
  "slug": "tocnf--d9e511b8f2021ad3b8b03c9a",
  "source": {
    "blob": "b0184a078c2239ae7e1588b9d627c3fe939fbc5e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 576,
    "line": 540,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CNF/Variantf245696cf07644e3529dd28837c5773e0db3a33156670afab4487a2248a8b312.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d9e511b8f2021ad3b8b03c9aa461cfab33807c94ca8a98234f6a597df28fe1e3",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CNF/Variantf245696cf07644e3529dd28837c5773e0db3a33156670afab4487a2248a8b312.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2e19705ccdaf089b58eb2bdd1e0c080e19f8285f72a312f27886f7a2b4a9c8ec`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 540–576.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public def toCNF (entry : Entrypoint Nat) : CNF Nat :=
  let ⟨state, _⟩ := go entry.aig entry.ref.gate entry.ref.hgate (toCNF.State.empty entry.aig)
  state.cnf.add [(entry.ref.gate, !entry.ref.invert)]
where
  go (aig : AIG Nat) (upper : Nat) (h : upper < aig.decls.size) (state : toCNF.State aig) :
      { out : toCNF.State aig // toCNF.State.IsExtensionBy state out upper h } :=
    if hmarked : state.cache.marks[upper]'(by have := state.cache.hmarks; omega) then
      ⟨state, by apply toCNF.State.IsExtensionBy_rfl <;> assumption⟩
    else
      let decl := aig.decls[upper]
      match heq : decl with
      | .false => state.addFalse upper h heq
      | .atom _ => state.addAtom upper h heq
      | .gate lhs rhs =>
        have := aig.hdag h heq
        let ⟨lstate, hlstate⟩ := go aig lhs.gate (by omega) state
        let ⟨rstate, hrstate⟩ := go aig rhs.gate (by omega) lstate

        have : toCNF.State.IsExtensionBy state rstate lhs.gate (by omega) := by
          apply toCNF.State.IsExtensionBy_trans_left
          · exact hlstate
          · exact hrstate

        let ⟨ret, hretstate⟩ := rstate.addGate upper h heq this.trueAt hrstate.trueAt
        ⟨
          ret,
          by
            apply toCNF.State.IsExtensionBy_trans_right
            · exact hlstate
            · apply toCNF.State.IsExtensionBy_trans_right
              · exact hrstate
              · exact hretstate
        ⟩

/--
The node that we started CNF conversion at will always be marked as visited in the CNF cache.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CNF/Variantf245696cf07644e3529dd28837c5773e0db3a33156670afab4487a2248a8b312.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CNF/Variantf245696cf07644e3529dd28837c5773e0db3a33156670afab4487a2248a8b312.lean#L540).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b0184a078c2239ae7e1588b9d627c3fe939fbc5e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
