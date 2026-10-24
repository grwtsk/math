# MatrixFiberCanonicalTraceLaws

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:38c09b519f9c895587115571b85a8b07bb8cf27ed907578cf74a84ee6c71c98d",
  "kind": "structure",
  "lexical_name": "MatrixFiberCanonicalTraceLaws",
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
  "slug": "matrixfibercanonicaltracelaws--b1304d55e427c4fb65af4f51",
  "source": {
    "blob": "401680119d81614c8f84b421ce29607304d29ba9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 250,
    "line": 207,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Trace/Variantb6da1680039dec0fb9680f95665a853d0b9c46a4f926802c667129eb2849b9bd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b1304d55e427c4fb65af4f51cb68e903f08a0278a93a5786ab142eaa2146de12",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Trace/Variantb6da1680039dec0fb9680f95665a853d0b9c46a4f926802c667129eb2849b9bd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:38c09b519f9c895587115571b85a8b07bb8cf27ed907578cf74a84ee6c71c98d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 207–250.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure MatrixFiberCanonicalTraceLaws
    {State G : Type}
    [Fintype State] [Fintype G] [Group G]
    (rank : Nat)
    (law : FiniteLaw State)
    (identity : G) where
  identityIsGroupIdentity : identity = 1
  unit :
    MatrixFiberCrossedProductElement State G rank
  multiply :
    MatrixFiberCrossedProductElement State G rank →
      MatrixFiberCrossedProductElement State G rank →
        MatrixFiberCrossedProductElement State G rank
  involution :
    MatrixFiberCrossedProductElement State G rank →
      MatrixFiberCrossedProductElement State G rank
  automorphism :
    G →
      MatrixFiberCrossedProductElement State G rank →
        MatrixFiberCrossedProductElement State G rank
  normalized :
    matrixFiberCanonicalTrace rank law identity unit = 1
  positiveRealPart :
    ∀ element,
      0 ≤
        (matrixFiberCanonicalTrace rank law identity
          (multiply (involution element) element)).re
  positiveImaginaryPartZero :
    ∀ element,
      (matrixFiberCanonicalTrace rank law identity
        (multiply (involution element) element)).im = 0
  tracial :
    ∀ left right,
      matrixFiberCanonicalTrace rank law identity
          (multiply left right) =
        matrixFiberCanonicalTrace rank law identity
          (multiply right left)
  automorphismInvariant :
    ∀ groupElement element,
      matrixFiberCanonicalTrace rank law identity
          (automorphism groupElement element) =
        matrixFiberCanonicalTrace rank law identity element
  proofRef : SpectralId

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Trace/Variantb6da1680039dec0fb9680f95665a853d0b9c46a4f926802c667129eb2849b9bd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Trace/Variantb6da1680039dec0fb9680f95665a853d0b9c46a4f926802c667129eb2849b9bd.lean#L207).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `401680119d81614c8f84b421ce29607304d29ba9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
