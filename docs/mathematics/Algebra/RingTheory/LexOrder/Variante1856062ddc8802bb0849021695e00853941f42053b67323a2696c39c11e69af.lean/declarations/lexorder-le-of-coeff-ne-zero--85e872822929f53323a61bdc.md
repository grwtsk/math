# lexOrder_le_of_coeff_ne_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fecb1bf9-5474-a681-5b5e-0d64c1ea2aef",
  "kind": "theorem",
  "lexical_name": "lexOrder_le_of_coeff_ne_zero",
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
  "slug": "lexorder-le-of-coeff-ne-zero--85e872822929f53323a61bdc",
  "source": {
    "blob": "596e2c44b9e3aa8d5477f9cc5c048af97ada8da5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 103,
    "line": 98,
    "path": "GRWTSK/Algebra/RingTheory/LexOrder/Variante1856062ddc8802bb0849021695e00853941f42053b67323a2696c39c11e69af.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:85e872822929f53323a61bdcf05a5300b722eb825111b7d675338f73b74a8fca",
  "verification": {
    "reference": "docs/verification/Algebra/RingTheory/LexOrder/Variante1856062ddc8802bb0849021695e00853941f42053b67323a2696c39c11e69af.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fecb1bf9-5474-a681-5b5e-0d64c1ea2aef`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 98–103.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lexOrder_le_of_coeff_ne_zero {φ : MvPowerSeries σ R} {d : σ →₀ ℕ}
    (h : coeff R d φ ≠ 0) : lexOrder φ ≤ toLex d := by
  rw [← not_lt]
  intro h'
  exact h (coeff_eq_zero_of_lt_lexOrder h')

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/RingTheory/LexOrder/Variante1856062ddc8802bb0849021695e00853941f42053b67323a2696c39c11e69af.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/RingTheory/LexOrder/Variante1856062ddc8802bb0849021695e00853941f42053b67323a2696c39c11e69af.lean#L98).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `596e2c44b9e3aa8d5477f9cc5c048af97ada8da5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
