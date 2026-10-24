# geometricCompensationFactor_eq_sum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:505a84fc-2c83-9f91-e141-66c18bc65a2a",
  "kind": "theorem",
  "lexical_name": "geometricCompensationFactor_eq_sum",
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
  "slug": "geometriccompensationfactor-eq-sum--4cff5feca46c276d1a8a0195",
  "source": {
    "blob": "5b3f02e6f6823be505831e56b1ed3d92a48f27c3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 62,
    "line": 48,
    "path": "GRWTSK/Algebra/GeometricPathBound/Variant34a6373c7aa268d595cd35073888a62955de6603c4531266b952faaa53cd9820.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4cff5feca46c276d1a8a01951b80c5932d4b59f6b3e270944d0161cccbef32b6",
  "verification": {
    "reference": "docs/verification/Algebra/GeometricPathBound/Variant34a6373c7aa268d595cd35073888a62955de6603c4531266b952faaa53cd9820.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:505a84fc-2c83-9f91-e141-66c18bc65a2a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 48–62.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem geometricCompensationFactor_eq_sum
    (contraction : ℝ)
    (length : Nat) :
    geometricCompensationFactor
        contraction length =
      ∑ index ∈ Finset.range length,
        (contraction ^ 2) ^ index := by
  induction length with
  | zero =>
      rfl
  | succ length induction =>
      rw [geometricCompensationFactor,
        induction, geom_sum_succ]
      ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/GeometricPathBound/Variant34a6373c7aa268d595cd35073888a62955de6603c4531266b952faaa53cd9820.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GeometricPathBound/Variant34a6373c7aa268d595cd35073888a62955de6603c4531266b952faaa53cd9820.lean#L48).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5b3f02e6f6823be505831e56b1ed3d92a48f27c3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
