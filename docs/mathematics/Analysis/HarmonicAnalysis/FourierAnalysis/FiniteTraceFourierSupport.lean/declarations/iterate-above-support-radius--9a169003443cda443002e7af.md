# iterate_above_support_radius

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1a55ac5c-42c9-4a9a-0b48-66b7ce962cc2",
  "kind": "theorem",
  "lexical_name": "iterate_above_support_radius",
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
  "slug": "iterate-above-support-radius--9a169003443cda443002e7af",
  "source": {
    "blob": "d5c485b8369274c85e67038702f0542fcaff6be3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 99,
    "line": 81,
    "path": "GRWTSK/Analysis/Fourier/FiniteTraceFourierSupport.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9a169003443cda443002e7afe5779f0685faaadc2feaaaae02a144206e21cef2",
  "verification": {
    "reference": "docs/verification/Analysis/HarmonicAnalysis/FourierAnalysis/FiniteTraceFourierSupport.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1a55ac5c-42c9-4a9a-0b48-66b7ce962cc2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 81–99.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem iterate_above_support_radius
    (t : TraceShapedInput γ m)
    (c : FiniteFourierSupportCertificate t)
    (K n : ℕ) (hK : AdmissibleCutoff t c K)
    (hn : K < n) (a : γ) (ha : a ∈ t.primitiveCandidates) :
    c.radius < (n : ℝ) * t.length a := by
  have hCut : c.radius ≤ (K : ℝ) * c.lengthFloor := hK
  have hnReal : (K : ℝ) < (n : ℝ) := by exact_mod_cast hn
  have hnNonneg : (0 : ℝ) ≤ (n : ℝ) := by positivity
  have hStep :
      (K : ℝ) * c.lengthFloor < (n : ℝ) * c.lengthFloor :=
    mul_lt_mul_of_pos_right hnReal c.lengthFloor_pos
  have hFloor :
      (n : ℝ) * c.lengthFloor ≤ (n : ℝ) * t.length a :=
    mul_le_mul_of_nonneg_left (c.floor_le a ha) hnNonneg
  exact (lt_of_le_of_lt hCut hStep).trans_le hFloor

/-- Every excluded high iterate has a vanishing *actual supplied* Fourier
test value. No statement about unlisted primitive candidate IDs follows. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/HarmonicAnalysis/FourierAnalysis/FiniteTraceFourierSupport.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Fourier/FiniteTraceFourierSupport.lean#L81).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d5c485b8369274c85e67038702f0542fcaff6be3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
