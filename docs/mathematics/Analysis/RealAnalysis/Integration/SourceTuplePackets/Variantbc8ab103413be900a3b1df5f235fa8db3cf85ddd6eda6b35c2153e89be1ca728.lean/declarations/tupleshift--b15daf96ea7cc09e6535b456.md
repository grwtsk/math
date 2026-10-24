# tupleShift

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e3a0bf67d5f34d279b956171b86d86872ae354df927af21868a2e31d278337b9",
  "kind": "def",
  "lexical_name": "tupleShift",
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
  "slug": "tupleshift--b15daf96ea7cc09e6535b456",
  "source": {
    "blob": "047a3eed860fb4cb08795b5b83cc02dd83bf16e0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 76,
    "line": 72,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceTuplePackets/Variantbc8ab103413be900a3b1df5f235fa8db3cf85ddd6eda6b35c2153e89be1ca728.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b15daf96ea7cc09e6535b45616538c3072228cb63a59c58a8790f1fe7b567a0e",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceTuplePackets/Variantbc8ab103413be900a3b1df5f235fa8db3cf85ddd6eda6b35c2153e89be1ca728.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e3a0bf67d5f34d279b956171b86d86872ae354df927af21868a2e31d278337b9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 72–76.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def tupleShift {ι : Type u} (ell : ι → ℝ) : (j : ℕ) → SignTuple ι j → ℝ
  | 0, _ => 0
  | j + 1, p => signedShift (ell p.1) p.2.1 + tupleShift ell j p.2.2

/-- The exact `2^(-j)` weighted sum over all signed tuples. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceTuplePackets/Variantbc8ab103413be900a3b1df5f235fa8db3cf85ddd6eda6b35c2153e89be1ca728.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceTuplePackets/Variantbc8ab103413be900a3b1df5f235fa8db3cf85ddd6eda6b35c2153e89be1ca728.lean#L72).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `047a3eed860fb4cb08795b5b83cc02dd83bf16e0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
