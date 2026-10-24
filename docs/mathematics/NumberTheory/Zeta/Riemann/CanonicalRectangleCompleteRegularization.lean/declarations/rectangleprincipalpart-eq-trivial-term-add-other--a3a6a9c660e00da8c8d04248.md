# rectanglePrincipalPart_eq_trivial_term_add_other

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:68d9c11a-0975-dc69-958d-c6bdb088b7ea",
  "kind": "theorem",
  "lexical_name": "rectanglePrincipalPart_eq_trivial_term_add_other",
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
  "slug": "rectangleprincipalpart-eq-trivial-term-add-other--a3a6a9c660e00da8c8d04248",
  "source": {
    "blob": "7bf0a4821d237afe3e26ecf300750de354860ff4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 105,
    "line": 94,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CanonicalRectangleCompleteRegularization.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a3a6a9c660e00da8c8d0424857f1f8e910e0a4b1fb3d84a60063404defdc06fb",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CanonicalRectangleCompleteRegularization.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:68d9c11a-0975-dc69-958d-c6bdb088b7ea`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 94–105.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem rectanglePrincipalPart_eq_trivial_term_add_other
    (N k : ℕ) (member : k ∈ Finset.range N) (s : ℂ) :
    rectanglePrincipalPart N s =
      1 / (s - trivialPoint k) + trivialOtherPrincipalPart N k s := by
  classical
  unfold rectanglePrincipalPart trivialPrincipalPart trivialOtherPrincipalPart
  rw [← Finset.sum_erase_add (Finset.range N)
    (fun j : ℕ => (s - trivialPoint j)⁻¹) member]
  simp only [one_div]
  ring

/-- Separating the pole term from the complete finite principal part. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CanonicalRectangleCompleteRegularization.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CanonicalRectangleCompleteRegularization.lean#L94).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7bf0a4821d237afe3e26ecf300750de354860ff4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
