# div_eq_iff_eq_mul_of_dvd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:450f0535-8984-f8cb-93f7-aeaecd5fb08f",
  "kind": "theorem",
  "lexical_name": "div_eq_iff_eq_mul_of_dvd",
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
  "slug": "div-eq-iff-eq-mul-of-dvd--e54bdeb2f598386fcc1ca905",
  "source": {
    "blob": "3564649e4054ad4611df984217ad72b18a3de570",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 396,
    "line": 391,
    "path": "GRWTSK/Algebra/Basic/Variant90593bcc10d9fd39eed205f8b77108ac91362a539d91eb8b8b632fbbbf4cc5ac.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e54bdeb2f598386fcc1ca9057b0f5a7e3b91c1008eb1727cd79d096f74195066",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variant90593bcc10d9fd39eed205f8b77108ac91362a539d91eb8b8b632fbbbf4cc5ac.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:450f0535-8984-f8cb-93f7-aeaecd5fb08f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 391–396.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem div_eq_iff_eq_mul_of_dvd (x y z : R) (h1 : y ≠ 0) (h2 : y ∣ x) :
    x / y = z ↔ x = y * z := by
  obtain ⟨a, ha⟩ := h2
  rw [ha, mul_div_cancel_left₀ _ h1]
  simp only [mul_eq_mul_left_iff, mul_eq_zero, h1, or_self, or_false]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variant90593bcc10d9fd39eed205f8b77108ac91362a539d91eb8b8b632fbbbf4cc5ac.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variant90593bcc10d9fd39eed205f8b77108ac91362a539d91eb8b8b632fbbbf4cc5ac.lean#L391).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3564649e4054ad4611df984217ad72b18a3de570` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
