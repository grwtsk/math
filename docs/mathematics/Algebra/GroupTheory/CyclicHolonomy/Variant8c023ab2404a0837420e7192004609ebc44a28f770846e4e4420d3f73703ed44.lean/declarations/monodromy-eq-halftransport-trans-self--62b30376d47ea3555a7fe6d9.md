# monodromy_eq_halfTransport_trans_self

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d6a01171-41d7-415b-ff99-a743bed5a974",
  "kind": "theorem",
  "lexical_name": "monodromy_eq_halfTransport_trans_self",
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
  "slug": "monodromy-eq-halftransport-trans-self--62b30376d47ea3555a7fe6d9",
  "source": {
    "blob": "68a18bf167ec625c0ba80015abe96b4d64f04b94",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 394,
    "line": 380,
    "path": "GRWTSK/Algebra/GroupTheory/CyclicHolonomy/Variant8c023ab2404a0837420e7192004609ebc44a28f770846e4e4420d3f73703ed44.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:62b30376d47ea3555a7fe6d95d588256795867d03ac8f8aa899e496f799c07d9",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/CyclicHolonomy/Variant8c023ab2404a0837420e7192004609ebc44a28f770846e4e4420d3f73703ed44.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d6a01171-41d7-415b-ff99-a743bed5a974`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 380–394.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem monodromy_eq_halfTransport_trans_self (system : StepSystem h)
    (p : CoverPhase h) :
    monodromy system p =
      (halfTransport system p).trans (halfTransport system p) := by
  unfold monodromy halfTransport cycleLength
  have hdouble : 2 * (h : ℕ) = (h : ℕ) + (h : ℕ) := by omega
  rw [hdouble, forwardProduct_add, advance_half,
    system.forwardProduct_half_compatible]

/-! ## Exact decomposition into complete laps and a residual arc -/

/--
The Euclidean-division data for an arbitrary natural step count.  The
residual arc is strictly shorter than one complete circuit.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/CyclicHolonomy/Variant8c023ab2404a0837420e7192004609ebc44a28f770846e4e4420d3f73703ed44.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/CyclicHolonomy/Variant8c023ab2404a0837420e7192004609ebc44a28f770846e4e4420d3f73703ed44.lean#L380).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `68a18bf167ec625c0ba80015abe96b4d64f04b94` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
