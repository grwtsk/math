# orbitAtom_inner_dual_original

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c2b01b6d-a35b-f11c-cdc2-8c55ac4f1c7c",
  "kind": "theorem",
  "lexical_name": "orbitAtom_inner_dual_original",
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
  "slug": "orbitatom-inner-dual-original--8da107988523d9436f9f442f",
  "source": {
    "blob": "d36d250bcb707fa262f039219650a783757427cc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 326,
    "line": 318,
    "path": "GRWTSK/Algebra/LinearAlgebra/SourceArithmeticOrbit/Variantb34b4a8e350a5bd0d5274cd4c39626903579b8c5776453dbbfc23fed945213d8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8da107988523d9436f9f442f742dcbc65ec34f4ceee040f3175ebb4f0015eb5c",
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

Occurrence: `result:c2b01b6d-a35b-f11c-cdc2-8c55ac4f1c7c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 318–326.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem orbitAtom_inner_dual_original (q : ComplexL2) (ε η : Bool) (m n : ℕ) :
    ⟪orbitAtom q ε true m, orbitAtom q η false n⟫_ℂ =
      mixedKernel q (signedLog ε m) (signedLog η n) := by
  have h := angularSignDuality.inner_map_map
    (translation (signedLog ε m) q) (angularSignDuality (translation (signedLog η n) q))
  rw [angular_duality_involutive] at h
  exact h

/-- Orthogonality is justified at equal shifts; unequal mixed Gram entries remain unrestricted. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/SourceArithmeticOrbit/Variantb34b4a8e350a5bd0d5274cd4c39626903579b8c5776453dbbfc23fed945213d8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/SourceArithmeticOrbit/Variantb34b4a8e350a5bd0d5274cd4c39626903579b8c5776453dbbfc23fed945213d8.lean#L318).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d36d250bcb707fa262f039219650a783757427cc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
