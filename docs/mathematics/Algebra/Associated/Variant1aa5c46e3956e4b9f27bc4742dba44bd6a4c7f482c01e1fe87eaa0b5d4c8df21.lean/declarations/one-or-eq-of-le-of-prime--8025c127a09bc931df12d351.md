# one_or_eq_of_le_of_prime

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9e1dbf4f-1f34-c609-f9ec-f99e04903720",
  "kind": "theorem",
  "lexical_name": "one_or_eq_of_le_of_prime",
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
  "slug": "one-or-eq-of-le-of-prime--8025c127a09bc931df12d351",
  "source": {
    "blob": "75f63d9ac428c65c2001996144e24142f0ac085f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1141,
    "line": 1115,
    "path": "GRWTSK/Algebra/Associated/Variant1aa5c46e3956e4b9f27bc4742dba44bd6a4c7f482c01e1fe87eaa0b5d4c8df21.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8025c127a09bc931df12d351d2339f1b46d41bad1f5ac4adf31dce8aa72c050a",
  "verification": {
    "reference": "docs/verification/Algebra/Associated/Variant1aa5c46e3956e4b9f27bc4742dba44bd6a4c7f482c01e1fe87eaa0b5d4c8df21.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9e1dbf4f-1f34-c609-f9ec-f99e04903720`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1115–1141.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem one_or_eq_of_le_of_prime : ∀ p m : Associates α, Prime p → m ≤ p → m = 1 ∨ m = p
  | p, m, ⟨hp0, _, h⟩, ⟨d, r⟩ => by
    have dvd_rfl' : p ∣ m * d := by rw[r]
    rw [r]
    match h m d dvd_rfl' with
    | Or.inl h' =>
      by_cases h : m = 0
      case pos =>
        simp [h, zero_mul]
      case neg =>
        rw [r] at h'
        have : m * d ≤ m * 1 := by simpa using h'
        have : d ≤ 1 := Associates.le_of_mul_le_mul_left m d 1 ‹m ≠ 0› this
        have : d = 1 := bot_unique this
        simp [this]
    | Or.inr h' =>
        by_cases h : d = 0
        case pos =>
          rw [r] at hp0
          have : m * d = 0 := by rw [h]; simp
          contradiction
        case neg =>
          rw [r] at h'
          have : d * m ≤ d * 1 := by simpa [mul_comm] using h'
          exact Or.inl <| bot_unique <| Associates.le_of_mul_le_mul_left d m 1 ‹d ≠ 0› this
#align associates.one_or_eq_of_le_of_prime Associates.one_or_eq_of_le_of_prime

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Associated/Variant1aa5c46e3956e4b9f27bc4742dba44bd6a4c7f482c01e1fe87eaa0b5d4c8df21.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Associated/Variant1aa5c46e3956e4b9f27bc4742dba44bd6a4c7f482c01e1fe87eaa0b5d4c8df21.lean#L1115).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `75f63d9ac428c65c2001996144e24142f0ac085f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
