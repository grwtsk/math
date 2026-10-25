# FieldAxiom.toSentence

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6d5602fa117c23130bb2307ec47c505940875e57207bad9dd5e1cf1e378a0a66",
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
  "slug": "fieldaxiom-tosentence--f9c5f8f93cf320be4a2d2e78",
  "source": {
    "blob": "c0f9bcc74995ea159be1d6a19fed6f38caed836d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 72,
    "line": 60,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Basic/Variant14b95df9d40f6bf091c533ec234daf5a24cee0d1b155dcb5ad458bcafbd7b711.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f9c5f8f93cf320be4a2d2e78a61f281078fa1140c369383724c08fc597aeac90",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/ModelTheory/Basic/Variant14b95df9d40f6bf091c533ec234daf5a24cee0d1b155dcb5ad458bcafbd7b711.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6d5602fa117c23130bb2307ec47c505940875e57207bad9dd5e1cf1e378a0a66`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 60–72.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/ModelTheory/Basic/Variant14b95df9d40f6bf091c533ec234daf5a24cee0d1b155dcb5ad458bcafbd7b711.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Basic/Variant14b95df9d40f6bf091c533ec234daf5a24cee0d1b155dcb5ad458bcafbd7b711.lean#L60).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c0f9bcc74995ea159be1d6a19fed6f38caed836d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
