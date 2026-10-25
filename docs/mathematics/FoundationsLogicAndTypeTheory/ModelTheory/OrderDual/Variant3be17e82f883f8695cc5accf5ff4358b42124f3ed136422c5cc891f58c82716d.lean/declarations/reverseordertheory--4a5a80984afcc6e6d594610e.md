# reverseOrderTheory

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:58894822a31101e45960bc045068792d4e4cc0e955ebaf76ca38696f2e3ab8be",
  "kind": "def",
  "lexical_name": "reverseOrderTheory",
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
  "slug": "reverseordertheory--4a5a80984afcc6e6d594610e",
  "source": {
    "blob": "77f136c34bd224eb3f930c4ee3df28ab0a85927b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 59,
    "line": 47,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/OrderDual/Variant3be17e82f883f8695cc5accf5ff4358b42124f3ed136422c5cc891f58c82716d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4a5a80984afcc6e6d594610ebf95465d791a6c9862692e67d9acf82ffe07f087",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/ModelTheory/OrderDual/Variant3be17e82f883f8695cc5accf5ff4358b42124f3ed136422c5cc891f58c82716d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:58894822a31101e45960bc045068792d4e4cc0e955ebaf76ca38696f2e3ab8be`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 47–59.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def reverseOrderTheory : Theory where
  Object := Nat
  Proposition := OrderProposition
  Holds := fun proposition => proposition.right ≤ proposition.left
  ProofObject := fun proposition => PLift (proposition.right ≤ proposition.left)
  proofObjectSound := fun proof => proof.down
  reifyProofObject := fun proof => ⟨proof⟩
  propositionSupport := fun proposition =>
    .nonempty proposition.left [proposition.right]
  propositionProperty := fun proposition _ =>
    proposition.right ≤ proposition.left

/-- Both example theories are formalized in the same exact Lean foundation. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/ModelTheory/OrderDual/Variant3be17e82f883f8695cc5accf5ff4358b42124f3ed136422c5cc891f58c82716d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/OrderDual/Variant3be17e82f883f8695cc5accf5ff4358b42124f3ed136422c5cc891f58c82716d.lean#L47).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `77f136c34bd224eb3f930c4ee3df28ab0a85927b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
