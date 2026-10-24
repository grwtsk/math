# a_soln_is_unique

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "93100e44f9fba70e86180de79bca45d6e90b826b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 460,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/0d/0dff6f8f647bb459a042ee45c0b0ae0e124c92808dce8b74375b580f40c2ee13.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:03f1af9b-b5d3-9fb1-9bd0-343172fa43e5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b1823548-2e6e-6039-1f6d-908eede777e6",
  "kind": "theorem",
  "lexical_name": "a_soln_is_unique",
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
  "slug": "a-soln-is-unique--a1afdb113b4c9ed35630b470",
  "source": {
    "blob": "93100e44f9fba70e86180de79bca45d6e90b826b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 485,
    "line": 460,
    "path": "GRWTSK/Topology/MetricTopology/Hensel/Variant0dff6f8f647bb459a042ee45c0b0ae0e124c92808dce8b74375b580f40c2ee13.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a1afdb113b4c9ed35630b4704ef25d66d2b00f2de76cd20b5e69014f536d8149",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Hensel/Variant0dff6f8f647bb459a042ee45c0b0ae0e124c92808dce8b74375b580f40c2ee13.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b1823548-2e6e-6039-1f6d-908eede777e6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 460–485.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem a_soln_is_unique (ha : F.eval a = 0) (z' : ℤ_[p]) (hz' : F.eval z' = 0)
    (hnormz' : ‖z' - a‖ < ‖F.derivative.eval a‖) : z' = a :=
  let h := z' - a
  let ⟨q, hq⟩ := F.binomExpansion a h
  have : (F.derivative.eval a + q * h) * h = 0 :=
    Eq.symm
      (calc
        0 = F.eval (a + h) := show 0 = F.eval (a + (z' - a)) by rw [add_comm]; simp [hz']
        _ = F.derivative.eval a * h + q * h ^ 2 := by rw [hq, ha, zero_add]
        _ = (F.derivative.eval a + q * h) * h := by rw [sq, right_distrib, mul_assoc]
        )
  have : h = 0 :=
    by_contra fun hne =>
      have : F.derivative.eval a + q * h = 0 :=
        (eq_zero_or_eq_zero_of_mul_eq_zero this).resolve_right hne
      have : F.derivative.eval a = -q * h := by simpa using eq_neg_of_add_eq_zero_left this
      lt_irrefl ‖F.derivative.eval a‖
        (calc
          ‖F.derivative.eval a‖ = ‖q‖ * ‖h‖ := by simp [this]
          _ ≤ 1 * ‖h‖ := by gcongr; apply PadicInt.norm_le_one
          _ < ‖F.derivative.eval a‖ := by simpa
          )
  eq_of_sub_eq_zero (by rw [← this])

variable (hnorm : ‖F.eval a‖ < ‖F.derivative.eval a‖ ^ 2)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Hensel/Variant0dff6f8f647bb459a042ee45c0b0ae0e124c92808dce8b74375b580f40c2ee13.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Hensel/Variant0dff6f8f647bb459a042ee45c0b0ae0e124c92808dce8b74375b580f40c2ee13.lean#L460).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `93100e44f9fba70e86180de79bca45d6e90b826b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
