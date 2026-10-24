# orbitAtom_inner_original_dual

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:949487be-c3e1-6cbc-cd2e-3de116336a36",
  "kind": "theorem",
  "lexical_name": "orbitAtom_inner_original_dual",
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
  "slug": "orbitatom-inner-original-dual--a33d3b63fdbefac45c1a2e7e",
  "source": {
    "blob": "d36d250bcb707fa262f039219650a783757427cc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 317,
    "line": 313,
    "path": "GRWTSK/Algebra/LinearAlgebra/SourceArithmeticOrbit/Variantb34b4a8e350a5bd0d5274cd4c39626903579b8c5776453dbbfc23fed945213d8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a33d3b63fdbefac45c1a2e7e71514060caef54bebbee5e5e2c1dcc480e58c029",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/SourceArithmeticOrbit/Variantb34b4a8e350a5bd0d5274cd4c39626903579b8c5776453dbbfc23fed945213d8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:949487be-c3e1-6cbc-cd2e-3de116336a36`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 313–317.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem orbitAtom_inner_original_dual (q : ComplexL2) (ε η : Bool) (m n : ℕ) :
    ⟪orbitAtom q ε false m, orbitAtom q η true n⟫_ℂ =
      mixedKernel q (signedLog ε m) (signedLog η n) := rfl

/-- Actual self-adjoint involution makes the dual/original block the same mixed coefficient. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/SourceArithmeticOrbit/Variantb34b4a8e350a5bd0d5274cd4c39626903579b8c5776453dbbfc23fed945213d8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/SourceArithmeticOrbit/Variantb34b4a8e350a5bd0d5274cd4c39626903579b8c5776453dbbfc23fed945213d8.lean#L313).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d36d250bcb707fa262f039219650a783757427cc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
