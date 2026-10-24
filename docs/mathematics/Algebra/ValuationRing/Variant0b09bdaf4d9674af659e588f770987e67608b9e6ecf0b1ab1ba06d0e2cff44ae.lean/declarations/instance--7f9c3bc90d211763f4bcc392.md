# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d3dcc62a63e008bec4275514cf730b6a619ee53f32ea11c1e4f6b32b635d655b",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--7f9c3bc90d211763f4bcc392",
  "source": {
    "blob": "9e8ece665efaf8d2d37fa86e246c44a78e60a49b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 408,
    "line": 392,
    "path": "GRWTSK/Algebra/ValuationRing/Variant0b09bdaf4d9674af659e588f770987e67608b9e6ecf0b1ab1ba06d0e2cff44ae.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7f9c3bc90d211763f4bcc392dcb19bb4af7214815fd59c7004b01127b83cdd0f",
  "verification": {
    "reference": "docs/verification/Algebra/ValuationRing/Variant0b09bdaf4d9674af659e588f770987e67608b9e6ecf0b1ab1ba06d0e2cff44ae.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d3dcc62a63e008bec4275514cf730b6a619ee53f32ea11c1e4f6b32b635d655b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 392–408.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance (priority := 100) [IsLocalRing R] [IsBezout R] : ValuationRing R := by
  classical
  refine iff_dvd_total.mpr ⟨fun a b => ?_⟩
  obtain ⟨g, e : _ = Ideal.span _⟩ := IsBezout.span_pair_isPrincipal a b
  obtain ⟨a, rfl⟩ := Ideal.mem_span_singleton'.mp
      (show a ∈ Ideal.span {g} by rw [← e]; exact Ideal.subset_span (by simp))
  obtain ⟨b, rfl⟩ := Ideal.mem_span_singleton'.mp
      (show b ∈ Ideal.span {g} by rw [← e]; exact Ideal.subset_span (by simp))
  obtain ⟨x, y, e'⟩ := Ideal.mem_span_pair.mp
      (show g ∈ Ideal.span {a * g, b * g} by rw [e]; exact Ideal.subset_span (by simp))
  rcases eq_or_ne g 0 with h | h
  · simp [h]
  have : x * a + y * b = 1 := by
    apply mul_left_injective₀ h; convert e' using 1 <;> ring
  rcases IsLocalRing.isUnit_or_isUnit_of_add_one this with h' | h' <;> [left; right]
  all_goals exact mul_dvd_mul_right (isUnit_iff_forall_dvd.mp (isUnit_of_mul_isUnit_right h') _) _

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/ValuationRing/Variant0b09bdaf4d9674af659e588f770987e67608b9e6ecf0b1ab1ba06d0e2cff44ae.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/ValuationRing/Variant0b09bdaf4d9674af659e588f770987e67608b9e6ecf0b1ab1ba06d0e2cff44ae.lean#L392).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9e8ece665efaf8d2d37fa86e246c44a78e60a49b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
