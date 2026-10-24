# unitary_psd_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:674d2105-fd84-5424-925c-61457fc2e8a9",
  "kind": "theorem",
  "lexical_name": "unitary_psd_iff",
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
  "slug": "unitary-psd-iff--ab3ae385c078cad09326594d",
  "source": {
    "blob": "78cb21db6d764dd2526d622b381d535460eda083",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 51,
    "line": 47,
    "path": "GRWTSK/Algebra/LinearAlgebra/CongruenceGuardAttempt05/Variantb94c00b8620bbe6a70207466ca4324a0cac72bdfb8aa74310c8087682afcc71b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ab3ae385c078cad09326594de028ef53ebccba20edf861b7ba8ecd7a55ab9061",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/CongruenceGuardAttempt05/Variantb94c00b8620bbe6a70207466ca4324a0cac72bdfb8aa74310c8087682afcc71b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:674d2105-fd84-5424-925c-61457fc2e8a9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 47–51.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem unitary_psd_iff (A : Matrix n n 𝕜) (U : Matrix.unitaryGroup n 𝕜) :
    (pullback A U).PosSemidef ↔ A.PosSemidef :=
  invertible_psd_iff A (Unitary.toUnits U)

/-- The inverse image of the original negative vector is the literal new witness. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/CongruenceGuardAttempt05/Variantb94c00b8620bbe6a70207466ca4324a0cac72bdfb8aa74310c8087682afcc71b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/CongruenceGuardAttempt05/Variantb94c00b8620bbe6a70207466ca4324a0cac72bdfb8aa74310c8087682afcc71b.lean#L47).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `78cb21db6d764dd2526d622b381d535460eda083` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
