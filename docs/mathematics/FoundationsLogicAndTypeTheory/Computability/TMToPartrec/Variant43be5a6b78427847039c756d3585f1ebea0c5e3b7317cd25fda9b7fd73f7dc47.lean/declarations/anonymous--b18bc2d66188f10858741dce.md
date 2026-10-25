# Λ'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:91e035770eaa63ebfc2a5acf032571f431d08dcda42a9785dfeae0c91bb952b8",
  "kind": "inductive",
  "lexical_name": "Λ'",
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
  "slug": "anonymous--b18bc2d66188f10858741dce",
  "source": {
    "blob": "183ab7fd7953d1da639e2f38b8533f488f779d18",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 952,
    "line": 928,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Computability/TMToPartrec/Variant43be5a6b78427847039c756d3585f1ebea0c5e3b7317cd25fda9b7fd73f7dc47.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b18bc2d66188f10858741dcef5192bab8c1442686486a7004fe8e63b1d8d8bda",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/Computability/TMToPartrec/Variant43be5a6b78427847039c756d3585f1ebea0c5e3b7317cd25fda9b7fd73f7dc47.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `inductive` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:91e035770eaa63ebfc2a5acf032571f431d08dcda42a9785dfeae0c91bb952b8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 928–952.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
inductive Λ'
  | move (p : Γ' → Bool) (k₁ k₂ : K') (q : Λ')
  | clear (p : Γ' → Bool) (k : K') (q : Λ')
  | copy (q : Λ')
  | push (k : K') (s : Option Γ' → Option Γ') (q : Λ')
  | read (f : Option Γ' → Λ')
  | succ (q : Λ')
  | pred (q₁ q₂ : Λ')
  | ret (k : Cont')
#align turing.partrec_to_TM2.Λ' Turing.PartrecToTM2.Λ'
#align turing.partrec_to_TM2.Λ'.move Turing.PartrecToTM2.Λ'.move
#align turing.partrec_to_TM2.Λ'.clear Turing.PartrecToTM2.Λ'.clear
#align turing.partrec_to_TM2.Λ'.copy Turing.PartrecToTM2.Λ'.copy
#align turing.partrec_to_TM2.Λ'.push Turing.PartrecToTM2.Λ'.push
#align turing.partrec_to_TM2.Λ'.read Turing.PartrecToTM2.Λ'.read
#align turing.partrec_to_TM2.Λ'.succ Turing.PartrecToTM2.Λ'.succ
#align turing.partrec_to_TM2.Λ'.pred Turing.PartrecToTM2.Λ'.pred
#align turing.partrec_to_TM2.Λ'.ret Turing.PartrecToTM2.Λ'.ret

-- Porting note: `Turing.PartrecToTM2.Λ'.rec` is noncomputable in Lean4, so we make it computable.
compile_inductive% Code
compile_inductive% Cont'
compile_inductive% K'
compile_inductive% Λ'

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/Computability/TMToPartrec/Variant43be5a6b78427847039c756d3585f1ebea0c5e3b7317cd25fda9b7fd73f7dc47.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Computability/TMToPartrec/Variant43be5a6b78427847039c756d3585f1ebea0c5e3b7317cd25fda9b7fd73f7dc47.lean#L928).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `183ab7fd7953d1da639e2f38b8533f488f779d18` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
