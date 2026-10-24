# CFC.inv_nonneg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f77581db-2814-5396-6ec1-5ee16e268ae5",
  "kind": "lemma",
  "lexical_name": "CFC.inv_nonneg",
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
  "slug": "cfc-inv-nonneg--d3fa65504a1f0d026746bd31",
  "source": {
    "blob": "c2c8424fa2e7b1917643fc95b1d3faf4aa1af414",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 987,
    "line": 975,
    "path": "GRWTSK/Topology/GeneralTopology/Unital/Variant9b8b022abb0b94d1eab1a7706e3fb541e07ec6843df8aeb122236e454219ba90.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d3fa65504a1f0d026746bd31a86c107663878c761c509ecd057ab1c63fcfc1e9",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Unital/Variant9b8b022abb0b94d1eab1a7706e3fb541e07ec6843df8aeb122236e454219ba90.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f77581db-2814-5396-6ec1-5ee16e268ae5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 975–987.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma CFC.inv_nonneg (a : Aˣ)  : (0 : A) ≤ a⁻¹ ↔ (0 : A) ≤ a :=
  ⟨fun _ ↦ inv_inv a ▸ inv_nonneg_of_nonneg a⁻¹, fun _ ↦ inv_nonneg_of_nonneg a⟩

end NNReal

section Ring

variable {R A : Type*} {p : A → Prop} [CommRing R] [PartialOrder R] [StarRing R] [MetricSpace R]
variable [IsTopologicalRing R] [ContinuousStar R] [ContinuousSqrt R] [StarOrderedRing R]
variable [TopologicalSpace A] [Ring A] [StarRing A] [PartialOrder A] [StarOrderedRing A]
variable [Algebra R A] [instCFC : ContinuousFunctionalCalculus R A p]
variable [NonnegSpectrumClass R A]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Unital/Variant9b8b022abb0b94d1eab1a7706e3fb541e07ec6843df8aeb122236e454219ba90.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Unital/Variant9b8b022abb0b94d1eab1a7706e3fb541e07ec6843df8aeb122236e454219ba90.lean#L975).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c2c8424fa2e7b1917643fc95b1d3faf4aa1af414` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
