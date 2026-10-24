# imo2020_q2

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3339097a-d962-46fc-2f4c-ede50cd78989",
  "kind": "theorem",
  "lexical_name": "imo2020_q2",
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
  "slug": "imo2020-q2--46c10ded4b3cedc1a02ed0af",
  "source": {
    "blob": "a27f612ce927a4cd0e8d2eff855fc5518effdbc9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 43,
    "line": 25,
    "path": "GRWTSK/Analysis/Imo2020Q2/Variant7d551f0ad3a2fc812ebfdb97f4656b851de429cd58f876ed8d3b245515d72345.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:46c10ded4b3cedc1a02ed0afcc4f419eaa5c162c90fff7db9a471266929dbc76",
  "verification": {
    "reference": "docs/verification/Analysis/Imo2020Q2/Variant7d551f0ad3a2fc812ebfdb97f4656b851de429cd58f876ed8d3b245515d72345.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3339097a-d962-46fc-2f4c-ede50cd78989`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 25–43.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public theorem imo2020_q2 (a b c d : ℝ) (hd0 : 0 < d) (hdc : d ≤ c) (hcb : c ≤ b) (hba : b ≤ a)
    (h1 : a + b + c + d = 1) : (a + 2 * b + 3 * c + 4 * d) * a ^ a * b ^ b * c ^ c * d ^ d < 1 := by
  have hp : a ^ a * b ^ b * c ^ c * d ^ d ≤ a * a + b * b + c * c + d * d := by
    refine geom_mean_le_arith_mean4_weighted ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ h1 <;> linarith
  calc
    (a + 2 * b + 3 * c + 4 * d) * a ^ a * b ^ b * c ^ c * d ^ d =
        (a + 2 * b + 3 * c + 4 * d) * (a ^ a * b ^ b * c ^ c * d ^ d) := by ac_rfl
    _ ≤ (a + 2 * b + 3 * c + 4 * d) * (a * a + b * b + c * c + d * d) := by gcongr; linarith
    _ = (a + 2 * b + 3 * c + 4 * d) * a ^ 2 + (a + 2 * b + 3 * c + 4 * d) * b ^ 2
        + (a + 2 * b + 3 * c + 4 * d) * c ^ 2 + (a + 2 * b + 3 * c + 4 * d) * d ^ 2 := by ring
    _ ≤ (a + 3 * b + 3 * c + 3 * d) * a ^ 2 + (3 * a + b + 3 * c + 3 * d) * b ^ 2
        + (3 * a + 3 * b + c + 3 * d) * c ^ 2 + (3 * a + 3 * b + 3 * c + d) * d ^ 2 := by
        gcongr ?_ * _ + ?_ * _ + ?_ * _ + ?_ * _ <;> linarith
    _ < (a + 3 * b + 3 * c + 3 * d) * a ^ 2 + (3 * a + b + 3 * c + 3 * d) * b ^ 2
        + (3 * a + 3 * b + c + 3 * d) * c ^ 2 + (3 * a + 3 * b + 3 * c + d) * d ^ 2
        + (6 * a * b * c + 6 * a * b * d + 6 * a * c * d + 6 * b * c * d) :=
        (lt_add_of_pos_right _ (by apply_rules [add_pos, mul_pos, zero_lt_one] <;> linarith))
    _ = (a + b + c + d) ^ 3 := by ring
    _ = 1 := by simp [h1]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/Imo2020Q2/Variant7d551f0ad3a2fc812ebfdb97f4656b851de429cd58f876ed8d3b245515d72345.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Imo2020Q2/Variant7d551f0ad3a2fc812ebfdb97f4656b851de429cd58f876ed8d3b245515d72345.lean#L25).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a27f612ce927a4cd0e8d2eff855fc5518effdbc9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
