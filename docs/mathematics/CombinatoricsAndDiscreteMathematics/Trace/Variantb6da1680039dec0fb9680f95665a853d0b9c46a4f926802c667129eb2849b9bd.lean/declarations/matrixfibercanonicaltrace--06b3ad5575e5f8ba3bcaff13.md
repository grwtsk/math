# matrixFiberCanonicalTrace

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e224301191981d85d1dbef132ff636518b23b21b21fc67cd357168dd8d5b00fa",
  "kind": "def",
  "lexical_name": "matrixFiberCanonicalTrace",
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
  "slug": "matrixfibercanonicaltrace--06b3ad5575e5f8ba3bcaff13",
  "source": {
    "blob": "401680119d81614c8f84b421ce29607304d29ba9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 131,
    "line": 119,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Trace/Variantb6da1680039dec0fb9680f95665a853d0b9c46a4f926802c667129eb2849b9bd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:06b3ad5575e5f8ba3bcaff13a519363019b3e16904606e4e1587a02f6d3ba063",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Trace/Variantb6da1680039dec0fb9680f95665a853d0b9c46a4f926802c667129eb2849b9bd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e224301191981d85d1dbef132ff636518b23b21b21fc67cd357168dd8d5b00fa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 119–131.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def matrixFiberCanonicalTrace
    {State Group : Type}
    [Fintype State] [Fintype Group]
    (rank : Nat)
    (law : FiniteLaw State)
    (identity : Group)
    (element :
      MatrixFiberCrossedProductElement State Group rank) : ℂ :=
  ∑ state,
    (law.mass state : ℂ) *
      normalizedMatrixTrace rank
        (element.coefficient identity state)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Trace/Variantb6da1680039dec0fb9680f95665a853d0b9c46a4f926802c667129eb2849b9bd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Trace/Variantb6da1680039dec0fb9680f95665a853d0b9c46a4f926802c667129eb2849b9bd.lean#L119).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `401680119d81614c8f84b421ce29607304d29ba9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
