# pow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a7d7ec39d010de67ca8e5dc5d5c3072a52a90b6a5229624d6b05d5630ebb3d61",
  "kind": "def",
  "lexical_name": "pow",
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
  "slug": "pow--b5116ef8ddfdd655cd149ca6",
  "source": {
    "blob": "0a4de3f5a215f3b37c591eaa95f1834bb2650d24",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 231,
    "line": 220,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Nonlinear/Variantd722b0651cf6c483fb71572e5b9c16af37b6ac653561f9766f03ee9b9f9aceca.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b5116ef8ddfdd655cd149ca6dca46a561872b8447f6c05f08988febb122ec3f0",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Nonlinear/Variantd722b0651cf6c483fb71572e5b9c16af37b6ac653561f9766f03ee9b9f9aceca.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a7d7ec39d010de67ca8e5dc5d5c3072a52a90b6a5229624d6b05d5630ebb3d61`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 220–231.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def pow (a : AffineForm) : Nat → AffineForm
  | 0 => const 1
  | 1 => a
  | n + 2 =>
    let half := pow a ((n + 2) / 2)
    let sq_half := mul half half
    if (n + 2) % 2 == 0 then sq_half
    else mul sq_half a

/-! ## Soundness (Placeholder) -/

/-- Inversion is sound when interval is positive -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Nonlinear/Variantd722b0651cf6c483fb71572e5b9c16af37b6ac653561f9766f03ee9b9f9aceca.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Nonlinear/Variantd722b0651cf6c483fb71572e5b9c16af37b6ac653561f9766f03ee9b9f9aceca.lean#L220).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0a4de3f5a215f3b37c591eaa95f1834bb2650d24` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
