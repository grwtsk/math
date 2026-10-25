# duplicateLeftExpression

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:99dd124eb78c0533f5dcb29db1d8a0c885b5e6771e78ef8fd956d79529547b98",
  "kind": "def",
  "lexical_name": "duplicateLeftExpression",
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
  "slug": "duplicateleftexpression--13d96f2ed283d9630d89eb50",
  "source": {
    "blob": "5217f9ec20f8da9d6656416dee4eb3a938cf8a0c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 44,
    "line": 34,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/ProofTheory/01LeafAndJoinRejectionBoundaries/Variantd93a9132d78fc56ecc7636734c1970ee078a06bfeab2e33066c5c75bd278e716.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:13d96f2ed283d9630d89eb5034d3b492333f6954a373173de78b3ea35c0f3a5f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/ProofTheory/01LeafAndJoinRejectionBoundaries/Variantd93a9132d78fc56ecc7636734c1970ee078a06bfeab2e33066c5c75bd278e716.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:99dd124eb78c0533f5dcb29db1d8a0c885b5e6771e78ef8fd956d79529547b98`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 34–44.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def duplicateLeftExpression : MultiSourceInferenceExpression Bool
    (fun index =>
      (sourceTranslation index).mapProposition (sourceTheorem index).proposition)
    (True ∧ True) :=
  .inference
    (PremiseIndex := Bool)
    (premiseProposition := fun _ => True)
    (version "cycle-7-duplicate-left")
    (fun _ => .source false)
    (fun _proofs => ⟨True.intro, True.intro⟩)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/ProofTheory/01LeafAndJoinRejectionBoundaries/Variantd93a9132d78fc56ecc7636734c1970ee078a06bfeab2e33066c5c75bd278e716.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/ProofTheory/01LeafAndJoinRejectionBoundaries/Variantd93a9132d78fc56ecc7636734c1970ee078a06bfeab2e33066c5c75bd278e716.lean#L34).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5217f9ec20f8da9d6656416dee4eb3a938cf8a0c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
