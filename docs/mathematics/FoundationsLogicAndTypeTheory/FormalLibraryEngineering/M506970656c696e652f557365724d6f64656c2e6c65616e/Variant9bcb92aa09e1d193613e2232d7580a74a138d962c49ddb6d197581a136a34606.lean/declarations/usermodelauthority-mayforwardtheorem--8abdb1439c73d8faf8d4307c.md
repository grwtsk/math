# UserModelAuthority.mayForwardTheorem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5365f61ff495d9c43a61088599c071e3fe6d1a30b90349e7bb31b5da551f1671",
  "kind": "def",
  "lexical_name": "UserModelAuthority.mayForwardTheorem",
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
  "slug": "usermodelauthority-mayforwardtheorem--8abdb1439c73d8faf8d4307c",
  "source": {
    "blob": "d7d5caa7d8b06c1b2f602e8811217040af95a442",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 103,
    "line": 93,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/M506970656c696e652f557365724d6f64656c2e6c65616e/Variant9bcb92aa09e1d193613e2232d7580a74a138d962c49ddb6d197581a136a34606.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8abdb1439c73d8faf8d4307c51b0ec3a767cc462d4f540e963b679f2b09b081d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/M506970656c696e652f557365724d6f64656c2e6c65616e/Variant9bcb92aa09e1d193613e2232d7580a74a138d962c49ddb6d197581a136a34606.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5365f61ff495d9c43a61088599c071e3fe6d1a30b90349e7bb31b5da551f1671`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 93–103.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def UserModelAuthority.mayForwardTheorem : UserModelAuthority → Prop
  | .checkedProof =>
      Think.Kernel.AuthorityGate.theoremAuthorityMayForward
        Think.Kernel.AuthorityGate.ClaimKind.theorem
        Think.Kernel.AuthorityGate.TheoremAuthority.checkedProof
  | .trustedImport =>
      Think.Kernel.AuthorityGate.theoremAuthorityMayForward
        Think.Kernel.AuthorityGate.ClaimKind.theorem
        Think.Kernel.AuthorityGate.TheoremAuthority.trustedImport
  | _ => False

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/M506970656c696e652f557365724d6f64656c2e6c65616e/Variant9bcb92aa09e1d193613e2232d7580a74a138d962c49ddb6d197581a136a34606.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/M506970656c696e652f557365724d6f64656c2e6c65616e/Variant9bcb92aa09e1d193613e2232d7580a74a138d962c49ddb6d197581a136a34606.lean#L93).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d7d5caa7d8b06c1b2f602e8811217040af95a442` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
