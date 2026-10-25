# UniqueProds

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b3d7226f23f88ac3ee3f09e65c109196d7c024963eef183a9147fe0693c81463",
  "kind": "class",
  "lexical_name": "UniqueProds",
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
  "slug": "uniqueprods--6f3c0653710314e94d62bcc7",
  "source": {
    "blob": "7f1c178292fea844f8c1f47dddd63a29de85728e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 193,
    "line": 183,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/UniqueProds/Variantbb7cd2fa78ec70687be9378651419fe2ad50017d6bf637e47a84891a6e8430a3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6f3c0653710314e94d62bcc7c9a3787ad09be0153c98fd6870a073d5631dc236",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/UniqueProds/Variantbb7cd2fa78ec70687be9378651419fe2ad50017d6bf637e47a84891a6e8430a3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b3d7226f23f88ac3ee3f09e65c109196d7c024963eef183a9147fe0693c81463`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 183–193.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class UniqueProds (G) [Mul G] : Prop where
/-- For `A B` two nonempty finite sets, there always exist `a0 ∈ A, b0 ∈ B` such that
`UniqueMul A B a0 b0` -/
  uniqueMul_of_nonempty :
    ∀ {A B : Finset G} (_ : A.Nonempty) (_ : B.Nonempty), ∃ a0 ∈ A, ∃ b0 ∈ B, UniqueMul A B a0 b0
#align unique_prods UniqueProds

attribute [to_additive] UniqueProds

namespace Multiplicative

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/UniqueProds/Variantbb7cd2fa78ec70687be9378651419fe2ad50017d6bf637e47a84891a6e8430a3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/UniqueProds/Variantbb7cd2fa78ec70687be9378651419fe2ad50017d6bf637e47a84891a6e8430a3.lean#L183).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7f1c178292fea844f8c1f47dddd63a29de85728e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
