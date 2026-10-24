# physical_divisor_balance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a1397481-ee83-a620-4598-268e4ecfaf06",
  "kind": "theorem",
  "lexical_name": "physical_divisor_balance",
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
  "slug": "physical-divisor-balance--f80c8069b57a77650ff36cde",
  "source": {
    "blob": "ccfaace64168f8150d62e5e9ea7a243bbb5a3a81",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 126,
    "line": 116,
    "path": "GRWTSK/Algebra/SourceKapitzaPhysicalMatching/Variante01403d51f4313236be832bf0aa3d3fc16b6313deac6ae7b34046ec5ec5eef23.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f80c8069b57a77650ff36cde9e946adfbbecb397b3216941ed78a172168e3f74",
  "verification": {
    "reference": "docs/verification/Algebra/SourceKapitzaPhysicalMatching/Variante01403d51f4313236be832bf0aa3d3fc16b6313deac6ae7b34046ec5ec5eef23.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a1397481-ee83-a620-4598-268e4ecfaf06`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 116–126.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem physical_divisor_balance (A : ℝ) (hA : 1 ≤ A) :
    physicalJ A = compensatedSourceSum A + physicalResidual A := by
  have hb := SourceKapitzaFiniteFilter.finite_divisor_balance (physicalWeight A)
    ⌊Real.exp (2 * A)⌋₊ (physical_cutoff_ge_two A hA)
    (fun _ hn => physicalWeight_zero_above A hn)
  rw [← physicalResidual_eq_finiteResidual A] at hb
  have hz : SourceKapitzaFiniteFilter.finiteZ (physicalWeight A)
      ⌊Real.exp (2 * A)⌋₊ = compensatedSourceSum A := physical_compensated_eq A
  rw [hz] at hb
  exact hb

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/SourceKapitzaPhysicalMatching/Variante01403d51f4313236be832bf0aa3d3fc16b6313deac6ae7b34046ec5ec5eef23.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/SourceKapitzaPhysicalMatching/Variante01403d51f4313236be832bf0aa3d3fc16b6313deac6ae7b34046ec5ec5eef23.lean#L116).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ccfaace64168f8150d62e5e9ea7a243bbb5a3a81` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
