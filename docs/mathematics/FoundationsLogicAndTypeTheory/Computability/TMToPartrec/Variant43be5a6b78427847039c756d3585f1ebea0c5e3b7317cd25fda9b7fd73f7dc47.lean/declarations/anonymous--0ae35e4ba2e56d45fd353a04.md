# Γ'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ccb9bad0aa27ea8503d1317b549311b85103630c4139cdeb173257f0c454b5dc",
  "kind": "inductive",
  "lexical_name": "Γ'",
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
  "slug": "anonymous--0ae35e4ba2e56d45fd353a04",
  "source": {
    "blob": "183ab7fd7953d1da639e2f38b8533f488f779d18",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 890,
    "line": 875,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Computability/TMToPartrec/Variant43be5a6b78427847039c756d3585f1ebea0c5e3b7317cd25fda9b7fd73f7dc47.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0ae35e4ba2e56d45fd353a0410a182b7e8153f688f60238483904520b84ac50e",
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

Occurrence: `declaration:ccb9bad0aa27ea8503d1317b549311b85103630c4139cdeb173257f0c454b5dc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 875–890.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
inductive Γ'
  | consₗ
  | cons
  | bit0
  | bit1
  deriving DecidableEq, Inhabited, Fintype
#align turing.partrec_to_TM2.Γ' Turing.PartrecToTM2.Γ'
#align turing.partrec_to_TM2.Γ'.Cons Turing.PartrecToTM2.Γ'.consₗ
#align turing.partrec_to_TM2.Γ'.cons Turing.PartrecToTM2.Γ'.cons
#align turing.partrec_to_TM2.Γ'.bit0 Turing.PartrecToTM2.Γ'.bit0
#align turing.partrec_to_TM2.Γ'.bit1 Turing.PartrecToTM2.Γ'.bit1

/-- The four stacks used by the program. `main` is used to store the input value in `trNormal`
mode and the output value in `Λ'.ret` mode, while `stack` is used to keep all the data for the
continuations. `rev` is used to store reversed lists when transferring values between stacks, and
`aux` is only used once in `cons₁`. See the section documentation. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/Computability/TMToPartrec/Variant43be5a6b78427847039c756d3585f1ebea0c5e3b7317cd25fda9b7fd73f7dc47.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Computability/TMToPartrec/Variant43be5a6b78427847039c756d3585f1ebea0c5e3b7317cd25fda9b7fd73f7dc47.lean#L875).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `183ab7fd7953d1da639e2f38b8533f488f779d18` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
