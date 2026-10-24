# le_logGammaSeq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f869d53e-0c13-0d93-b99e-de8e1fe574d5",
  "kind": "theorem",
  "lexical_name": "le_logGammaSeq",
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
  "slug": "le-loggammaseq--b7f0322b7dca9028c60452f3",
  "source": {
    "blob": "94400ea0c85b30a04ce15d85786d3cf2523cd725",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 219,
    "line": 212,
    "path": "GRWTSK/Analysis/SpecialFunctions/BohrMollerup/Variantc1acf46e23f522673b34054e746df15ef9b693f5530af7bb34a7e6e1b96eed7f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b7f0322b7dca9028c60452f32997cc60cc13a0190ffbc70ec424bfa5a35d6c94",
  "verification": {
    "reference": "docs/verification/Analysis/SpecialFunctions/BohrMollerup/Variantc1acf46e23f522673b34054e746df15ef9b693f5530af7bb34a7e6e1b96eed7f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f869d53e-0c13-0d93-b99e-de8e1fe574d5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 212–219.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem le_logGammaSeq (hf_conv : ConvexOn ℝ (Ioi 0) f)
    (hf_feq : ∀ {y : ℝ}, 0 < y → f (y + 1) = f y + log y) (hx : 0 < x) (hx' : x ≤ 1) (n : ℕ) :
    f x ≤ f 1 + x * log (n + 1) - x * log n + logGammaSeq x n := by
  rw [logGammaSeq, ← add_sub_assoc, le_sub_iff_add_le, ← f_add_nat_eq (@hf_feq) hx, add_comm x]
  refine (f_add_nat_le hf_conv (@hf_feq) (Nat.add_one_ne_zero n) hx hx').trans (le_of_eq ?_)
  rw [f_nat_eq @hf_feq (by omega : n + 1 ≠ 0), Nat.add_sub_cancel, Nat.cast_add_one]
  ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/SpecialFunctions/BohrMollerup/Variantc1acf46e23f522673b34054e746df15ef9b693f5530af7bb34a7e6e1b96eed7f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/SpecialFunctions/BohrMollerup/Variantc1acf46e23f522673b34054e746df15ef9b693f5530af7bb34a7e6e1b96eed7f.lean#L212).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `94400ea0c85b30a04ce15d85786d3cf2523cd725` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
