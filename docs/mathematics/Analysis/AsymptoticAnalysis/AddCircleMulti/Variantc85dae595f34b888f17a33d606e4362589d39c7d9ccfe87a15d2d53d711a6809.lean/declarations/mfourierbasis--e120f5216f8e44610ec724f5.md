# mFourierBasis

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:797ec0f424680f32f12484961d4137cae2947c0a6656aea56f5d0271a68b1bf2",
  "kind": "def",
  "lexical_name": "mFourierBasis",
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
  "slug": "mfourierbasis--e120f5216f8e44610ec724f5",
  "source": {
    "blob": "06cdaf65acf696340d7f8c72eee642210e0f54db",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 201,
    "line": 196,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/AddCircleMulti/Variantc85dae595f34b888f17a33d606e4362589d39c7d9ccfe87a15d2d53d711a6809.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e120f5216f8e44610ec724f5a84c7b96c4a7afbb54c488a605eae70a78034c8f",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/AddCircleMulti/Variantc85dae595f34b888f17a33d606e4362589d39c7d9ccfe87a15d2d53d711a6809.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:797ec0f424680f32f12484961d4137cae2947c0a6656aea56f5d0271a68b1bf2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 196–201.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mFourierBasis : HilbertBasis (d → ℤ) ℂ L²(UnitAddTorus d) :=
  HilbertBasis.mk orthonormal_mFourier (span_mFourierLp_closure_eq_top (by norm_num)).ge

/-- The elements of the Hilbert basis `mFourierBasis` are the functions `mFourierLp 2`, i.e. the
monomials `mFourier n` on `UnitAddTorus d` considered as elements of `L²`. -/
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/AddCircleMulti/Variantc85dae595f34b888f17a33d606e4362589d39c7d9ccfe87a15d2d53d711a6809.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/AddCircleMulti/Variantc85dae595f34b888f17a33d606e4362589d39c7d9ccfe87a15d2d53d711a6809.lean#L196).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `06cdaf65acf696340d7f8c72eee642210e0f54db` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
