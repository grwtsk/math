# ProofTerm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b17fb9acfcef0f252b3ac314a4e304d8dfd6a161ba6fd484354d81d511afb56d",
  "kind": "inductive",
  "lexical_name": "ProofTerm",
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
  "slug": "proofterm--e50c52be7c16d512807a1e88",
  "source": {
    "blob": "bbf239e3577ade2ed5a227e3019367868c76c98f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 20,
    "line": 13,
    "path": "GRWTSK/Algebra/LinearAlgebra/ProofSyntax/Variant96a61f0258603d84891b8c455227de1dcd3b6b45b7faaae34e20609c62b0c0c8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e50c52be7c16d512807a1e88e0fa374f8326bfaded8713bdd6b67af37f7c501f",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/ProofSyntax/Variant96a61f0258603d84891b8c455227de1dcd3b6b45b7faaae34e20609c62b0c0c8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `inductive` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b17fb9acfcef0f252b3ac314a4e304d8dfd6a161ba6fd484354d81d511afb56d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 13–20.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
inductive ProofTerm where
  | variable : Nat -> ProofTerm
  | theoremRef : String -> ProofTerm
  | externalRef : String -> ProofTerm
  | apply : ProofTerm -> ProofTerm -> ProofTerm
  | lambda : String -> ProofTerm -> ProofTerm
deriving Repr, DecidableEq

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/ProofSyntax/Variant96a61f0258603d84891b8c455227de1dcd3b6b45b7faaae34e20609c62b0c0c8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/ProofSyntax/Variant96a61f0258603d84891b8c455227de1dcd3b6b45b7faaae34e20609c62b0c0c8.lean#L13).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bbf239e3577ade2ed5a227e3019367868c76c98f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
