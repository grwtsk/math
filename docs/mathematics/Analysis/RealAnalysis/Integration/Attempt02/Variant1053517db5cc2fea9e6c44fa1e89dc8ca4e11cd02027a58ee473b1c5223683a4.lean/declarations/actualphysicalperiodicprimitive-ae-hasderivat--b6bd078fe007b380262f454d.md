# actualPhysicalPeriodicPrimitive_ae_hasDerivAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:acbd40fd-fedb-691f-75f6-7c5ea9239b1d",
  "kind": "theorem",
  "lexical_name": "actualPhysicalPeriodicPrimitive_ae_hasDerivAt",
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
  "slug": "actualphysicalperiodicprimitive-ae-hasderivat--b6bd078fe007b380262f454d",
  "source": {
    "blob": "ee7a644729ad274ba37f2256f517b541cfbf116e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 242,
    "line": 230,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Attempt02/Variant1053517db5cc2fea9e6c44fa1e89dc8ca4e11cd02027a58ee473b1c5223683a4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b6bd078fe007b380262f454d3e7c6d3b507a5869f07ac0880f2b1a06e53530c3",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Attempt02/Variant1053517db5cc2fea9e6c44fa1e89dc8ca4e11cd02027a58ee473b1c5223683a4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:acbd40fd-fedb-691f-75f6-7c5ea9239b1d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 230–242.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualPhysicalPeriodicPrimitive_ae_hasDerivAt (U : ℕ) {l b : ℝ}
    (hl : 0 ≤ l) (hlb : l ≤ b) :
    ∀ᵐ x, x ∈ uIcc l b →
      HasDerivAt (actualPhysicalPeriodicPrimitive U) (actualPhysicalPeriodicDensity U x) x := by
  have hi := actualPhysicalPeriodicDensity_intervalIntegrable U 0 b
  filter_upwards [hi.ae_hasDerivAt_integral] with x hx hm
  have hx0b : x ∈ uIcc (0 : ℝ) b := by
    rw [uIcc_of_le hlb] at hm
    rw [uIcc_of_le (hl.trans hlb)]
    exact ⟨hl.trans hm.1, hm.2⟩
  exact hx hx0b 0 (by simp)

/-- Genuine physical Abel retains the actual mean and both primitive boundary traces. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Attempt02/Variant1053517db5cc2fea9e6c44fa1e89dc8ca4e11cd02027a58ee473b1c5223683a4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Attempt02/Variant1053517db5cc2fea9e6c44fa1e89dc8ca4e11cd02027a58ee473b1c5223683a4.lean#L230).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ee7a644729ad274ba37f2256f517b541cfbf116e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
