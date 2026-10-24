# FullModelDeclaration

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fb8d27d71b765734cd4dae42472d4c046de159e410ae5eb49de944af6b1d573d",
  "kind": "structure",
  "lexical_name": "FullModelDeclaration",
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
  "slug": "fullmodeldeclaration--306b3e152b449ae9394767e3",
  "source": {
    "blob": "dd4dc9160aec3436ac201df824be634176409ac1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 238,
    "line": 209,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FullDeclaration/Variantb74070e3788ab7cb7dd2f9e2723bdeda9c6cf086ce35d6d7d61df06b324090f5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:306b3e152b449ae9394767e3fb3cef7a4dacbec0c353dc4d6fcffaeb70b4da8f",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FullDeclaration/Variantb74070e3788ab7cb7dd2f9e2723bdeda9c6cf086ce35d6d7d61df06b324090f5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fb8d27d71b765734cd4dae42472d4c046de159e410ae5eb49de944af6b1d573d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 209–238.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure FullModelDeclaration where
  /-- Distinct whole-model profile version; two does not retroactively enlarge projection one. -/
  profileVersion : ℕ
  /-- Complete K1 source/signature projection reused by the dependent syntax and ledger. -/
  coreSnapshot : Snapshot
  /-- Exact K2 syntax candidate whose run participates in final assembly. -/
  coreTree : SyntaxCertificate
  /-- Exact K3 resource candidate for that core syntax operand. -/
  coreLedger : LedgerCertificate
  /-- Fixed role-algebra proposal, including carrier, coverage mode and accepting roots. -/
  roles : RoleCandidate
  /-- Candidate role assigned to every core node in its canonical node-table order. -/
  runRoles : List ℕ
  /-- Optional supplied grammar commitment to compare with independent mechanical extraction. -/
  candidateGrammar : Option (List GrammarProduction)
  /-- Number of symbolic variables used in finite substitution and assignment enumeration. -/
  variableCount : ℕ
  /-- Ordered conditional representation generators explicitly included in this scope. -/
  generators : List LicensedGenerator
  /-- Fixed finite interpretation whose compatibility with the presentation remains to be proved. -/
  interpreter : InterpreterCandidate
  /-- Fixed singleton critical-period and boundary evidence proposal. -/
  critical : CriticalCandidate
  /-- Fixed exact signed-map proposal, verified separately from criticality. -/
  involution : InvolutionCandidate
  /-- Explicit finite ground-term domain, supplied as occurrence-checked syntax certificates. -/
  catalog : List SyntaxCertificate
  deriving DecidableEq, Repr, Inhabited

/-- Reconstruct the abstract ground terms while preserving the declared catalog order. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FullDeclaration/Variantb74070e3788ab7cb7dd2f9e2723bdeda9c6cf086ce35d6d7d61df06b324090f5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FullDeclaration/Variantb74070e3788ab7cb7dd2f9e2723bdeda9c6cf086ce35d6d7d61df06b324090f5.lean#L209).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dd4dc9160aec3436ac201df824be634176409ac1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
