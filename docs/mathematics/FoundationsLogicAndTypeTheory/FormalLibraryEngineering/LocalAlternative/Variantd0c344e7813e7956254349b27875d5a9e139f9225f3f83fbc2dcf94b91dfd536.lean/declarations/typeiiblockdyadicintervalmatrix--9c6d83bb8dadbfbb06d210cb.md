# typeIIBlockDyadicIntervalMatrix

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4556a10cf6fa3b7c369f7e6a77569971cd3424dc0f234e4a6256f63a885060ee",
  "kind": "def",
  "lexical_name": "typeIIBlockDyadicIntervalMatrix",
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
  "slug": "typeiiblockdyadicintervalmatrix--9c6d83bb8dadbfbb06d210cb",
  "source": {
    "blob": "1be9d2cb9ab1df7379a2fdb4cde3d9d454aeb348",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 46,
    "line": 40,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LocalAlternative/Variantd0c344e7813e7956254349b27875d5a9e139f9225f3f83fbc2dcf94b91dfd536.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9c6d83bb8dadbfbb06d210cb1844f5d38d1cc418fde30845b29e13559d93339e",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LocalAlternative/Variantd0c344e7813e7956254349b27875d5a9e139f9225f3f83fbc2dcf94b91dfd536.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4556a10cf6fa3b7c369f7e6a77569971cd3424dc0f234e4a6256f63a885060ee`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 40–46.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def typeIIBlockDyadicIntervalMatrix {N : ℕ} (B : TypeIIDyadicBlock N)
    (interval : TypeIIDyadicInterval N) : Matrix B.Left B.Right ℂ :=
  productDyadicIntervalMatrix (fun left : B.Left ↦ left.1.1)
    (fun right : B.Right ↦ right.1.1) interval

/-- Diffuse--diffuse part of the fixed arithmetic interval pairing. -/
@[expose]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LocalAlternative/Variantd0c344e7813e7956254349b27875d5a9e139f9225f3f83fbc2dcf94b91dfd536.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LocalAlternative/Variantd0c344e7813e7956254349b27875d5a9e139f9225f3f83fbc2dcf94b91dfd536.lean#L40).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1be9d2cb9ab1df7379a2fdb4cde3d9d454aeb348` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
