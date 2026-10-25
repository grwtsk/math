# FieldAxiom.toSentence

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:744c71a31f49a3a8942f7faf4edfe002da0b10ac3faa86916eea7e00a08e1f55",
  "kind": "def",
  "lexical_name": "FieldAxiom.toSentence",
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
  "slug": "fieldaxiom-tosentence--ed6ead99bf0b307ec7a9fb0b",
  "source": {
    "blob": "b9fa94ef29b81ac6b2872b60d2dfc513e60c3557",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 75,
    "line": 63,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Basic/Variant458fb7de62d06d07b6e6e5c7e5a8adae18c9dbc834457123498975816547a77f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ed6ead99bf0b307ec7a9fb0b5fc3bb6e1fd29966b8d7c5cf5f0e2c059656cd11",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/ModelTheory/Basic/Variant458fb7de62d06d07b6e6e5c7e5a8adae18c9dbc834457123498975816547a77f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:744c71a31f49a3a8942f7faf4edfe002da0b10ac3faa86916eea7e00a08e1f55`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 63–75.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def FieldAxiom.toSentence : FieldAxiom → Language.ring.Sentence
  | .addAssoc => ∀' ∀' ∀' (((&0 + &1) + &2) =' (&0 + (&1 + &2)))
  | .zeroAdd => ∀' (((0 : Language.ring.Term _) + &0) =' &0)
  | .negAddCancel => ∀' ∀' ((-&0 + &0) =' 0)
  | .mulAssoc => ∀' ∀' ∀' (((&0 * &1) * &2) =' (&0 * (&1 * &2)))
  | .mulComm => ∀' ∀' ((&0 * &1) =' (&1 * &0))
  | .oneMul => ∀' (((1 : Language.ring.Term _) * &0) =' &0)
  | .existsInv => ∀' (∼(&0 =' 0) ⟹ ∃' ((&0 * &1) =' 1))
  | .leftDistrib => ∀' ∀' ∀' ((&0 * (&1 + &2)) =' ((&0 * &1) + (&0 * &2)))
  | .existsPairNE => ∃' ∃' (∼(&0 =' &1))

/-- The Proposition corresponding to each field axiom -/
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/ModelTheory/Basic/Variant458fb7de62d06d07b6e6e5c7e5a8adae18c9dbc834457123498975816547a77f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Basic/Variant458fb7de62d06d07b6e6e5c7e5a8adae18c9dbc834457123498975816547a77f.lean#L63).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b9fa94ef29b81ac6b2872b60d2dfc513e60c3557` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
